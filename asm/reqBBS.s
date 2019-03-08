	.include "asm/reqBBS.inc"

	thumb_func_start reqBBS_813E07C
reqBBS_813E07C:
	push {r4-r7,lr}
	push {r0}
	// memBlock
	ldr r0, off_813E0A0 // =reqBBS_eStruct2001150 
	// size
	mov r1, #0x2c 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	pop {r0}
	ldr r5, off_813E0A0 // =reqBBS_eStruct2001150 
	strb r0, [r5,#0x4] // (byte_2001154 - 0x2001150)
	ldr r2, off_813E09C // =off_813DF74 
	mov r1, #0x24 
	mul r0, r1
	add r0, r0, r2
	str r0, [r5,#0x28] // (dword_2001178 - 0x2001150)
	pop {r4-r7,pc}
	.balign 4, 0x00
off_813E09C: .word off_813DF74
off_813E0A0: .word reqBBS_eStruct2001150
	thumb_func_end reqBBS_813E07C

	thumb_func_start reqBBS_cb_draw_813E0A4
reqBBS_cb_draw_813E0A4:
	push {r4-r7,lr}
	mov r1, r8
	mov r2, r9
	mov r3, r12
	push {r1-r3}
	ldr r5, off_813E0C4 // =reqBBS_eStruct2001150 
	ldr r0, off_813E0C8 // =reqBBS_jtDraw_813E0CC 
	ldrb r1, [r5]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r1-r3}
	mov r8, r1
	mov r9, r2
	mov r12, r3
	pop {r4-r7,pc}
off_813E0C4: .word reqBBS_eStruct2001150
off_813E0C8: .word reqBBS_jtDraw_813E0CC
reqBBS_jtDraw_813E0CC: .word reqBBS_static_draw_813E0F8+1
	.word reqBBS_draw_813E188+1
	.word reqBBS_draw_813E1C8+1
	.word reqBBS_draw_813E224+1
	.word reqBBS_draw_813E2AC+1
	.word reqBBS_draw_813E33C+1
	.word reqBBS_draw_813E398+1
	.word reqBBS_draw_813E450+1
	.word reqBBS_draw_813E4AC+1
	.word reqBBS_draw_813E4F4+1
	.word reqBBS_draw_813E3F4+1
	thumb_func_end reqBBS_cb_draw_813E0A4

// () -> int
	thumb_local_start
reqBBS_static_draw_813E0F8:
	push {lr}
	mov r0, #0
	strb r0, [r5,#0x8] // reqBBS_GUI.animationTimer0
	strh r0, [r5,#0x20] // reqBBS_GUI.cursorPos
	strh r0, [r5,#0x24] // reqBBS_GUI.pagePos
	strh r0, [r5,#0x26] // reqBBS_GUI.RO_pagePos
	strb r0, [r5,#0x9] // reqBBS_GUI.animationTimer1
	strb r0, [r5,#0xb] // reqBBS_GUI.unk_0B
	bl reqBB_vram_813E6D0
	bl reqBBS_813E834
	bl reqBBS_813E890
	bl reqBBS_uncomp_813E5A0 // () -> void
	ldrh r0, [r5,#0x24] // reqBBS_GUI.pagePos
	bl reqBBS_813E8CC
	bl reqBBS_813EEF4
	mov r7, r10
	bl renderInfo_8001788
	bl renderInfo_80017A0
	mov r0, #0x17
	bl sub_80015FC
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	// a1
	ldr r0, off_813E178 // =byte_813DBDC
	bl sub_80465A0 // (void *a1) -> void
	ldrh r0, [r5,#0x1e] // reqBBS_GUI.totalNewRequests
	cmp r0, #0
	beq loc_813E14C
	ldrb r0, [r5,#5]
	tst r0, r0
	beq loc_813E15E
loc_813E14C:
	mov r0, #0x28 
	strb r0, [r5]
	mov r0, #5
	strb r0, [r5,#8]
	mov r7, r10
	ldr r0, [r7,#oToolkit_RenderInfoPtr]
	ldr r1, dword_813E17C // =0x5f40 
	strh r1, [r0]
	b loc_813E174
loc_813E15E:
	mov r0, #4
	strb r0, [r5]
	mov r0, #5
	strb r0, [r5,#8]
	bl reqBBS_drawHeaderText
	mov r7, r10
	ldr r0, [r7,#oToolkit_RenderInfoPtr]
	ldr r1, byte_813E180 // =0x40 
	strh r1, [r0]
	b loc_813E174
loc_813E174:
	mov r0, #0
	pop {pc}
off_813E178: .word byte_813DBDC
dword_813E17C: .word 0x5F40
byte_813E180: .byte 0x40, 0x5E, 0x0, 0x0, 0xA0, 0x17, 0x0, 0x0
	thumb_func_end reqBBS_static_draw_813E0F8

// () -> int
	thumb_local_start
reqBBS_draw_813E188:
	push {lr}
	ldr r0, dword_813E1C4 // =0x1f40 
	bl sRender_08_setRenderingState
	mov r7, r10
	ldr r7, [r7,#oToolkit_Unk2009740_Ptr]
	ldrb r0, [r7,#6]
	cmp r0, #0
	ble loc_813E1A2
	sub r0, #8
	strb r0, [r7,#6]
	lsr r0, r0, #4
	strb r0, [r7,#4]
loc_813E1A2:
	ldrh r0, [r5,#0x20] // reqBBS_GUI.cursorPos
	strh r0, [r5,#0x22] // reqBBS_GUI.RO_cursorPos
	ldrh r0, [r5,#0x24] // reqBBS_GUI.pagePos
	strh r0, [r5,#0x26] // reqBBS_GUI.RO_pagePos
	bl IsPaletteFadeActive // () -> zf
	beq loc_813E1B6
	mov r0, #0
	bl reqBBS_static_813EC10
loc_813E1B6:
	bl reqBBS_813E534
	bl reqBBS_813EDE4
	mov r0, #0
	pop {pc}
	.balign 4, 0x00
dword_813E1C4: .word 0x1F40
	thumb_func_end reqBBS_draw_813E188

	thumb_local_start
reqBBS_draw_813E1C8:
	push {lr}
	mov r7, r10
	ldr r0, [r7,#oToolkit_RenderInfoPtr]
	ldr r1, dword_813E220 // =0x1f40 
	strh r1, [r0]
	bl reqBBS_813E534
	bl IsPaletteFadeActive // () -> zf
	beq loc_813E21C
	ldrb r0, [r5,#0x5] // reqBBS_GUI.numNewRequests
	ldr r1, [r5,#0x28] // reqBBS_GUI.reqBBS_textualPointers
	ldr r1, [r1,#0x14] // reqBBS_GUI.pad_10+4
	str r0, [r1]
	bl sub_809E122
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk200f3a0_Ptr]
	mov r1, #0
	strb r1, [r0,#9]
	strb r1, [r0,#0xa]
	mov r1, #0xff
	strb r1, [r0,#1]
	strb r1, [r0,#5]
	strb r1, [r0,#3]
	strb r1, [r0,#7]
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0,#4]
	strb r1, [r0,#2]
	strb r1, [r0,#6]
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk2009740_Ptr]
	mov r1, #0
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0,#4]
	strb r1, [r0,#6]
	bl sub_8005F84
	mov r0, #1
	pop {pc}
loc_813E21C:
	mov r0, #0
	pop {pc}
dword_813E220: .word 0x1F40
	thumb_func_end reqBBS_draw_813E1C8

	thumb_local_start
reqBBS_draw_813E224:
	push {lr}
	mov r7, r10
	ldr r0, [r7,#oToolkit_RenderInfoPtr]
	ldr r1, dword_813E4A8 // =0x5f40 
	strh r1, [r0]
	mov r7, r10
	ldr r7, [r7,#oToolkit_Unk2009740_Ptr]
	ldrb r0, [r7,#6]
	add r0, #8
	strb r0, [r7,#6]
	lsr r0, r0, #4
	strb r0, [r7,#4]
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	ldrb r1, [r0,#7]
	sub r1, #8
	strb r1, [r0,#7]
	ldrb r1, [r0,#6]
	add r1, #8
	strb r1, [r0,#6]
	ldrb r0, [r5,#0x8] // reqBBS_GUI.animationTimer0
	sub r0, #1
	strb r0, [r5,#8]
	bgt loc_813E282
	mov r0, r10
	ldr r0, [r0,#oToolkit_ChatboxPtr]
	mov r1, #4
	str r1, [r0,#0x4c]
	ldrh r1, [r5,#0x24] // reqBBS_GUI.pagePos
	ldrh r2, [r5,#0x20] // reqBBS_GUI.cursorPos
	add r2, r2, r1
	ldr r7, [r5,#0x28] // reqBBS_GUI.reqBBS_textualPointers
	ldr r0, [r7,#4]
	ldr r1, off_813E2A8 // =reqBBS_eRequestEntriesIDs 
	ldrb r1, [r1,r2]
	ldrb r2, [r5,#0x4] // reqBBS_GUI.unk_04
	lsl r2, r2, #2
	ldr r3, off_813E290 // =off_813E294 
	ldr r2, [r3,r2]
	bl chatbox_reqBBS_80404C0
	bl reqBBS_draw_chatbox
	bl reqBBS_drawHeaderText
	mov r0, #0x10
	strb r0, [r5]
loc_813E282:
	bl reqBBS_813E534
	mov r0, #0
	pop {pc}
	.balign 4, 0x00
	.word 0x800
off_813E290: .word off_813E294
off_813E294: .word dword_87E76B8
	.word dword_87E771C
	.word dword_87E7780
	.word dword_87E77E4
	.word dword_87E7848
off_813E2A8: .word reqBBS_eRequestEntriesIDs
	thumb_func_end reqBBS_draw_813E224

	thumb_local_start
reqBBS_draw_813E2AC:
	push {lr}
	mov r7, r10
	ldr r7, [r7,#oToolkit_Unk2009740_Ptr]
	ldrb r0, [r7,#6]
	cmp r0, #0x40 
	bge loc_813E2C8
	add r0, #8
	strb r0, [r7,#6]
	lsr r0, r0, #4
	strb r0, [r7,#4]
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	mov r1, #0x1b
	strb r1, [r0,#9]
loc_813E2C8:
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq loc_813E320
	ldrh r0, [r5,#0x24] // reqBBS_GUI.pagePos
	ldrh r1, [r5,#0x20] // reqBBS_GUI.cursorPos
	add r1, r1, r0
	ldr r0, off_813E338 // =reqBBS_eRequestEntriesIDs 
	ldr r2, [r5,#0x28] // reqBBS_GUI.reqBBS_textualPointers
	ldr r2, [r2,#0xc]
	ldrb r0, [r0,r1]
	add r0, r0, r2
	mov r8, r0
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_813E2F6
	mov r0, r8
	bl ClearEventFlag // (u16 entryFlagBitfield) -> void
	ldrb r0, [r5,#5]
	add r0, #0
	strb r0, [r5,#5]
loc_813E2F6:
	bl chatbox_8040818
	bl reqBBS_813E834
	mov r0, #0x14
	strb r0, [r5]
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	mov r1, #0x1b
	strb r1, [r0,#9]
	mov r0, #6
	strb r0, [r5,#8]
	mov r7, r10
	ldr r7, [r7,#oToolkit_Unk2009740_Ptr]
	mov r0, #0xf7
	strb r0, [r7]
	mov r0, #4
	strb r0, [r7,#4]
	mov r0, #0x40 
	strb r0, [r7,#6]
	b loc_813E32C
loc_813E320:
	bl reqBBS_813E534
	bl reqBBS_813ED40
	mov r0, #0
	pop {pc}
loc_813E32C:
	bl reqBBS_813E534
	bl reqBBS_813E890
	mov r0, #0
	pop {pc}
off_813E338: .word reqBBS_eRequestEntriesIDs
	thumb_func_end reqBBS_draw_813E2AC

	thumb_local_start
reqBBS_draw_813E33C:
	push {lr}
	mov r7, r10
	ldr r7, [r7,#oToolkit_Unk2009740_Ptr]
	ldrb r0, [r7,#6]
	sub r0, #8
	strb r0, [r7,#6]
	lsr r0, r0, #4
	strb r0, [r7,#4]
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	mov r1, #0x1b
	strb r1, [r0,#9]
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	ldrb r1, [r0,#7]
	add r1, #8
	strb r1, [r0,#7]
	ldrb r1, [r0,#6]
	sub r1, #8
	strb r1, [r0,#6]
	ldrb r0, [r5,#0x8] // reqBBS_GUI.animationTimer0
	sub r0, #1
	strb r0, [r5,#0x8] // reqBBS_GUI.animationTimer0
	bgt loc_813E38E
	mov r0, #4
	strb r0, [r5]
	bl reqBBS_813E890
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	mov r1, #0x3f 
	strb r1, [r0,#9]
	mov r1, #0x3f 
	strb r1, [r0,#0xa]
	mov r1, #0xff
	strb r1, [r0,#3]
	mov r1, #0
	strb r1, [r0,#2]
	mov r1, #0xff
	strb r1, [r0,#7]
	mov r1, #0
	strb r1, [r0,#6]
loc_813E38E:
	bl reqBBS_813E534
	mov r0, #0
	pop {pc}
	.balign 4, 0x00
	thumb_func_end reqBBS_draw_813E33C

	thumb_local_start
reqBBS_draw_813E398:
	push {lr}
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	mov r1, #0x1a
	strb r1, [r0,#9]
	mov r1, #0x36 
	strb r1, [r0,#0xa]
	mov r1, #0
	strb r1, [r0,#3]
	mov r1, #0xff
	strb r1, [r0,#2]
	mov r1, #0x50 
	strb r1, [r0,#7]
	mov r1, #0x50 
	strb r1, [r0,#6]
	bl IsPaletteFadeActive // () -> zf
	beq loc_813E3EA
	mov r7, r10
	ldr r7, [r7,#oToolkit_Unk2009740_Ptr]
	mov r0, #0xf7
	strb r0, [r7]
	mov r0, #0
	strb r0, [r7,#4]
	strb r0, [r7,#6]
	mov r0, #0xc
	strb r0, [r5]
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	mov r1, #0x1a
	strb r1, [r0,#9]
	mov r1, #0x36 
	strb r1, [r0,#0xa]
	mov r1, #0
	strb r1, [r0,#3]
	mov r1, #0xff
	strb r1, [r0,#2]
	mov r1, #0x50 
	strb r1, [r0,#7]
	mov r1, #0x50 
	strb r1, [r0,#6]
loc_813E3EA:
	bl reqBBS_813E534
	mov r0, #0
	pop {pc}
	.balign 4, 0x00
	thumb_func_end reqBBS_draw_813E398

	thumb_local_start
reqBBS_draw_813E3F4:
	push {lr}
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	mov r1, #0x1a
	strb r1, [r0,#9]
	mov r1, #0x36 
	strb r1, [r0,#0xa]
	mov r1, #0
	strb r1, [r0,#3]
	mov r1, #0xff
	strb r1, [r0,#2]
	mov r1, #0x50 
	strb r1, [r0,#7]
	mov r1, #0x50 
	strb r1, [r0,#6]
	bl IsPaletteFadeActive // () -> zf
	beq loc_813E446
	mov r7, r10
	ldr r7, [r7,#oToolkit_Unk2009740_Ptr]
	mov r0, #0xf7
	strb r0, [r7]
	mov r0, #0
	strb r0, [r7,#4]
	strb r0, [r7,#6]
	mov r0, #0x1c
	strb r0, [r5]
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	mov r1, #0x1a
	strb r1, [r0,#9]
	mov r1, #0x36 
	strb r1, [r0,#0xa]
	mov r1, #0
	strb r1, [r0,#3]
	mov r1, #0xff
	strb r1, [r0,#2]
	mov r1, #0x50 
	strb r1, [r0,#7]
	mov r1, #0x50 
	strb r1, [r0,#6]
loc_813E446:
	bl reqBBS_813E534
	mov r0, #0
	pop {pc}
	.byte 0, 0
	thumb_func_end reqBBS_draw_813E3F4

	thumb_local_start
reqBBS_draw_813E450:
	push {lr}
	mov r7, r10
	ldr r0, [r7,#oToolkit_RenderInfoPtr]
	ldr r1, dword_813E4A8 // =0x5f40 
	strh r1, [r0]
	mov r7, r10
	ldr r7, [r7,#oToolkit_Unk2009740_Ptr]
	ldrb r0, [r7,#6]
	add r0, #8
	strb r0, [r7,#6]
	lsr r0, r0, #4
	strb r0, [r7,#4]
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	ldrb r1, [r0,#7]
	sub r1, #8
	strb r1, [r0,#7]
	ldrb r1, [r0,#6]
	add r1, #8
	strb r1, [r0,#6]
	ldrb r0, [r5,#8]
	sub r0, #1
	strb r0, [r5,#8]
	bgt loc_813E49A
	mov r0, #0
	ldrh r1, [r5,#0x1e]
	cmp r1, #0
	bne loc_813E48A
	mov r0, #1
loc_813E48A:
	mov r1, r0
	ldr r0, off_813E4A4 // =reqBBS_eTextScript
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	bl reqBBS_drawHeaderText
	mov r0, #0x20 
	strb r0, [r5]
loc_813E49A:
	bl reqBBS_813E534
	mov r0, #0
	pop {pc}
	.balign 4, 0x00
off_813E4A4: .word reqBBS_eTextScript
dword_813E4A8: .word 0x5F40
	thumb_func_end reqBBS_draw_813E450

	thumb_local_start
reqBBS_draw_813E4AC:
	push {lr}
	mov r7, r10
	ldr r7, [r7,#oToolkit_Unk2009740_Ptr]
	ldrb r0, [r7,#6]
	cmp r0, #0x40 
	bge loc_813E4C8
	add r0, #8
	strb r0, [r7,#6]
	lsr r0, r0, #4
	strb r0, [r7,#4]
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	mov r1, #0x1b
	strb r1, [r0,#9]
loc_813E4C8:
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq loc_813E4EC
	bl chatbox_8040818
	mov r0, #0x24 
	strb r0, [r5]
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	mov r1, #0x1f
	strb r1, [r0,#9]
	mov r0, #5
	strb r0, [r5,#8]
	mov r0, #0x10
	mov r1, #8
	bl engine_setScreeneffect // (int a1, int a2) -> void
loc_813E4EC:
	bl reqBBS_813E534
	mov r0, #0
	pop {pc}
	thumb_func_end reqBBS_draw_813E4AC

	thumb_local_start
reqBBS_draw_813E4F4:
	push {lr}
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	ldrb r1, [r0,#7]
	add r1, #8
	strb r1, [r0,#7]
	ldrb r1, [r0,#6]
	sub r1, #8
	strb r1, [r0,#6]
	ldrb r0, [r5,#8]
	sub r0, #1
	strb r0, [r5,#8]
	bgt loc_813E52A
	ldrh r0, [r5,#0x1e]
	cmp r0, #0
	bne loc_813E522
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #8
	strb r0, [r5]
	b loc_813E52A
loc_813E522:
	mov r0, #4
	strb r0, [r5]
	bl reqBBS_813E890
loc_813E52A:
	bl reqBBS_813E534
	mov r0, #0
	pop {pc}
	.balign 4, 0x00
	thumb_func_end reqBBS_draw_813E4F4

	thumb_local_start
reqBBS_813E534:
	push {r5,lr}
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	ldrh r0, [r5,#0x24]
	bl reqBBS_813E8CC
	bl reqBBS_drawRequestBBS
	ldrh r0, [r5,#0x1e]
	tst r0, r0
	beq loc_813E57A
	ldrb r0, [r5]
	cmp r0, #0x18
	beq loc_813E57A
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk200f3a0_Ptr]
	ldrb r0, [r0,#7]
	cmp r0, #0x50 
	beq loc_813E566
	cmp r0, #0xff
	beq loc_813E566
	tst r0, r0
	bne loc_813E57A
loc_813E566:
	mov r0, #4
	ldrh r1, [r5,#0x20]
	lsl r1, r1, #4
	add r1, #0x18
	ldrb r2, [r5,#9]
	mov r3, #0
	ldrb r0, [r5]
	cmp r0, #0x10
	beq loc_813E57A
	strb r2, [r5,#9]
loc_813E57A:
	bl reqBBS_static_813EA94
	mov r0, #0xe4
	mov r1, #0x10
	lsl r0, r0, #0x10
	orr r0, r1
	ldr r1, dword_813E598 // =0x20002 
	ldrh r2, [r5,#0x1e]
	ldrh r3, [r5,#0x24]
	mov r4, #8
	ldr r6, dword_813E59C // =0xc000 
	mov r7, #0x7c 
	bl sub_811FA98
	pop {r5,pc}
dword_813E598: .word 0x20002
dword_813E59C: .word 0xC000
	thumb_func_end reqBBS_813E534

// () -> void
	thumb_local_start
reqBBS_uncomp_813E5A0:
	push {r5,lr}
	ldrb r0, [r5,#4]
	lsl r0, r0, #3
	ldr r3, off_813E5C8 // =off_813E04C
	add r3, r3, r0
	push {r3}
	// src
	ldr r0, [r3]
	// dest
	ldr r1, off_813E5CC // =unk_2025A00 
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	pop {r3}
	// src
	ldr r0, [r3,#4]
	// dest
	ldr r1, off_813E5D0 // =unk_2029A00 
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	// src
	ldr r0, off_813E5D4 // =dword_87EE1AC 
	// dest
	ldr r1, off_813E5D8 // =unk_2033A00 
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	pop {r5,pc}
off_813E5C8: .word off_813E04C
off_813E5CC: .word unk_2025A00
off_813E5D0: .word unk_2029A00
off_813E5D4: .word dword_87EE1AC
off_813E5D8: .word unk_2033A00
	thumb_func_end reqBBS_uncomp_813E5A0

	thumb_func_start reqBBS_813E5DC
reqBBS_813E5DC:
	push {r3,r7,lr}
	mov r7, r0
	mov r1, #2
	mov r0, r0
	bl SetEventFlag
	mov r0, r7
	ldr r3, off_813E6A4 // =0x17a0 
	sub r0, r0, r3
	ldr r3, off_813E6A8 // =0x19a0 
	add r0, r0, r3
	mov r0, r0
	bl SetEventFlag
	ldr r1, off_813E6A4 // =0x17a0 
	sub r7, r7, r1
	lsr r3, r7, #6
	lsl r3, r3, #6
	ldr r2, off_813E6AC // =byte_2001400 
	add r2, r2, r3
	lsr r3, r3, #4
	ldr r1, off_813E6B0 // =unk_2000FC0 
	ldr r0, [r1,r3]
	lsl r7, r7, #0x1a
	lsr r7, r7, #0x1a
	strb r7, [r2,r0]
	add r0, #1
	str r0, [r1,r3]
	pop {r3,r7,pc}
	thumb_func_end reqBBS_813E5DC

	thumb_func_start reqBBS_813E616
reqBBS_813E616:
	push {lr}
	// mem
	ldr r0, off_813E6B4 // =byte_2001400 
	// byteCount
	ldr r1, byteCount // =0x200 
	// byte
	mov r2, #0x40 
	bl ByteFill // (u8 *mem, int byteCount, u8 byte) -> void
	// memBlock
	ldr r0, off_813E6BC // =unk_2000FC0 
	// size
	mov r1, #0x20 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	// memBlock
	ldr r0, off_813E6C0 // =unk_2000FF0 
	// size
	mov r1, #0x20 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	pop {pc}
	thumb_func_end reqBBS_813E616

	thumb_local_start
reqBBS_dead_813E634:
	push {r4,lr}
	mov r4, r0
	lsl r0, r0, #6
	ldr r1, off_813E6C4 // =byte_2001400 
	// mem
	add r0, r0, r1
	// byteCount
	mov r1, #0x40 
	// byte
	mov r2, #0x40 
	bl ByteFill // (u8 *mem, int byteCount, u8 byte) -> void
	lsl r0, r4, #2
	ldr r1, off_813E6C8 // =unk_2000FC0 
	// memBlock
	add r0, r0, r1
	// size
	mov r1, #4
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	lsl r0, r4, #2
	ldr r1, off_813E6CC // =unk_2000FF0 
	// memBlock
	add r0, r0, r1
	// size
	mov r1, #4
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	pop {r4,pc}
	thumb_func_end reqBBS_dead_813E634

	thumb_func_start reqBBS_813E660
reqBBS_813E660:
	push {r4,r5,lr}
	ldr r3, off_813E688 // =byte_813E68C 
	mov r1, #0
loc_813E666:
	mov r2, #0
	lsl r1, r1, #2
loc_813E66A:
	ldr r0, [r3,r1]
	add r0, r0, r2
	push {r0-r3}
	bl reqBBS_813E5DC
	pop {r0-r3}
	add r2, #1
	cmp r2, #0x1f
	bne loc_813E66A
	lsr r1, r1, #2
	add r1, #1
	cmp r1, #6
	bne loc_813E666
	pop {r4,r5,pc}
	.balign 4, 0x00
off_813E688: .word byte_813E68C
byte_813E68C: .byte 0xA0, 0x17, 0x0, 0x0, 0xE0, 0x17, 0x0, 0x0, 0x20, 0x18, 0x0
	.byte 0x0, 0x60, 0x18, 0x0, 0x0, 0xA0, 0x18, 0x0, 0x0, 0xE0, 0x18
	.byte 0x0, 0x0
off_813E6A4: .word 0x17A0
off_813E6A8: .word 0x19A0
off_813E6AC: .word byte_2001400
off_813E6B0: .word unk_2000FC0
off_813E6B4: .word byte_2001400
byteCount: .word 0x200
off_813E6BC: .word unk_2000FC0
off_813E6C0: .word unk_2000FF0
off_813E6C4: .word byte_2001400
off_813E6C8: .word unk_2000FC0
off_813E6CC: .word unk_2000FF0
	thumb_func_end reqBBS_813E660

	thumb_local_start
reqBB_vram_813E6D0:
	push {r5,lr}
	bl zeroFillVRAM
	bl ZeroFill_byte_3001960
	// initRefs
	ldr r0, off_813E6F8 // =byte_813E6FC 
	bl decompAndCopyData // (u32 *initRefs) -> void
	ldrb r0, [r5,#4]
	ldr r1, off_813E754 // =off_813E758 
	lsl r0, r0, #2
	// initRefs
	ldr r0, [r1,r0]
	bl decompAndCopyData // (u32 *initRefs) -> void
	bl ZeroFillGFX30025c0
	bl sub_8046664 // () -> void
	pop {r5,pc}
	.balign 4, 0x00
off_813E6F8: .word byte_813E6FC
byte_813E6FC: .byte 0x68, 0x73, 0x7E, 0x88, 0x0, 0x2, 0x0, 0x6, 0x0, 0x7A, 0x1, 0x2
	.byte 0xA0, 0x72, 0x7E, 0x88, 0x0, 0x0, 0x0, 0x0
	.word unk_2018200
	.byte 0x3C, 0x72, 0x7E, 0x88, 0x0, 0x0, 0x0, 0x0
	.word unk_2018A00
	.word dword_87EF5A4
	.word 0x6001000
	.word 0x280
	.word 0x886C9D38
	.word 0x6010000
	.word unk_2019200
	.word byte_86C9D6C
	.word byte_30016D0
	.word 0x20
	.word 0x886C9BD4
	.word 0x0
	.word unk_201AA00
	.word 0x0
off_813E754: .word off_813E758
off_813E758: .word off_813E76C
	.word off_813E794
	.word off_813E7BC
	.word off_813E7E4
	.word off_813E80C
off_813E76C: .word dword_87E74F4
	.word unk_30019C0
	.word 0x20
	.word dword_87E76B8
	.word unk_30019E0
	.word 0x60
	.word byte_87EF824
	.word byte_3001960
	.word 0x60
	.word 0x0
off_813E794: .word dword_87E7514
	.word unk_30019C0
	.word 0x20
	.word dword_87E771C
	.byte 0xE0, 0x19, 0x0, 0x3, 0x60, 0x0, 0x0, 0x0
	.word byte_87EF824
	.byte 0x60, 0x19, 0x0, 0x3, 0x60, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
off_813E7BC: .word dword_87E7534
	.word unk_30019C0
	.word 0x20
	.word dword_87E7780
	.byte 0xE0, 0x19, 0x0, 0x3, 0x60, 0x0, 0x0, 0x0
	.word byte_87EF824
	.byte 0x60, 0x19, 0x0, 0x3, 0x60, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
off_813E7E4: .word dword_87E7554
	.word unk_30019C0
	.word 0x20
	.word dword_87E77E4
	.byte 0xE0, 0x19, 0x0, 0x3, 0x60, 0x0, 0x0, 0x0
	.word byte_87EF824
	.byte 0x60, 0x19, 0x0, 0x3, 0x60, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
off_813E80C: .word dword_87E7574
	.word unk_30019C0
	.word 0x20
	.word dword_87E7848
	.byte 0xE0, 0x19, 0x0, 0x3, 0x60, 0x0, 0x0, 0x0
	.word byte_87EF824
	.byte 0x60, 0x19, 0x0, 0x3, 0x60, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end reqBB_vram_813E6D0

	thumb_local_start
reqBBS_813E834:
	push {r4-r7,lr}
	// mem
	ldr r0, off_813E88C // =reqBBS_eRequestEntriesIDs 
	// byteCount
	mov r1, #0x30 
	// byte
	mov r2, #0x2f 
	bl ByteFill // (u8 *mem, int byteCount, u8 byte) -> void
	ldr r6, [r5,#0x28] // reqBBS_GUI.reqBBS_textualPointers
	ldr r0, [r6,#0x10]
	ldr r0, [r0]
	strh r0, [r5,#0x1e] // reqBBS_GUI.totalNewRequests
	ldr r6, [r6,#0x18]
	ldr r7, off_813E88C // =reqBBS_eRequestEntriesIDs 
loc_813E84C:
	sub r0, #1
	blt loc_813E862
	ldrb r3, [r6,r0]
	strb r3, [r7]
	ldrb r2, [r5]
	tst r2, r2
	bne loc_813E85E
	bl reqBBS_813ED60
loc_813E85E:
	add r7, #1
	b loc_813E84C
loc_813E862:
	mov r0, #0
	ldr r1, [r5,#0x28] // reqBBS_GUI.reqBBS_textualPointers
	ldr r1, [r1,#0xc]
	mov r7, #0
	ldrh r6, [r5,#0x1e]
	tst r6, r6
	beq loc_813E886
loc_813E870:
	push {r0,r1}
	add r0, r0, r1
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	pop {r0,r1}
	beq loc_813E880
	add r7, #1
loc_813E880:
	add r0, #1
	cmp r0, #0x30 
	blt loc_813E870
loc_813E886:
	strb r7, [r5,#5]
	pop {r4-r7,pc}
	.balign 4, 0x00
off_813E88C: .word reqBBS_eRequestEntriesIDs
	thumb_func_end reqBBS_813E834

	thumb_local_start
reqBBS_813E890:
	push {r4-r7,lr}
	mov r7, r5
	// j
	mov r0, #5
	// i
	mov r1, #3
	// cpyOff
	mov r2, #2
	// tileRefs
	ldr r3, off_813E8C8 // =tileRefs_813DBE4 
	mov r4, #0x17
	mov r5, #0x10
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	ldr r3, [r7,#0x28]
	// tileRefs
	ldr r3, [r3,#0x1c]
	// j
	mov r0, #0
	// i
	mov r1, #0
	// cpyOff
	mov r2, #1
	mov r4, #0x1e
	mov r5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	mov r0, #0
	mov r1, #0
	mov r2, #3
	mov r3, #0
	mov r4, #0x1e
	mov r5, #0x14
	bl sub_80018D0
	pop {r4-r7,pc}
off_813E8C8: .word tileRefs_813DBE4
	thumb_func_end reqBBS_813E890

	thumb_local_start
reqBBS_813E8CC:
	push {r4-r7,lr}
	ldr r1, off_813E90C // =reqBBS_eRequestEntriesIDs 
	ldr r7, [r5,#0x28]
	ldr r7, [r7]
	add r5, r0, r1
	mov r0, r7
	mov r1, #0
	ldr r2, off_813E900 // =eDecompBuffer2013A00
	ldr r3, dword_813E904 // =0x6004000 
	ldr r6, off_813E908 // =dword_86A5D60 
loc_813E8E0:
	push {r0-r3,r5,r6}
	ldrb r1, [r5,r1]
	mov r4, #0x17
	mov r5, #1
	mov r7, #0
	bl renderTextGfx_8045F8C
	pop {r0-r3,r5,r6}
	mov r4, #0x80
	lsl r4, r4, #4
	add r2, r2, r4
	add r3, r3, r4
	add r1, #1
	cmp r1, #8
	blt loc_813E8E0
	pop {r4-r7,pc}
off_813E900: .word eDecompBuffer2013A00
dword_813E904: .word 0x6004000
off_813E908: .word dword_86A5D60
off_813E90C: .word reqBBS_eRequestEntriesIDs
	thumb_func_end reqBBS_813E8CC

	thumb_local_start
reqBBS_dead_813E910:
	push {r4-r7,lr}
	ldr r0, off_813E97C // =eTileRefs2018A04 
	mov r1, #0x40 
	bl ZeroFillByHalfword
	mov r6, r10
	ldr r6, [r6,#oToolkit_CurFramePtr]
	ldrh r6, [r6]
	mov r7, #0x1f
	and r6, r7
	lsl r6, r6, #1
	add r3, r3, r6
	ldrh r0, [r5,#0x24]
	ldr r4, off_813EA90 // =reqBBS_eRequestEntriesIDs 
	add r4, r4, r0
	ldr r7, [r5,#0x28]
	ldr r7, [r7,#0xc]
	mov r6, #0
loc_813E934:
	ldrb r2, [r4,r6]
	add r0, r2, r7
	push {r3}
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	pop {r3}
	beq loc_813E968
	push {r4-r7}
	mov r1, r10
	ldr r3, [r1,#oToolkit_CurFramePtr]
	ldrh r3, [r3]
	mov r7, #0x1f
	and r3, r7
	lsl r3, r3, #2
	ldr r0, off_813E988 // =byte_813E990 
	ldr r0, [r0,r3]
	mov r2, #8
	mul r2, r6
	ldr r1, off_813E97C // =eTileRefs2018A04 
	str r0, [r1,r2]
	add r2, #4
	ldr r0, off_813E98C // =byte_813EA10 
	ldr r0, [r0,r3]
	str r0, [r1,r2]
	pop {r4-r7}
loc_813E968:
	add r6, #1
	cmp r6, #8
	blt loc_813E934
	mov r0, #2
	mov r1, #3
	mov r2, #2
	ldr r3, off_813E97C // =eTileRefs2018A04 
	mov r4, #2
	mov r5, #0x10
	pop {r4-r7,pc}
off_813E97C: .word eTileRefs2018A04
	.byte 0x30, 0x52, 0x31, 0x52, 0x32, 0x52, 0x33, 0x52
off_813E988: .word byte_813E990
off_813E98C: .word byte_813EA10
byte_813E990: .byte 0x30, 0x52, 0x31, 0x52, 0x30, 0x52, 0x31, 0x52, 0x30
	.byte 0x52, 0x31, 0x52, 0x30, 0x52, 0x31, 0x52, 0x30, 0x52
	.byte 0x31, 0x52, 0x30, 0x52, 0x31, 0x52, 0x30, 0x52, 0x31
	.byte 0x52, 0x30, 0x52, 0x31, 0x52, 0x30, 0x52, 0x31, 0x52
	.byte 0x30, 0x52, 0x31, 0x52, 0x30, 0x52, 0x31, 0x52, 0x30
	.byte 0x52, 0x31, 0x52, 0x30, 0x52, 0x31, 0x52, 0x30, 0x52
	.byte 0x31, 0x52, 0x30, 0x52, 0x31, 0x52, 0x30, 0x52, 0x31
	.byte 0x52, 0x34, 0x52, 0x35, 0x52, 0x34, 0x52, 0x35, 0x52
	.byte 0x34, 0x52, 0x35, 0x52, 0x34, 0x52, 0x35, 0x52, 0x34
	.byte 0x52, 0x35, 0x52, 0x34, 0x52, 0x35, 0x52, 0x34, 0x52
	.byte 0x35, 0x52, 0x34, 0x52, 0x35, 0x52, 0x34, 0x52, 0x35
	.byte 0x52, 0x34, 0x52, 0x35, 0x52, 0x34, 0x52, 0x35, 0x52
	.byte 0x34, 0x52, 0x35, 0x52, 0x34, 0x52, 0x35, 0x52, 0x34
	.byte 0x52, 0x35, 0x52, 0x34, 0x52, 0x35, 0x52, 0x34, 0x52
	.byte 0x35, 0x52
byte_813EA10: .byte 0x32, 0x52, 0x33, 0x52, 0x32, 0x52, 0x33, 0x52, 0x32
	.byte 0x52, 0x33, 0x52, 0x32, 0x52, 0x33, 0x52, 0x32, 0x52
	.byte 0x33, 0x52, 0x32, 0x52, 0x33, 0x52, 0x32, 0x52, 0x33
	.byte 0x52, 0x32, 0x52, 0x33, 0x52, 0x32, 0x52, 0x33, 0x52
	.byte 0x32, 0x52, 0x33, 0x52, 0x32, 0x52, 0x33, 0x52, 0x32
	.byte 0x52, 0x33, 0x52, 0x32, 0x52, 0x33, 0x52, 0x32, 0x52
	.byte 0x33, 0x52, 0x32, 0x52, 0x33, 0x52, 0x32, 0x52, 0x33
	.byte 0x52, 0x36, 0x52, 0x37, 0x52, 0x36, 0x52, 0x37, 0x52
	.byte 0x36, 0x52, 0x37, 0x52, 0x36, 0x52, 0x37, 0x52, 0x36
	.byte 0x52, 0x37, 0x52, 0x36, 0x52, 0x37, 0x52, 0x36, 0x52
	.byte 0x37, 0x52, 0x36, 0x52, 0x37, 0x52, 0x36, 0x52, 0x37
	.byte 0x52, 0x36, 0x52, 0x37, 0x52, 0x36, 0x52, 0x37, 0x52
	.byte 0x36, 0x52, 0x37, 0x52, 0x36, 0x52, 0x37, 0x52, 0x36
	.byte 0x52, 0x37, 0x52, 0x36, 0x52, 0x37, 0x52, 0x36, 0x52
	.byte 0x37, 0x52
off_813EA90: .word reqBBS_eRequestEntriesIDs
	thumb_func_end reqBBS_dead_813E910

	thumb_local_start
reqBBS_static_813EA94:
	push {r0-r7,lr}
	ldrh r7, [r5,#0x24] // reqBBS_GUI.pagePos
	mov r6, r10
	ldr r6, [r6,#oToolkit_CurFramePtr]
	ldrh r6, [r6]
	mov r4, #0x1f
	and r4, r6
	lsl r4, r4, #2
	mov r6, #0
loc_813EAA6:
	ldr r3, [r5,#0x28] // reqBBS_GUI.reqBBS_textualPointers
	ldr r3, [r3,#0xc]
	ldr r2, off_813EB08 // =reqBBS_eRequestEntriesIDs 
	add r1, r7, r6
	ldrb r2, [r2,r1]
	add r0, r2, r3
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_813EAD6
	push {r4-r7}
	// j
	mov r0, #2
	mov r1, #2
	mul r1, r6
	// i
	add r1, #3
	// cpyOff
	mov r2, #2
	ldr r3, off_813EB0C // =off_813EB10 
	// tileRefs
	ldr r3, [r3,r4]
	mov r4, #2
	mov r5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7}
	b loc_813EAEE
loc_813EAD6:
	push {r4-r7}
	mov r0, #2
	mov r1, #2
	mul r1, r6
	add r1, #3
	mov r2, #2
	mov r3, #0
	mov r4, #2
	mov r5, #2
	bl sub_80018D0
	pop {r4-r7}
loc_813EAEE:
	add r6, #1
	cmp r6, #8
	bne loc_813EAA6
	mov r0, #0x13
	mov r1, #0
	mov r2, #2
	ldr r3, off_813EB0C // =off_813EB10 
	ldr r3, [r3,r4]
	mov r4, #2
	mov r5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r0-r7,pc}
	thumb_func_end reqBBS_static_813EA94

off_813EB08: .word reqBBS_eRequestEntriesIDs
off_813EB0C: .word off_813EB10
off_813EB10: .word byte_813EB90
	.word byte_813EB90
	.word byte_813EB90
	.word byte_813EB90
	.word byte_813EB90
	.word byte_813EB90
	.word byte_813EB90
	.word byte_813EB90
	.word byte_813EB90
	.word byte_813EB90
	.word byte_813EB90
	.word byte_813EB90
	.word byte_813EB90
	.word byte_813EB90
	.word byte_813EB90
	.word byte_813EB90
	.word byte_813EBD0
	.word byte_813EBD0
	.word byte_813EBD0
	.word byte_813EBD0
	.word byte_813EBD0
	.word byte_813EBD0
	.word byte_813EBD0
	.word byte_813EBD0
	.word byte_813EBD0
	.word byte_813EBD0
	.word byte_813EBD0
	.word byte_813EBD0
	.word byte_813EBD0
	.word byte_813EBD0
	.word byte_813EBD0
	.word byte_813EBD0
byte_813EB90: .byte 0x80, 0x0, 0x81, 0x0, 0x82, 0x0, 0x83, 0x0, 0x81, 0x0, 0x83
	.byte 0x0, 0x82, 0x0, 0x84, 0x0, 0x81, 0x0, 0x83, 0x0, 0x82, 0x0
	.byte 0x84, 0x0, 0x81, 0x0, 0x83, 0x0, 0x82, 0x0, 0x84, 0x0, 0x81
	.byte 0x0, 0x83, 0x0, 0x82, 0x0, 0x84, 0x0, 0x81, 0x0, 0x83, 0x0
	.byte 0x82, 0x0, 0x84, 0x0, 0x81, 0x0, 0x83, 0x0, 0x82, 0x0, 0x84
	.byte 0x0, 0x81, 0x0, 0x83, 0x0, 0x82, 0x0, 0x84, 0x0
byte_813EBD0: .byte 0x84, 0x0, 0x85, 0x0, 0x86, 0x0, 0x87, 0x0, 0x84, 0x0, 0x85
	.byte 0x0, 0x86, 0x0, 0x87, 0x0, 0x84, 0x0, 0x85, 0x0, 0x86, 0x0
	.byte 0x87, 0x0, 0x84, 0x0, 0x85, 0x0, 0x86, 0x0, 0x87, 0x0, 0x84
	.byte 0x0, 0x85, 0x0, 0x86, 0x0, 0x87, 0x0, 0x84, 0x0, 0x85, 0x0
	.byte 0x86, 0x0, 0x87, 0x0, 0x84, 0x0, 0x85, 0x0, 0x86, 0x0, 0x87
	.byte 0x0, 0x84, 0x0, 0x85, 0x0, 0x86, 0x0, 0x87, 0x0
	thumb_local_start
reqBBS_static_813EC10:
	push {r4-r7,lr}
	mov r8, r0
	mov r7, r10
	ldr r7, [r7,#oToolkit_JoypadPtr]
	ldrh r0, [r7,#oJoypad_Pressed]
	mov r1, #2
	tst r1, r0
	beq loc_813EC26
	bl reqBBS_static_813EC54
	b locret_813EC4C
loc_813EC26:
	ldrh r1, [r5,#0x1e]
	cmp r1, #0
	beq locret_813EC4C
	mov r1, #1
	tst r1, r0
	beq loc_813EC38
	bl reqBBS_static_813EC6C
	b locret_813EC4C
loc_813EC38:
	ldrh r0, [r7,#4]
	ldr r1, off_813EC50 // =0x3c0 
	tst r0, r1
	beq locret_813EC4C
	mov r1, #8
	mov r2, #0
	mov r3, #0
	bl sub_811F7F8
	strb r7, [r5,#0xb]
locret_813EC4C:
	pop {r4-r7,pc}
	.byte 0, 0
off_813EC50: .word 0x3C0
	thumb_func_end reqBBS_static_813EC10

	thumb_local_start
reqBBS_static_813EC54:
	push {lr}
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #8
	strb r0, [r5]
	mov r0, #0x68 
	bl sound_play // () -> void
	pop {pc}
	.balign 4, 0x00
	thumb_func_end reqBBS_static_813EC54

	thumb_local_start
reqBBS_static_813EC6C:
	push {lr}
	mov r0, #0x18
	strb r0, [r5]
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	mov r1, #0x1b
	strb r1, [r0,#9]
	mov r1, #0x36 
	strb r1, [r0,#0xa]
	mov r1, #0
	strb r1, [r0,#3]
	mov r1, #0xff
	strb r1, [r0,#2]
	mov r1, #0x50 
	strb r1, [r0,#7]
	mov r1, #0x50 
	strb r1, [r0,#6]
	mov r0, #0x67 
	bl sound_play // () -> void
	mov r0, #6
	strb r0, [r5,#8]
	push {r5}
	mov r0, #0
	mov r1, #0
	mov r2, #3
	mov r3, #0
	mov r4, #0x1e
	mov r5, #0x14
	bl sub_80018D0
	pop {r5}
	bl reqBBS_drawHeaderText
	mov r7, r10
	ldr r7, [r7,#0x20]
	mov r0, #0xf7
	strb r0, [r7]
	mov r0, #0
	strb r0, [r7,#4]
	strb r0, [r7,#6]
	pop {pc}
	thumb_func_end reqBBS_static_813EC6C

	thumb_local_start
reqBBS_draw_chatbox:
	push {r4-r7,lr}
	// tileRefs
	ldr r3, off_813ECD4 // =eTileRefs2018A04 
	// j
	mov r0, #2
	// i
	mov r1, #5
	// cpyOff
	mov r2, #1
	mov r4, #0x1a
	mov r5, #0xa
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7,pc}
off_813ECD4: .word eTileRefs2018A04
	thumb_func_end reqBBS_draw_chatbox

	thumb_local_start
reqBBS_dead_813ECD8:
	push {r4-r7,lr}
	ldr r3, off_813ECF0 // =eTileRefs2018A04 
	mov r0, #3
	mov r1, #5
	mov r3, #0
	mov r2, #1
	mov r4, #0x18
	mov r5, #0xa
	bl sub_80018D0
	pop {r4-r7,pc}
	.byte 0, 0
off_813ECF0: .word eTileRefs2018A04
	thumb_func_end reqBBS_dead_813ECD8

	thumb_local_start
dead_813ECF4:
	push {r4-r7,lr}
	// j
	mov r0, #3
	// i
	mov r1, #5
	// cpyOff
	mov r2, #1
	// tileRefs
	ldr r3, off_813ED08 // =eTileRefs2018A04 
	mov r4, #0x18
	mov r5, #0xa
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7,pc}
off_813ED08: .word eTileRefs2018A04
	thumb_func_end dead_813ECF4

	thumb_local_start
reqBBS_drawHeaderText:
	push {r4-r7,lr}
	ldrh r0, [r5,#0x24] // reqBBS_GUI.pagePos
	ldrh r1, [r5,#0x20] // reqBBS_GUI.cursorPos
	add r0, r0, r1
	ldr r1, off_813ED30 // =reqBBS_eRequestEntriesIDs 
	ldrb r1, [r1,r0]
	ldr r0, [r5,#0x28] // reqBBS_GUI.reqBBS_textualPointers
	ldr r0, [r0]
	ldr r2, off_813ED34 // =byte_201B200
	ldr r3, dword_813ED38 // =0x6008400 
	mov r4, #0x17
	mov r5, #1
	ldr r6, off_813ED3C // =dword_86A5D60 
	mov r7, #0
	bl renderTextGfx_8045F8C
	pop {r4-r7,pc}
	.byte 0, 0
off_813ED30: .word reqBBS_eRequestEntriesIDs
off_813ED34: .word byte_201B200
dword_813ED38: .word 0x6008400
off_813ED3C: .word dword_86A5D60
	thumb_func_end reqBBS_drawHeaderText

	thumb_local_start
reqBBS_813ED40:
	push {r4-r7,lr}
	ldr r0, off_813ED58 // =byte_813DEC4
	mov r1, #6
	lsl r1, r1, #6
	mov r2, r10
	ldr r2, [r2,#oToolkit_GFX30025c0_Ptr]
	add r1, r1, r2
	mov r2, #0x80
	bl sub_8000AC8
	pop {r4-r7,pc}
	.balign 4, 0x00
off_813ED58: .word byte_813DEC4
	thumb_func_end reqBBS_813ED40

	thumb_local_start
reqBBS_813ED5C:
	push {r4-r7,lr}
	pop {r4-r7,pc}
	thumb_func_end reqBBS_813ED5C

	thumb_local_start
reqBBS_813ED60:
	push {r0,r4-r7,lr}
	ldrh r6, [r5,#0x1e]
	tst r6, r6
	beq locret_813ED90
	mov r0, #0
	ldr r1, off_813ED94 // =reqBBS_eRequestEntriesIDs 
	sub r7, r7, r1
	ldr r1, [r5,#0x28]
	ldr r1, [r1,#0xc]
	add r3, r3, r1
	mov r0, r3
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq locret_813ED90
	mov r0, r7
	mov r1, #7
	sub r2, r0, r1
	bge loc_813ED88
	mov r2, #0
	b loc_813ED8A
loc_813ED88:
	mov r0, r1
loc_813ED8A:
	strh r0, [r5,#0x20] // reqBBS_GUI.cursorPos
	strh r2, [r5,#0x24] // reqBBS_GUI.pagePos
	strh r2, [r5,#0x26] // reqBBS_GUI.RO_pagePos
locret_813ED90:
	pop {r0,r4-r7,pc}
	.balign 4, 0x00
off_813ED94: .word reqBBS_eRequestEntriesIDs
	thumb_func_end reqBBS_813ED60

	thumb_local_start
reqBBS_813ED98:
	push {r0-r7,lr}
	ldrh r7, [r5,#0x1e] // reqBBS_GUI.totalNewRequests
	ldrh r6, [r5,#0x20] // reqBBS_GUI.cursorPos
	ldrh r4, [r5,#0x24] // reqBBS_GUI.pagePos
	mov r3, r10
	ldr r3, [r3,#oToolkit_JoypadPtr]
	ldrh r0, [r3,#4]
	mov r1, #0x40 
	tst r1, r0
	bne loc_813EDB4
	mov r1, #0x80
	tst r1, r0
	bne loc_813EDC8
	b locret_813EDE2
loc_813EDB4:
	tst r6, r6
	beq loc_813EDBE
	sub r6, #1
	strh r6, [r5,#0x20]
	b locret_813EDE2
loc_813EDBE:
	tst r4, r4
	beq locret_813EDE2
	sub r4, #1
	strh r4, [r5,#0x24]
	b locret_813EDE2
loc_813EDC8:
	sub r7, #1
	cmp r6, r7
	beq loc_813EDD8
	cmp r6, #7
	beq loc_813EDD8
	add r6, #1
	strh r6, [r5,#0x20]
	b locret_813EDE2
loc_813EDD8:
	add r3, r4, r6
	cmp r3, r7
	beq locret_813EDE2
	add r4, #1
	strh r4, [r5,#0x24]
locret_813EDE2:
	pop {r0-r7,pc}
	thumb_func_end reqBBS_813ED98

	thumb_local_start
reqBBS_813EDE4:
	push {r0-r7,lr}
	ldrb r0, [r5,#9]
	ldr r1, off_813EE3C // =dword_813EE40+2 
	ldrb r0, [r1,r0]
	lsl r0, r0, #7
	ldr r2, off_813EE34 // =unk_201AA04 
	add r0, r0, r2
	ldr r1, dword_813EE38 // =0x6017f80 
	mov r2, #0x80
	bl sub_8000AC8
	ldrh r1, [r5,#0x20]
	mov r0, #3
	mov r3, #0x10
	mul r1, r3
	add r1, #0x18
	lsl r0, r0, #0x10
	orr r0, r1
	ldrb r2, [r5,#9]
	ldr r3, off_813EE3C // =dword_813EE40+2 
	add r2, #1
	ldrb r1, [r3,r2]
	cmp r1, #0xff
	bne loc_813EE18
	mov r2, #1
	ldrh r1, [r3]
loc_813EE18:
	strb r2, [r5,#9]
	ldr r2, dword_813EE30 // =0x40000000 
	orr r0, r2
	ldr r1, dword_813EE40 // =0xc3fc 
	mov r2, #0
	lsl r2, r2, #0xa
	orr r1, r2
	mov r2, #0
	mov r3, #3
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	pop {r0-r7,pc}
dword_813EE30: .word 0x40000000
off_813EE34: .word unk_201AA04
dword_813EE38: .word 0x6017F80
off_813EE3C: .word dword_813EE40+2
dword_813EE40: .word 0xC3FC
	.word 0x0
	.word 0x1010101, 0x2020101, 0x2020202, 0xFF
	thumb_func_end reqBBS_813EDE4

	thumb_func_start reqBBS_813EE58
reqBBS_813EE58:
	push {r5,lr}
	ldr r0, dword_813EEEC // =0x3fffffff 
	ldrh r1, [r5,#0x1e]
	cmp r1, #0x28 
	blt loc_813EE68
	mov r1, #0x28 
	mov r2, #0xa
	b loc_813EE8A
loc_813EE68:
	cmp r1, #0x1e
	blt loc_813EE72
	mov r1, #0x1e
	mov r2, #0xb
	b loc_813EE8A
loc_813EE72:
	cmp r1, #0x14
	blt loc_813EE7C
	mov r1, #0x14
	mov r2, #0xc
	b loc_813EE8A
loc_813EE7C:
	cmp r1, #0xa
	blt loc_813EE86
	mov r1, #0xa
	mov r2, #0xd
	b loc_813EE8A
loc_813EE86:
	mov r1, #0
	mov r2, #0xe
loc_813EE8A:
	mov r3, #1
	lsl r3, r2
	eor r0, r3
	ldrh r2, [r5,#0x1e]
	mov r3, #1
	sub r2, r2, r1
	mov r1, #9
	sub r1, r1, r2
	lsl r3, r1
	eor r0, r3
	ldrb r1, [r5,#5]
	mov r2, #0
	cmp r1, #0x28 
	blt loc_813EEAC
	mov r1, #0x28 
	mov r2, #0x19
	b loc_813EECE
loc_813EEAC:
	cmp r1, #0x1e
	blt loc_813EEB6
	mov r1, #0x1e
	mov r2, #0x1a
	b loc_813EECE
loc_813EEB6:
	cmp r1, #0x14
	blt loc_813EEC0
	mov r1, #0x14
	mov r2, #0x1b
	b loc_813EECE
loc_813EEC0:
	cmp r1, #0xa
	blt loc_813EECA
	mov r1, #0xa
	mov r2, #0x1c
	b loc_813EECE
loc_813EECA:
	mov r1, #0
	mov r2, #0x1d
loc_813EECE:
	mov r3, #1
	lsl r3, r2
	eor r0, r3
	ldrb r2, [r5,#5]
	mov r3, #1
	sub r2, r2, r1
	mov r1, #9
	sub r1, r1, r2
	add r1, #0xf
	lsl r3, r1
	eor r0, r3
	ldr r5, off_813EEF0 // =eStructArr2008450 
	bl sub_8002FA6
	pop {r5,pc}
dword_813EEEC: .word 0x3FFFFFFF
off_813EEF0: .word eStructArr2008450
	thumb_func_end reqBBS_813EE58

	thumb_local_start
reqBBS_813EEF4:
	push {r4-r7,lr}
	ldr r0, off_813EF10 // =reqBBS_eTextScript
	ldr r1, off_813EF20 // =byte_813EF24 
	ldrb r2, [r5,#4]
	ldrb r1, [r1,r2]
	ldr r2, off_813EF14 // =byte_201CA00
	ldr r3, dword_813EF18 // =0x6003c00 
	mov r4, #0xc
	mov r5, #1
	ldr r6, off_813EF1C // =dword_86B7AE0 
	mov r7, #0
	bl renderTextGfx_8045F8C
	pop {r4-r7,pc}
off_813EF10: .word reqBBS_eTextScript
off_813EF14: .word byte_201CA00
dword_813EF18: .word 0x6003C00
off_813EF1C: .word dword_86B7AE0
off_813EF20: .word byte_813EF24
byte_813EF24: .byte 0x6, 0x7, 0x8, 0x9, 0xA, 0x0, 0x0, 0x0
	thumb_func_end reqBBS_813EEF4

	thumb_local_start
reqBBS_drawRequestBBS:
	push {r4-r7,lr}
	// j
	mov r0, #1
	// i
	mov r1, #0
	// cpyOff
	mov r2, #2
	// tileRefs
	ldr r3, off_813EF40 // =tileRefs_813DF44 
	mov r4, #0xc
	mov r5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7,pc}
off_813EF40: .word tileRefs_813DF44
reqBBS_entriesGfx: .byte 0x35, 0x0, 0x0, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF
tileRefs_813EF4C: .hword 0x4200, 0x4202, 0x4204, 0x4206, 0x4208, 0x420A, 0x420C, 0x420E
	.hword 0x4210, 0x4212, 0x4214, 0x4216, 0x4218, 0x421A, 0x421C, 0x421E
	.hword 0x4220, 0x4222, 0x4224, 0x4226, 0x4228, 0x422A, 0x422C, 0x4201
	.hword 0x4203, 0x4205, 0x4207, 0x4209, 0x420B, 0x420D, 0x420F, 0x4211
	.hword 0x4213, 0x4215, 0x4217, 0x4219, 0x421B, 0x421D, 0x421F, 0x4221
	.hword 0x4223, 0x4225, 0x4227, 0x4229, 0x422B, 0x422D, 0x5240, 0x5242
	.hword 0x5244, 0x5246, 0x5248, 0x524A, 0x524C, 0x524E, 0x5250, 0x5252
	.hword 0x5254, 0x5256, 0x5258, 0x525A, 0x525C, 0x525E, 0x5260, 0x5262
	.hword 0x5264, 0x5266, 0x5268, 0x526A, 0x526C, 0x5241, 0x5243, 0x5245
	.hword 0x5247, 0x5249, 0x524B, 0x524D, 0x524F, 0x5251, 0x5253, 0x5255
	.hword 0x5257, 0x5259, 0x525B, 0x525D, 0x525F, 0x5261, 0x5263, 0x5265
	.hword 0x5267, 0x5269, 0x526B, 0x526D, 0x4280, 0x4282, 0x4284, 0x4286
	.hword 0x4288, 0x428A, 0x428C, 0x428E, 0x4290, 0x4292, 0x4294, 0x4296
	.hword 0x4298, 0x429A, 0x429C, 0x429E, 0x42A0, 0x42A2, 0x42A4, 0x42A6
	.hword 0x42A8, 0x42AA, 0x42AC, 0x4281, 0x4283, 0x4285, 0x4287, 0x4289
	.hword 0x428B, 0x428D, 0x428F, 0x4291, 0x4293, 0x4295, 0x4297, 0x4299
	.hword 0x429B, 0x429D, 0x429F, 0x42A1, 0x42A3, 0x42A5, 0x42A7, 0x42A9
	.hword 0x42AB, 0x42AD, 0x52C0, 0x52C2, 0x52C4, 0x52C6, 0x52C8, 0x52CA
	.hword 0x52CC, 0x52CE, 0x52D0, 0x52D2, 0x52D4, 0x52D6, 0x52D8, 0x52DA
	.hword 0x52DC, 0x52DE, 0x52E0, 0x52E2, 0x52E4, 0x52E6, 0x52E8, 0x52EA
	.hword 0x52EC, 0x52C1, 0x52C3, 0x52C5, 0x52C7, 0x52C9, 0x52CB, 0x52CD
	.hword 0x52CF, 0x52D1, 0x52D3, 0x52D5, 0x52D7, 0x52D9, 0x52DB, 0x52DD
	.hword 0x52DF, 0x52E1, 0x52E3, 0x52E5, 0x52E7, 0x52E9, 0x52EB, 0x52ED
	.hword 0x4300, 0x4302, 0x4304, 0x4306, 0x4308, 0x430A, 0x430C, 0x430E
	.hword 0x4310, 0x4312, 0x4314, 0x4316, 0x4318, 0x431A, 0x431C, 0x431E
	.hword 0x4320, 0x4322, 0x4324, 0x4326, 0x4328, 0x432A, 0x432C, 0x4301
	.hword 0x4303, 0x4305, 0x4307, 0x4309, 0x430B, 0x430D, 0x430F, 0x4311
	.hword 0x4313, 0x4315, 0x4317, 0x4319, 0x431B, 0x431D, 0x431F, 0x4321
	.hword 0x4323, 0x4325, 0x4327, 0x4329, 0x432B, 0x432D, 0x5340, 0x5342
	.hword 0x5344, 0x5346, 0x5348, 0x534A, 0x534C, 0x534E, 0x5350, 0x5352
	.hword 0x5354, 0x5356, 0x5358, 0x535A, 0x535C, 0x535E, 0x5360, 0x5362
	.hword 0x5364, 0x5366, 0x5368, 0x536A, 0x536C, 0x5341, 0x5343, 0x5345
	.hword 0x5347, 0x5349, 0x534B, 0x534D, 0x534F, 0x5351, 0x5353, 0x5355
	.hword 0x5357, 0x5359, 0x535B, 0x535D, 0x535F, 0x5361, 0x5363, 0x5365
	.hword 0x5367, 0x5369, 0x536B, 0x536D, 0x4380, 0x4382, 0x4384, 0x4386
	.hword 0x4388, 0x438A, 0x438C, 0x438E, 0x4390, 0x4392, 0x4394, 0x4396
	.hword 0x4398, 0x439A, 0x439C, 0x439E, 0x43A0, 0x43A2, 0x43A4, 0x43A6
	.hword 0x43A8, 0x43AA, 0x43AC, 0x4381, 0x4383, 0x4385, 0x4387, 0x4389
	.hword 0x438B, 0x438D, 0x438F, 0x4391, 0x4393, 0x4395, 0x4397, 0x4399
	.hword 0x439B, 0x439D, 0x439F, 0x43A1, 0x43A3, 0x43A5, 0x43A7, 0x43A9
	.hword 0x43AB, 0x43AD, 0x53C0, 0x53C2, 0x53C4, 0x53C6, 0x53C8, 0x53CA
	.hword 0x53CC, 0x53CE, 0x53D0, 0x53D2, 0x53D4, 0x53D6, 0x53D8, 0x53DA
	.hword 0x53DC, 0x53DE, 0x53E0, 0x53E2, 0x53E4, 0x53E6, 0x53E8, 0x53EA
	.hword 0x53EC, 0x53C1, 0x53C3, 0x53C5, 0x53C7, 0x53C9, 0x53CB, 0x53CD
	.hword 0x53CF, 0x53D1, 0x53D3, 0x53D5, 0x53D7, 0x53D9, 0x53DB, 0x53DD
	.hword 0x53DF, 0x53E1, 0x53E3, 0x53E5, 0x53E7, 0x53E9, 0x53EB, 0x53ED
byte_813F22C: .byte 0x0, 0x60, 0x0, 0x60, 0x0, 0x60, 0x20, 0x60, 0x22, 0x60
	.byte 0x24, 0x60, 0x26, 0x60, 0x28, 0x60, 0x2A, 0x60, 0x2C, 0x60
	.byte 0x2E, 0x60, 0x30, 0x60, 0x32, 0x60, 0x34, 0x60, 0x36, 0x60
	.byte 0x38, 0x60, 0x3A, 0x60, 0x3C, 0x60, 0x3E, 0x60, 0x40, 0x60
	.byte 0x42, 0x60, 0x44, 0x60, 0x46, 0x60, 0x48, 0x60, 0x4A, 0x60
	.byte 0x4C, 0x60, 0x0, 0x60, 0x0, 0x60, 0x0, 0x60, 0x0, 0x60
	.byte 0x0, 0x60, 0x0, 0x60, 0x0, 0x60, 0x0, 0x60, 0x0, 0x60
	.byte 0x21, 0x60, 0x23, 0x60, 0x25, 0x60, 0x27, 0x60, 0x29, 0x60
	.byte 0x2B, 0x60, 0x2D, 0x60, 0x2F, 0x60, 0x31, 0x60, 0x33, 0x60
	.byte 0x35, 0x60, 0x37, 0x60, 0x39, 0x60, 0x3B, 0x60, 0x3D, 0x60
	.byte 0x3F, 0x60, 0x41, 0x60, 0x43, 0x60, 0x45, 0x60, 0x47, 0x60
	.byte 0x49, 0x60, 0x4B, 0x60, 0x4D, 0x60, 0x0, 0x60, 0x0, 0x60
	.byte 0x0, 0x60, 0x0, 0x60, 0x0, 0x60, 0x0, 0x60
byte_813F2AC: .byte 0x0, 0x60, 0x0, 0x60, 0x0, 0x60, 0x0, 0x60, 0x0, 0x60, 0x0, 0x60
	.byte 0x20, 0x60, 0x21, 0x60, 0x24, 0x60, 0x25, 0x60, 0x28, 0x60, 0x29, 0x60
	.byte 0x2C, 0x60, 0x2D, 0x60, 0x30, 0x60, 0x31, 0x60, 0x34, 0x60, 0x35, 0x60
	.byte 0x38, 0x60, 0x39, 0x60, 0x3C, 0x60, 0x3D, 0x60, 0x40, 0x60, 0x41, 0x60
	.byte 0x44, 0x60, 0x45, 0x60, 0x48, 0x60, 0x49, 0x60, 0x4A, 0x60, 0x0, 0x60
	.byte 0x0, 0x60, 0x0, 0x60, 0x0, 0x60, 0x0, 0x60, 0x0, 0x60, 0x0, 0x60
	.byte 0x0, 0x60, 0x0, 0x60, 0x22, 0x60, 0x23, 0x60, 0x26, 0x60, 0x27, 0x60
	.byte 0x2A, 0x60, 0x2B, 0x60, 0x2E, 0x60, 0x2F, 0x60, 0x32, 0x60, 0x33, 0x60
	.byte 0x36, 0x60, 0x37, 0x60, 0x3A, 0x60, 0x3B, 0x60, 0x3E, 0x60, 0x3F, 0x60
	.byte 0x42, 0x60, 0x43, 0x60, 0x46, 0x60, 0x47, 0x60, 0x4A, 0x60, 0x4B, 0x60
	.byte 0x4C, 0x60, 0x0, 0x60, 0x0, 0x60, 0x0, 0x60
byte_813F32C: .byte 0xE0, 0x61, 0xE2, 0x61, 0xE4, 0x61, 0xE6, 0x61, 0xE8
	.byte 0x61, 0xEA, 0x61, 0xEC, 0x61, 0xEE, 0x61, 0xE1, 0x61
	.byte 0xE3, 0x61, 0xE5, 0x61, 0xE7, 0x61, 0xE9, 0x61, 0xEB
	.byte 0x61, 0xED, 0x61, 0xEF, 0x61
reqBBS_textualPointers: .word reqBBS_requestNames_textualData
	.word reqBBS_requestInfo_textOffsets
byte_813F354: .byte 0x60, 0x1B, 0x0, 0x0, 0xA0, 0x1B, 0x0, 0x0, 0xE0, 0x1B, 0x0
	.byte 0x0, 0x20, 0x1C, 0x0, 0x0
dword_813F364: .word 0x1C60
	.word reqBBS_numRequestsSent
	.word unk_2000770
	.word reqBBS_requestEntriesList
	.word reqBBS_tile_data
off_813F378: .word dword_87EE2F0
	.word dword_87EE5B0
byte_813F380: .byte 0x0, 0x0, 0x0, 0x1, 0x0, 0x0, 0x1, 0x1, 0x0, 0x0, 0x0, 0x1, 0x2, 0x0, 0x0, 0x1, 0x2
	.byte 0x1, 0x1, 0x1, 0x2, 0x3, 0x3, 0x3, 0x3, 0x1, 0x2, 0x2, 0x1, 0x1, 0x0, 0x1, 0x2, 0x2
	.byte 0x2, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end reqBBS_drawRequestBBS

	thumb_func_start reqBBS_init_s_2005780
reqBBS_init_s_2005780:
	push {r4-r7,lr}
	push {r0}
	// memBlock
	ldr r0, off_813F400 // =eReqBBSGui
	mov r1, #0xd // reqBBS_GUI.numPoints
	ldrb r1, [r0,r1]
	mov r2, #0xe // reqBBS_GUI.totalPointsIndex
	ldrb r2, [r0,r2]
	mov r3, #0xf
	ldrb r3, [r0,r3]
	push {r1-r3}
	// size
	mov r1, #0x2c 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	pop {r1-r3}
	ldr r0, off_813F400 // =eReqBBSGui
	mov r4, #0xd // reqBBS_GUI.numPoints
	strb r1, [r0,r4]
	mov r4, #0xe // reqBBS_GUI.totalPointsIndex
	strb r2, [r0,r4]
	mov r4, #0xf // reqBBS_GUI.unk_0F
	strb r3, [r0,r4]
	pop {r0}
	ldr r5, off_813F400 // =eReqBBSGui
	strb r0, [r5,#0x4] // reqBBS_GUI.unk_04
	ldr r2, off_813F3FC // =reqBBS_textualPointers 
	mov r1, #0x2c 
	mul r0, r1
	add r0, r0, r2
	str r0, [r5,#0x28] // reqBBS_GUI.reqBBS_textualPointers
	pop {r4-r7,pc}
off_813F3FC: .word reqBBS_textualPointers
off_813F400: .word eReqBBSGui
	thumb_func_end reqBBS_init_s_2005780

	thumb_func_start reqBBS_subsystemCotnrol
// sets r5 = eReqBBSGui
reqBBS_subsystemCotnrol:
	push {r4-r7,lr}
	mov r1, r8
	mov r2, r9
	mov r3, r12
	push {r1-r3}
	ldr r5, off_813F424 // =eReqBBSGui
	ldr r0, off_813F428 // =ReqBBSSubSystemJumpTable
	ldrb r1, [r5, #oReqBBSGui_SubsystemJumpTableOffset]
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {r1-r3}
	mov r8, r1
	mov r9, r2
	mov r12, r3
	pop {r4-r7,pc}
off_813F424: .word eReqBBSGui
off_813F428: .word ReqBBSSubSystemJumpTable
ReqBBSSubSystemJumpTable:
    .word OpenReqBBSMenu813F474+1
	.word UpdateReqBBSMenu813F550+1
	.word ExitReqBBSMenu813F590+1
	.word reqBBS_813F5EC+1
	.word reqBBS_813F65C+1
	.word reqBBS_813F6F8+1
	.word reqBBS_813F754+1
	.word reqBBS_813F80C+1
	.word reqBBS_813F868+1
	.word reqBBS_813F8B0+1
	.word reqBBS_813F7B0+1
	.word reqBBS_813FA54+1
	.word reqBBS_813FAB0+1
	.word reqBBS_813FB24+1
	.word reqBBS_813FBC0+1
	.word reqBBS_813FC30+1
	.word reqBBS_813FC8C+1
	.word reqBBS_813FD14+1
	thumb_func_end reqBBS_subsystemCotnrol

	thumb_local_start
OpenReqBBSMenu813F474:
	push {lr}
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x3a 
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_813F4B6
	ldr r0, off_813F548 // =eReqBBSGui
	ldr r1, dword_813F544 // =0xf 
	ldrb r2, [r0,r1]
	ldr r3, off_813F54C // =reqBBS_textualPointers 
	ldr r3, [r3,#0x18] // (dword_813F364 - 0x813f34c)
	add r2, r2, r3
	mov r0, r2
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_813F4B6
	ldr r0, off_813F548 // =eReqBBSGui
	ldr r1, dword_813F544 // =0xf 
	ldrb r2, [r0,r1]
	ldr r3, off_813F54C // =reqBBS_textualPointers 
	ldr r3, [r3,#0x14] // (byte_813F354+0xc - 0x813f34c)
	add r2, r2, r3
	// bitfield
	mov r0, r2
	bl SetEventFlag
	mov r0, #0x17
	mov r1, #0x3a 
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	ldr r0, off_813F548 // =eReqBBSGui
	ldr r1, dword_813F544 // =0xf 
	mov r3, #0
	strb r3, [r0,r1]
loc_813F4B6:
	mov r0, #0
	strb r0, [r5,#8]
	strh r0, [r5,#0x20]
	strh r0, [r5,#0x24]
	strh r0, [r5,#0x26]
	strb r0, [r5,#9]
	strb r0, [r5,#0xb]
	bl reqBBS_813FDA8
	bl reqBBS_813FE54
	bl reqBBS_813FEB0
	bl reqBBS_copyTextDataToRAM
	ldrh r0, [r5,#0x24]
	bl reqBBS_renderRequestNames
	bl reqBBS_81405C0
	mov r7, r10
	bl renderInfo_8001788
	bl renderInfo_80017A0
	mov r0, #0x17
	bl sub_80015FC
	mov r0, #8
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	ldr r0, off_813F534 // =reqBBS_entriesGfx 
	bl sub_80465A0 // (void *a1) -> void
	ldrh r0, [r5,#0x1e]
	cmp r0, #0
	beq loc_813F508
	ldrb r0, [r5,#5]
	tst r0, r0
	beq loc_813F51A
loc_813F508:
	mov r0, #0x28 
	strb r0, [r5]
	mov r0, #5
	strb r0, [r5,#8]
	mov r7, r10
	ldr r0, [r7,#8]
	ldr r1, dword_813F538 // =0x5f40 
	strh r1, [r0]
	b loc_813F530
loc_813F51A:
	mov r0, #4
	strb r0, [r5]
	mov r0, #5
	strb r0, [r5,#8]
	bl reqBBS_renderSelectedEntry_HeaderText
	mov r7, r10
	ldr r0, [r7,#8]
	ldr r1, byte_813F53C // =0x40 
	strh r1, [r0]
	b loc_813F530
loc_813F530:
	mov r0, #0
	pop {pc}
off_813F534: .word reqBBS_entriesGfx
dword_813F538: .word 0x5F40
byte_813F53C: .byte 0x40, 0x5E, 0x0, 0x0, 0xA0, 0x17, 0x0, 0x0
dword_813F544: .word 0xF
off_813F548: .word eReqBBSGui
off_813F54C: .word reqBBS_textualPointers
	thumb_func_end OpenReqBBSMenu813F474

	thumb_local_start
UpdateReqBBSMenu813F550:
	push {lr}
	ldr r0, dword_813F58C // =0x1f40 
	bl sRender_08_setRenderingState
	mov r7, r10
	ldr r7, [r7,#oToolkit_Unk2009740_Ptr]
	ldrb r0, [r7,#6]
	cmp r0, #0
	ble loc_813F56A
	sub r0, #8
	strb r0, [r7,#6]
	lsr r0, r0, #4
	strb r0, [r7,#4]
loc_813F56A:
	ldrh r0, [r5,#0x20]
	strh r0, [r5,#0x22]
	ldrh r0, [r5,#0x24]
	strh r0, [r5,#0x26]
	bl IsPaletteFadeActive // () -> zf
	beq loc_813F57E
	mov r0, #0
	bl reqBBS_8140358
loc_813F57E:
	bl reqBBS_813F8F0
	bl reqBBS_animateCursor
	mov r0, #0
	pop {pc}
	.balign 4, 0x00
dword_813F58C: .word 0x1F40
	thumb_func_end UpdateReqBBSMenu813F550

	thumb_local_start
ExitReqBBSMenu813F590:
	push {lr}
	mov r7, r10
	ldr r0, [r7,#oToolkit_RenderInfoPtr]
	ldr r1, dword_813F5E8 // =0x1f40 
	strh r1, [r0]
	bl reqBBS_813F8F0
	bl IsPaletteFadeActive // () -> zf
	beq loc_813F5E4
	ldrb r0, [r5,#5]
	ldr r1, [r5,#0x28]
	ldr r1, [r1,#0x20]
	str r0, [r1]
	bl sub_809E122
	mov r0, r10
	ldr r0, [r0,#0x1c]
	mov r1, #0
	strb r1, [r0,#9]
	strb r1, [r0,#0xa]
	mov r1, #0xff
	strb r1, [r0,#1]
	strb r1, [r0,#5]
	strb r1, [r0,#3]
	strb r1, [r0,#7]
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0,#4]
	strb r1, [r0,#2]
	strb r1, [r0,#6]
	mov r0, r10
	ldr r0, [r0,#0x20]
	mov r1, #0
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0,#4]
	strb r1, [r0,#6]
	bl sub_8005F84
	mov r0, #1
	pop {pc}
loc_813F5E4:
	mov r0, #0
	pop {pc}
dword_813F5E8: .word 0x1F40
	thumb_func_end ExitReqBBSMenu813F590

	thumb_local_start
reqBBS_813F5EC:
	push {lr}
	mov r7, r10
	ldr r0, [r7,#oToolkit_RenderInfoPtr]
	ldr r1, dword_813F864 // =0x5f40 
	strh r1, [r0]
	mov r7, r10
	ldr r7, [r7,#oToolkit_Unk2009740_Ptr]
	ldrb r0, [r7,#6]
	add r0, #8
	strb r0, [r7,#6]
	lsr r0, r0, #4
	strb r0, [r7,#4]
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	ldrb r1, [r0,#7]
	sub r1, #8
	strb r1, [r0,#7]
	ldrb r1, [r0,#6]
	add r1, #8
	strb r1, [r0,#6]
	ldrb r0, [r5,#8]
	sub r0, #1
	strb r0, [r5,#8]
	bgt loc_813F648
	mov r0, r10
	ldr r0, [r0,#oToolkit_ChatboxPtr]
	mov r1, #4
	str r1, [r0,#0x4c]
	ldrh r1, [r5,#0x24]
	ldrh r2, [r5,#0x20]
	add r2, r2, r1
	ldr r7, [r5,#0x28]
	ldr r0, [r7,#4]
	ldr r1, off_813F658 // =reqBBS_eRequestEntriesIDs 
	ldrb r1, [r1,r2]
	ldr r2, off_813F654 // =reqBBS_textualShades 
	bl chatbox_reqBBS_80404C0
	bl reqBBS_8140600
	bl reqBBS_drawChatbox_dup1
	bl reqBBS_renderSelectedEntry_HeaderText
	mov r0, #0x10
	strb r0, [r5]
loc_813F648:
	bl reqBBS_813F8F0
	mov r0, #0
	pop {pc}
	.word 0x800
off_813F654: .word reqBBS_textualShades
off_813F658: .word reqBBS_eRequestEntriesIDs
	thumb_func_end reqBBS_813F5EC

	thumb_local_start
reqBBS_813F65C:
	push {lr}
	mov r7, r10
	ldr r7, [r7,#oToolkit_Unk2009740_Ptr]
	ldrb r0, [r7,#6]
	cmp r0, #0x40 
	bge loc_813F678
	add r0, #8
	strb r0, [r7,#6]
	lsr r0, r0, #4
	strb r0, [r7,#4]
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	mov r1, #0x1b
	strb r1, [r0,#9]
loc_813F678:
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq loc_813F6CE
	ldrh r0, [r5,#0x24]
	ldrh r1, [r5,#0x20]
	add r1, r1, r0
	ldr r0, off_813F6EC // =reqBBS_eRequestEntriesIDs 
	ldr r2, [r5,#0x28]
	ldr r2, [r2,#0xc]
	ldrb r0, [r0,r1]
	add r0, r0, r2
	mov r8, r0
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_813F6A6
	mov r0, r8
	bl ClearEventFlag // (u16 entryFlagBitfield) -> void
	ldrb r0, [r5,#5]
	add r0, #0
	strb r0, [r5,#5]
loc_813F6A6:
	bl chatbox_8040818
	ldrh r0, [r5,#0x24]
	ldrh r1, [r5,#0x20]
	add r0, r0, r1
	ldr r1, off_813F6EC // =reqBBS_eRequestEntriesIDs 
	ldrb r0, [r1,r0]
	bl reqBBS_8140868
	tst r0, r0
	beq loc_813F6C0
	mov r1, #2
	b loc_813F6C2
loc_813F6C0:
	mov r1, #0x11
loc_813F6C2:
	ldr r0, off_813F6F4 // =reqBBS_eTextScript
	ldr r2, off_813F6F0 // =reqBBS_textualShades 
	bl chatbox_reqBBS_80404C0
	mov r0, #0x40 
	strb r0, [r5]
loc_813F6CE:
	bl reqBBS_813F8F0
	bl reqBBS_8140588
	bl reqBBS_81402CC
	mov r0, #0
	pop {pc}
	bl reqBBS_813F8F0
	bl reqBBS_813FEB0
	mov r0, #0
	pop {pc}
	.balign 4, 0x00
off_813F6EC: .word reqBBS_eRequestEntriesIDs
off_813F6F0: .word reqBBS_textualShades
off_813F6F4: .word reqBBS_eTextScript
	thumb_func_end reqBBS_813F65C

	thumb_local_start
reqBBS_813F6F8:
	push {lr}
	mov r7, r10
	ldr r7, [r7,#oToolkit_Unk2009740_Ptr]
	ldrb r0, [r7,#6]
	sub r0, #8
	strb r0, [r7,#6]
	lsr r0, r0, #4
	strb r0, [r7,#4]
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	mov r1, #0x1b
	strb r1, [r0,#9]
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	ldrb r1, [r0,#7]
	add r1, #8
	strb r1, [r0,#7]
	ldrb r1, [r0,#6]
	sub r1, #8
	strb r1, [r0,#6]
	ldrb r0, [r5,#8]
	sub r0, #1
	strb r0, [r5,#8]
	bgt loc_813F74A
	mov r0, #4
	strb r0, [r5]
	bl reqBBS_813FEB0
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	mov r1, #0x3f 
	strb r1, [r0,#9]
	mov r1, #0x3f 
	strb r1, [r0,#0xa]
	mov r1, #0xff
	strb r1, [r0,#3]
	mov r1, #0
	strb r1, [r0,#2]
	mov r1, #0xff
	strb r1, [r0,#7]
	mov r1, #0
	strb r1, [r0,#6]
loc_813F74A:
	bl reqBBS_813F8F0
	mov r0, #0
	pop {pc}
	.balign 4, 0x00
	thumb_func_end reqBBS_813F6F8

	thumb_local_start
reqBBS_813F754:
	push {lr}
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	mov r1, #0x1a
	strb r1, [r0,#9]
	mov r1, #0x36 
	strb r1, [r0,#0xa]
	mov r1, #0
	strb r1, [r0,#3]
	mov r1, #0xff
	strb r1, [r0,#2]
	mov r1, #0x50 
	strb r1, [r0,#7]
	mov r1, #0x50 
	strb r1, [r0,#6]
	bl IsPaletteFadeActive // () -> zf
	beq loc_813F7A6
	mov r7, r10
	ldr r7, [r7,#oToolkit_Unk2009740_Ptr]
	mov r0, #0xf7
	strb r0, [r7]
	mov r0, #0
	strb r0, [r7,#4]
	strb r0, [r7,#6]
	mov r0, #0xc
	strb r0, [r5]
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	mov r1, #0x1a
	strb r1, [r0,#9]
	mov r1, #0x36 
	strb r1, [r0,#0xa]
	mov r1, #0
	strb r1, [r0,#3]
	mov r1, #0xff
	strb r1, [r0,#2]
	mov r1, #0x50 
	strb r1, [r0,#7]
	mov r1, #0x50 
	strb r1, [r0,#6]
loc_813F7A6:
	bl reqBBS_813F8F0
	mov r0, #0
	pop {pc}
	.byte 0, 0
	thumb_func_end reqBBS_813F754

	thumb_local_start
reqBBS_813F7B0:
	push {lr}
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	mov r1, #0x1a
	strb r1, [r0,#9]
	mov r1, #0x36 
	strb r1, [r0,#0xa]
	mov r1, #0
	strb r1, [r0,#3]
	mov r1, #0xff
	strb r1, [r0,#2]
	mov r1, #0x50 
	strb r1, [r0,#7]
	mov r1, #0x50 
	strb r1, [r0,#6]
	bl IsPaletteFadeActive // () -> zf
	beq loc_813F802
	mov r7, r10
	ldr r7, [r7,#oToolkit_Unk2009740_Ptr]
	mov r0, #0xf7
	strb r0, [r7]
	mov r0, #0
	strb r0, [r7,#4]
	strb r0, [r7,#6]
	mov r0, #0x1c
	strb r0, [r5]
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	mov r1, #0x1a
	strb r1, [r0,#9]
	mov r1, #0x36 
	strb r1, [r0,#0xa]
	mov r1, #0
	strb r1, [r0,#3]
	mov r1, #0xff
	strb r1, [r0,#2]
	mov r1, #0x50 
	strb r1, [r0,#7]
	mov r1, #0x50 
	strb r1, [r0,#6]
loc_813F802:
	bl reqBBS_813F8F0
	thumb_func_end reqBBS_813F7B0

	mov r0, #0
	pop {pc}
	.balign 4, 0x00
	thumb_local_start
reqBBS_813F80C:
	push {lr}
	mov r7, r10
	ldr r0, [r7,#oToolkit_RenderInfoPtr]
	ldr r1, dword_813F864 // =0x5f40 
	strh r1, [r0]
	mov r7, r10
	ldr r7, [r7,#oToolkit_Unk2009740_Ptr]
	ldrb r0, [r7,#6]
	add r0, #8
	strb r0, [r7,#6]
	lsr r0, r0, #4
	strb r0, [r7,#4]
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	ldrb r1, [r0,#7]
	sub r1, #8
	strb r1, [r0,#7]
	ldrb r1, [r0,#6]
	add r1, #8
	strb r1, [r0,#6]
	ldrb r0, [r5,#8]
	sub r0, #1
	strb r0, [r5,#8]
	bgt loc_813F856
	mov r0, #0
	ldrh r1, [r5,#0x1e]
	cmp r1, #0
	bne loc_813F846
	mov r0, #1
loc_813F846:
	mov r1, r0
	ldr r0, off_813F860 // =reqBBS_eTextScript
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	bl reqBBS_renderSelectedEntry_HeaderText
	mov r0, #0x20 
	strb r0, [r5]
loc_813F856:
	bl reqBBS_813F8F0
	thumb_func_end reqBBS_813F80C

	mov r0, #0
	pop {pc}
	.byte 0, 0
off_813F860: .word reqBBS_eTextScript
dword_813F864: .word 0x5F40
	thumb_local_start
reqBBS_813F868:
	push {lr}
	mov r7, r10
	ldr r7, [r7,#oToolkit_Unk2009740_Ptr]
	ldrb r0, [r7,#6]
	cmp r0, #0x40 
	bge loc_813F884
	add r0, #8
	strb r0, [r7,#6]
	lsr r0, r0, #4
	strb r0, [r7,#4]
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	mov r1, #0x1b
	strb r1, [r0,#9]
loc_813F884:
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq loc_813F8A8
	bl chatbox_8040818
	mov r0, #0x24 
	strb r0, [r5]
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	mov r1, #0x1f
	strb r1, [r0,#9]
	mov r0, #5
	strb r0, [r5,#8]
	mov r0, #0x10
	mov r1, #8
	bl engine_setScreeneffect // (int a1, int a2) -> void
loc_813F8A8:
	bl reqBBS_813F8F0
	mov r0, #0
	pop {pc}
	thumb_func_end reqBBS_813F868

	thumb_local_start
reqBBS_813F8B0:
	push {lr}
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	ldrb r1, [r0,#7]
	add r1, #8
	strb r1, [r0,#7]
	ldrb r1, [r0,#6]
	sub r1, #8
	strb r1, [r0,#6]
	ldrb r0, [r5,#8]
	sub r0, #1
	strb r0, [r5,#8]
	bgt loc_813F8E6
	ldrh r0, [r5,#0x1e]
	cmp r0, #0
	bne loc_813F8DE
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #8
	strb r0, [r5]
	b loc_813F8E6
loc_813F8DE:
	mov r0, #4
	strb r0, [r5]
	bl reqBBS_813FEB0
loc_813F8E6:
	bl reqBBS_813F8F0
	mov r0, #0
	pop {pc}
	.byte 0, 0
	thumb_func_end reqBBS_813F8B0

	thumb_local_start
reqBBS_813F8F0:
	push {r5,lr}
	bl sub_80465BC
	bl sub_80465F8 // () -> void
	ldrh r0, [r5,#0x24]
	bl reqBBS_renderRequestNames
	thumb_func_end reqBBS_813F8F0

	bl reqBBS_81405E8
	ldrh r0, [r5,#0x1e]
	tst r0, r0
	beq loc_813F936
	ldrb r0, [r5]
	cmp r0, #0x18
	beq loc_813F936
	mov r0, r10
	ldr r0, [r0,#0x1c]
	ldrb r0, [r0,#7]
	cmp r0, #0x50 
	beq loc_813F922
	cmp r0, #0xff
	beq loc_813F922
	tst r0, r0
	bne loc_813F936
loc_813F922:
	mov r0, #4
	ldrh r1, [r5,#0x20]
	lsl r1, r1, #4
	add r1, #0x18
	ldrb r2, [r5,#9]
	mov r3, #0
	ldrb r0, [r5]
	cmp r0, #0x10
	beq loc_813F936
	strb r2, [r5,#9]
loc_813F936:
	bl reqBBS_anim_814004C
	bl reqBBS_renderRequestStatus
	bl reqBBS_renderRankStars
	mov r0, #0xe4
	mov r1, #0x10
	lsl r0, r0, #0x10
	orr r0, r1
	ldr r1, dword_813F95C // =0x20002 
	ldrh r2, [r5,#0x1e]
	ldrh r3, [r5,#0x24]
	mov r4, #8
	ldr r6, dword_813F960 // =0xc000 
	mov r7, #0x7c 
	bl sub_811FA98
	pop {r5,pc}
dword_813F95C: .word 0x20002
dword_813F960: .word 0xC000
	thumb_local_start
reqBBS_copyTextDataToRAM:
	push {r5,lr}
	ldrb r0, [r5,#4]
	lsl r0, r0, #3
	ldr r3, off_813F98C // =off_813F378 
	add r3, r3, r0
	push {r3}
	// src
	ldr r0, [r3]
	// dest
	ldr r1, off_813F990 // =unk_2025A00 
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	pop {r3}
	// src
	ldr r0, [r3,#4]
	// dest
	ldr r1, off_813F994 // =unk_2029A00 
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	// src
	ldr r0, off_813F998 // =byte_87EFE14 
	// dest
	ldr r1, off_813F99C // =unk_2033A00 
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	pop {r5,pc}
off_813F98C: .word off_813F378
off_813F990: .word unk_2025A00
off_813F994: .word unk_2029A00
off_813F998: .word byte_87EFE14
off_813F99C: .word unk_2033A00
	thumb_func_end reqBBS_copyTextDataToRAM

	thumb_func_start reqBBS_813F9A0
reqBBS_813F9A0:
	push {r3,r7,lr}
	mov r7, r0
	mov r1, #2
	mov r0, r0
	bl SetEventFlag
	mov r0, r7
	ldr r3, off_813FD74 // =0x1b60 
	sub r0, r0, r3
	ldr r3, off_813FD78 // =0x1ba0 
	add r0, r0, r3
	mov r0, r0
	bl SetEventFlag
	ldr r1, off_813FD74 // =0x1b60 
	sub r7, r7, r1
	lsr r3, r7, #6
	lsl r3, r3, #6
	ldr r2, off_813FD7C // =reqBBS_requestEntriesList 
	add r2, r2, r3
	lsr r3, r3, #4
	ldr r1, off_813FD80 // =reqBBS_numRequestsSent 
	ldr r0, [r1,r3]
	lsl r7, r7, #0x1a
	lsr r7, r7, #0x1a
	strb r7, [r2,r0]
	add r0, #1
	str r0, [r1,r3]
	pop {r3,r7,pc}
	thumb_func_end reqBBS_813F9A0

	thumb_func_start reqBBS_initMemory_813F9DA
reqBBS_initMemory_813F9DA:
	push {lr}
	// mem
	ldr r0, off_813FD84 // =reqBBS_requestEntriesList 
	// byteCount
	mov r1, #0x80
	// byte
	mov r2, #0x80
	bl ByteFill // (u8 *mem, int byteCount, u8 byte) -> void
	// memBlock
	ldr r0, off_813FD88 // =reqBBS_numRequestsSent 
	// size
	mov r1, #4
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	// memBlock
	ldr r0, off_813FD8C // =unk_2000770 
	// size
	mov r1, #4
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	pop {pc}
	thumb_func_end reqBBS_initMemory_813F9DA

	thumb_local_start
reqBBS_dead_initMemory_813F9F8:
	push {r4,lr}
	mov r4, r0
	lsl r0, r0, #7
	ldr r1, off_813FD90 // =reqBBS_requestEntriesList 
	// mem
	add r0, r0, r1
	// byteCount
	mov r1, #0x80
	// byte
	mov r2, #0x80
	bl ByteFill // (u8 *mem, int byteCount, u8 byte) -> void
	lsl r0, r4, #2
	ldr r1, off_813FD94 // =reqBBS_numRequestsSent 
	// memBlock
	add r0, r0, r1
	// size
	mov r1, #4
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	lsl r0, r4, #2
	ldr r1, off_813FD98 // =unk_2000770 
	// memBlock
	add r0, r0, r1
	// size
	mov r1, #4
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	pop {r4,pc}
	thumb_func_end reqBBS_dead_initMemory_813F9F8

	thumb_func_start sub_813FA24
sub_813FA24:
	push {r4,r5,lr}
	ldr r3, off_813FA4C // =dword_813FA50 
	mov r1, #0
loc_813FA2A:
	mov r2, #0
	lsl r1, r1, #2
loc_813FA2E:
	ldr r0, [r3,r1]
	add r0, r0, r2
	push {r0-r3}
	bl reqBBS_813F9A0
	pop {r0-r3}
	add r2, #1
	cmp r2, #0x30 
	bne loc_813FA2E
	lsr r1, r1, #2
	add r1, #1
	cmp r1, #1
	bne loc_813FA2A
	pop {r4,r5,pc}
	.balign 4, 0x00
off_813FA4C: .word dword_813FA50
dword_813FA50: .word 0x1B60
	thumb_func_end sub_813FA24

	thumb_local_start
reqBBS_813FA54:
	push {lr}
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	mov r1, #0x1a
	strb r1, [r0,#9]
	mov r1, #0x36 
	strb r1, [r0,#0xa]
	mov r1, #0
	strb r1, [r0,#3]
	mov r1, #0xff
	strb r1, [r0,#2]
	mov r1, #0x50 
	strb r1, [r0,#7]
	mov r1, #0x50 
	strb r1, [r0,#6]
	bl IsPaletteFadeActive // () -> zf
	beq loc_813FAA6
	mov r7, r10
	ldr r7, [r7,#oToolkit_Unk2009740_Ptr]
	mov r0, #0xf7
	strb r0, [r7]
	mov r0, #0
	strb r0, [r7,#4]
	strb r0, [r7,#6]
	mov r0, #0x30 
	strb r0, [r5]
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	mov r1, #0x1a
	strb r1, [r0,#9]
	mov r1, #0x36 
	strb r1, [r0,#0xa]
	mov r1, #0
	strb r1, [r0,#3]
	mov r1, #0xff
	strb r1, [r0,#2]
	mov r1, #0x50 
	strb r1, [r0,#7]
	mov r1, #0x50 
	strb r1, [r0,#6]
loc_813FAA6:
	bl reqBBS_813F8F0
	mov r0, #0
	pop {pc}
	.balign 4, 0
	thumb_func_end reqBBS_813FA54

	thumb_local_start
reqBBS_813FAB0:
	push {lr}
	mov r7, r10
	ldr r0, [r7,#oToolkit_RenderInfoPtr]
	ldr r1, dword_813FB14 // =0x5f40 
	strh r1, [r0]
	mov r7, r10
	ldr r7, [r7,#oToolkit_Unk2009740_Ptr]
	ldrb r0, [r7,#6]
	add r0, #8
	strb r0, [r7,#6]
	lsr r0, r0, #4
	strb r0, [r7,#4]
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	ldrb r1, [r0,#7]
	sub r1, #8
	strb r1, [r0,#7]
	ldrb r1, [r0,#6]
	add r1, #8
	strb r1, [r0,#6]
	ldrb r0, [r5,#8]
	sub r0, #1
	strb r0, [r5,#8]
	bgt loc_813FB02
	ldr r0, off_813FD9C // =eChatbox
	ldr r1, off_813FDA0 // =eReqBBSGui
	ldr r2, dword_813FB1C // =0xf 
	ldr r3, off_813FB20 // =0x50 
	ldrb r1, [r1,r2]
	str r1, [r0,r3]
	ldr r0, off_813FB18 // =reqBBS_eTextScript
	mov r1, #6
	ldr r2, off_813FB10 // =reqBBS_textualShades 
	bl chatbox_reqBBS_80404C0
	bl reqBBS_drawSelectChatbox
	bl reqBBS_changeChatboxHeader
	mov r0, #0x34 
	strb r0, [r5]
loc_813FB02:
	bl reqBBS_813F8F0
	mov r0, #0
	pop {pc}
	.balign 4, 0x00
	.word 0x800
off_813FB10: .word reqBBS_textualShades
dword_813FB14: .word 0x5F40
off_813FB18: .word reqBBS_eTextScript
dword_813FB1C: .word 0xF
off_813FB20: .word 0x50
    thumb_func_end reqBBS_813FAB0

	thumb_local_start
reqBBS_813FB24:
	push {lr}
	mov r7, r10
	ldr r7, [r7,#oToolkit_Unk2009740_Ptr]
	ldrb r0, [r7,#6]
	cmp r0, #0x40 
	bge loc_813FB40
	add r0, #8
	strb r0, [r7,#6]
	lsr r0, r0, #4
	strb r0, [r7,#4]
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	mov r1, #0x1b
	strb r1, [r0,#9]
loc_813FB40:
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq loc_813FB98
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x3a 
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_813FB6E
	ldr r0, off_813FBB4 // =reqBBS_requestInfo_textOffsets 
	ldr r1, off_813FDA4 // =eReqBBSGui
	ldr r2, dword_813FBBC // =0xf 
	ldrb r1, [r1,r2]
	ldr r2, off_813FBB8 // =reqBBS_textualShades 
	bl chatbox_reqBBS_80404C0
	mov r0, #0x38 
	strb r0, [r5]
	bl reqBBS_drawChatbox_dup1
	bl reqBBS_setChatboxHeaderBasedOn_0F
	b loc_813FB98
loc_813FB6E:
	bl chatbox_8040818
	bl reqBBS_813FE54
	mov r0, #0x3c 
	strb r0, [r5]
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	mov r1, #0x1b
	strb r1, [r0,#9]
	mov r0, #6
	strb r0, [r5,#8]
	mov r7, r10
	ldr r7, [r7,#oToolkit_Unk2009740_Ptr]
	mov r0, #0xf7
	strb r0, [r7]
	mov r0, #4
	strb r0, [r7,#4]
	mov r0, #0x40 
	strb r0, [r7,#6]
	b loc_813FBA4
loc_813FB98:
	bl reqBBS_813F8F0
	bl reqBBS_81405A4
	mov r0, #0
	pop {pc}
loc_813FBA4:
	bl reqBBS_813F8F0
	bl reqBBS_813FEB0
	mov r0, #0
	pop {pc}
	.word reqBBS_eRequestEntriesIDs
off_813FBB4: .word reqBBS_requestInfo_textOffsets
off_813FBB8: .word reqBBS_textualShades
dword_813FBBC: .word 0xF
	thumb_func_end reqBBS_813FB24

	thumb_local_start
reqBBS_813FBC0:
	push {lr}
	mov r7, r10
	ldr r7, [r7,#oToolkit_Unk2009740_Ptr]
	ldrb r0, [r7,#6]
	cmp r0, #0x40 
	bge loc_813FBDC
	add r0, #8
	strb r0, [r7,#6]
	lsr r0, r0, #4
	strb r0, [r7,#4]
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	mov r1, #0x1b
	strb r1, [r0,#9]
loc_813FBDC:
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq loc_813FC0E
	bl chatbox_8040818
	bl reqBBS_813FE54
	mov r0, #0x3c 
	strb r0, [r5]
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	mov r1, #0x1b
	strb r1, [r0,#9]
	mov r0, #6
	strb r0, [r5,#8]
	mov r7, r10
	ldr r7, [r7,#oToolkit_Unk2009740_Ptr]
	mov r0, #0xf7
	strb r0, [r7]
	mov r0, #4
	strb r0, [r7,#4]
	mov r0, #0x40 
	strb r0, [r7,#6]
	b loc_813FC1E
loc_813FC0E:
	bl reqBBS_813F8F0
	bl reqBBS_8140588
	bl reqBBS_814030C
	mov r0, #0
	pop {pc}
loc_813FC1E:
	bl reqBBS_813F8F0
	bl reqBBS_813FEB0
	mov r0, #0
	pop {pc}
	.balign 4, 0x00
	.word reqBBS_eRequestEntriesIDs
	thumb_func_end reqBBS_813FBC0

	thumb_local_start
reqBBS_813FC30:
	push {lr}
	mov r7, r10
	ldr r7, [r7,#oToolkit_Unk2009740_Ptr]
	ldrb r0, [r7,#6]
	sub r0, #8
	strb r0, [r7,#6]
	lsr r0, r0, #4
	strb r0, [r7,#4]
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	mov r1, #0x1b
	strb r1, [r0,#9]
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	ldrb r1, [r0,#7]
	add r1, #8
	strb r1, [r0,#7]
	ldrb r1, [r0,#6]
	sub r1, #8
	strb r1, [r0,#6]
	ldrb r0, [r5,#8]
	sub r0, #1
	strb r0, [r5,#8]
	bgt loc_813FC82
	mov r0, #4
	strb r0, [r5]
	bl reqBBS_813FEB0
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	mov r1, #0x3f 
	strb r1, [r0,#9]
	mov r1, #0x3f 
	strb r1, [r0,#0xa]
	mov r1, #0xff
	strb r1, [r0,#3]
	mov r1, #0
	strb r1, [r0,#2]
	mov r1, #0xff
	strb r1, [r0,#7]
	mov r1, #0
	strb r1, [r0,#6]
loc_813FC82:
	bl reqBBS_813F8F0
	mov r0, #0
	pop {pc}
	.balign 4, 0x00
	thumb_func_end reqBBS_813FC30

	thumb_local_start
reqBBS_813FC8C:
	push {lr}
	mov r7, r10
	ldr r7, [r7,#oToolkit_Unk2009740_Ptr]
	ldrb r0, [r7,#6]
	cmp r0, #0x40 
	bge loc_813FCA8
	add r0, #8
	strb r0, [r7,#6]
	lsr r0, r0, #4
	strb r0, [r7,#4]
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	mov r1, #0x1b
	strb r1, [r0,#9]
loc_813FCA8:
	bl reqBBS_81408F0
	tst r0, r0
	beq loc_813FCBE
	mov r1, r0
	ldr r0, off_813FD0C // =reqBBS_eTextScript
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	mov r0, #0x44 
	strb r0, [r5]
	b loc_813FCF0
loc_813FCBE:
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq loc_813FCF0
	bl chatbox_8040818
	bl reqBBS_813FE54
	mov r0, #0x14
	strb r0, [r5]
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	mov r1, #0x1b
	strb r1, [r0,#9]
	mov r0, #6
	strb r0, [r5,#8]
	mov r7, r10
	ldr r7, [r7,#oToolkit_Unk2009740_Ptr]
	mov r0, #0xf7
	strb r0, [r7]
	mov r0, #4
	strb r0, [r7,#4]
	mov r0, #0x40 
	strb r0, [r7,#6]
	b loc_813FD00
loc_813FCF0:
	bl reqBBS_813F8F0
	bl reqBBS_8140588
	bl reqBBS_81402CC
	mov r0, #0
	pop {pc}
loc_813FD00:
	bl reqBBS_813F8F0
	thumb_func_end reqBBS_813FC8C

	bl reqBBS_813FEB0
	mov r0, #0
	pop {pc}
off_813FD0C: .word reqBBS_eTextScript
	.word reqBBS_eRequestEntriesIDs
	thumb_local_start
reqBBS_813FD14:
	push {lr}
	mov r7, r10
	ldr r7, [r7,#oToolkit_Unk2009740_Ptr]
	ldrb r0, [r7,#6]
	cmp r0, #0x40 
	bge loc_813FD30
	add r0, #8
	strb r0, [r7,#6]
	lsr r0, r0, #4
	strb r0, [r7,#4]
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	mov r1, #0x1b
	strb r1, [r0,#9]
loc_813FD30:
	mov r0, #8
	bl chatbox_check_eFlags2009F38
	beq loc_813FD6C
	bl chatbox_8040818
	bl reqBBS_813FE54
	mov r0, #0x14
	strb r0, [r5]
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	mov r1, #0x1b
	strb r1, [r0,#9]
	mov r0, #6
	strb r0, [r5,#8]
	mov r7, r10
	ldr r7, [r7,#oToolkit_Unk2009740_Ptr]
	mov r0, #0xf7
	strb r0, [r7]
	mov r0, #4
	strb r0, [r7,#4]
	mov r0, #0x40 
	strb r0, [r7,#6]
	bl reqBBS_813F8F0
	bl reqBBS_813FEB0
	mov r0, #0
	pop {pc}
loc_813FD6C:
	bl reqBBS_813F8F0
	mov r0, #0
	pop {pc}
off_813FD74: .word 0x1B60
off_813FD78: .word 0x1BA0
off_813FD7C: .word reqBBS_requestEntriesList
off_813FD80: .word reqBBS_numRequestsSent
off_813FD84: .word reqBBS_requestEntriesList
off_813FD88: .word reqBBS_numRequestsSent
off_813FD8C: .word unk_2000770
off_813FD90: .word reqBBS_requestEntriesList
off_813FD94: .word reqBBS_numRequestsSent
off_813FD98: .word unk_2000770
off_813FD9C: .word eChatbox
off_813FDA0: .word eReqBBSGui
off_813FDA4: .word eReqBBSGui
	thumb_func_end reqBBS_813FD14

	thumb_local_start
reqBBS_813FDA8:
	push {r5,lr}
	bl zeroFillVRAM
	bl ZeroFill_byte_3001960
	// initRefs
	ldr r0, off_813FDC8 // =byte_813FDCC 
	bl decompAndCopyData // (u32 *initRefs) -> void
	bl reqBBS_8140600
	bl ZeroFillGFX30025c0
	bl sub_8046664 // () -> void
	pop {r5,pc}
	.balign 4, 0x00
off_813FDC8: .word byte_813FDCC
byte_813FDCC: .byte 0x84, 0xF8, 0x7E, 0x88, 0x0, 0x2, 0x0, 0x6, 0x0, 0x7A, 0x1, 0x2
	.byte 0x28, 0xFC, 0x7E, 0x88, 0x0, 0x0, 0x0, 0x0
	.word unk_2018200
	.byte 0x14, 0xFD, 0x7E, 0x88, 0x0, 0x0, 0x0, 0x0
	.word unk_2018A00
	.byte 0x78, 0xFD, 0x7E, 0x88, 0x0, 0x0, 0x0, 0x0
	.word eTextScript201BA00
	.word byte_87EFBA4
	.word unk_30019C0
	.word 0x20
	.word reqBBS_textualShades
	.byte 0xE0, 0x19, 0x0, 0x3, 0x60, 0x0, 0x0, 0x0
	.word dword_87EF5A4
	.byte 0x0, 0x10, 0x0, 0x6, 0x80, 0x2, 0x0, 0x0
	.word byte_87EF824
	.byte 0x60, 0x19, 0x0, 0x3, 0x60, 0x0, 0x0, 0x0, 0x38, 0x9D, 0x6C
	.byte 0x88, 0x0, 0x0, 0x1, 0x6, 0x0, 0x92, 0x1, 0x2
	.word byte_86C9D6C
	.byte 0xD0, 0x16, 0x0, 0x3, 0x20, 0x0, 0x0, 0x0, 0xD4, 0x9B, 0x6C
	.byte 0x88, 0x0, 0x0, 0x0, 0x0
	.word unk_201AA00
	.word 0x0
	thumb_func_end reqBBS_813FDA8

	thumb_local_start
reqBBS_813FE54:
	push {r4-r7,lr}
	// mem
	ldr r0, off_813FEAC // =reqBBS_eRequestEntriesIDs 
	// byteCount
	mov r1, #0x30 
	// byte
	mov r2, #0x2f 
	bl ByteFill // (u8 *mem, int byteCount, u8 byte) -> void
	ldr r6, [r5,#0x28]
	ldr r0, [r6,#0x1c]
	ldr r0, [r0]
	strh r0, [r5,#0x1e]
	ldr r6, [r6,#0x24]
	ldr r7, off_813FEAC // =reqBBS_eRequestEntriesIDs 
loc_813FE6C:
	sub r0, #1
	blt loc_813FE82
	ldrb r3, [r6,r0]
	strb r3, [r7]
	ldrb r2, [r5]
	tst r2, r2
	bne loc_813FE7E
	bl reqBBS_8140604
loc_813FE7E:
	add r7, #1
	b loc_813FE6C
loc_813FE82:
	mov r0, #0
	ldr r1, [r5,#0x28]
	ldr r1, [r1,#0xc]
	mov r7, #0
	ldrh r6, [r5,#0x1e]
	tst r6, r6
	beq loc_813FEA6
loc_813FE90:
	push {r0,r1}
	add r0, r0, r1
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	pop {r0,r1}
	beq loc_813FEA0
	add r7, #1
loc_813FEA0:
	add r0, #1
	cmp r0, #0x30 
	blt loc_813FE90
loc_813FEA6:
	strb r7, [r5,#5]
	pop {r4-r7,pc}
	.balign 4, 0x00
off_813FEAC: .word reqBBS_eRequestEntriesIDs
	thumb_func_end reqBBS_813FE54

	thumb_local_start
reqBBS_813FEB0:
	push {r4-r7,lr}
	mov r7, r5
	// j
	mov r0, #5
	// i
	mov r1, #3
	// cpyOff
	mov r2, #2
	// tileRefs
	ldr r3, off_813FEE8 // =tileRefs_813EF4C 
	mov r4, #0x17
	mov r5, #0x10
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	ldr r3, [r7,#0x28]
	ldr r3, [r3,#0x28]
	mov r0, #0
	mov r1, #0
	mov r2, #1
	mov r4, #0x1e
	mov r5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	mov r0, #0
	mov r1, #0
	mov r2, #3
	mov r3, #0
	mov r4, #0x1e
	mov r5, #0x14
	bl sub_80018D0
	pop {r4-r7,pc}
off_813FEE8: .word tileRefs_813EF4C
	thumb_func_end reqBBS_813FEB0

	thumb_local_start
reqBBS_renderRequestNames:
	push {r4-r7,lr}
	ldr r1, off_813FF2C // =reqBBS_eRequestEntriesIDs 
	ldr r7, [r5,#0x28]
	ldr r7, [r7]
	add r5, r0, r1
	mov r0, r7
	mov r1, #0
	ldr r2, off_813FF20 // =eDecompBuffer2013A00
	ldr r3, dword_813FF24 // =0x6004000 
	ldr r6, off_813FF28 // =dword_86A5D60 
loc_813FF00:
	push {r0-r3,r5,r6}
	ldrb r1, [r5,r1]
	mov r4, #0x17
	mov r5, #1
	mov r7, #0
	bl renderTextGfx_8045F8C
	pop {r0-r3,r5,r6}
	mov r4, #0x80
	lsl r4, r4, #4
	add r2, r2, r4
	add r3, r3, r4
	add r1, #1
	cmp r1, #8
	blt loc_813FF00
	pop {r4-r7,pc}
off_813FF20: .word eDecompBuffer2013A00
dword_813FF24: .word 0x6004000
off_813FF28: .word dword_86A5D60
off_813FF2C: .word reqBBS_eRequestEntriesIDs
	thumb_func_end reqBBS_renderRequestNames

	thumb_local_start
sub_813FF30:
	push {r4-r7,lr}
	pop {r4-r7,pc}
	.word eTileRefs2018A04
	.byte 0x30, 0x52, 0x31, 0x52, 0x32, 0x52, 0x33, 0x52
	.word byte_813FF48
	.word byte_813FFC8
byte_813FF48: .byte 0x30, 0x52, 0x31, 0x52, 0x30, 0x52, 0x31, 0x52, 0x30
	.byte 0x52, 0x31, 0x52, 0x30, 0x52, 0x31, 0x52, 0x30, 0x52
	.byte 0x31, 0x52, 0x30, 0x52, 0x31, 0x52, 0x30, 0x52, 0x31
	.byte 0x52, 0x30, 0x52, 0x31, 0x52, 0x30, 0x52, 0x31, 0x52
	.byte 0x30, 0x52, 0x31, 0x52, 0x30, 0x52, 0x31, 0x52, 0x30
	.byte 0x52, 0x31, 0x52, 0x30, 0x52, 0x31, 0x52, 0x30, 0x52
	.byte 0x31, 0x52, 0x30, 0x52, 0x31, 0x52, 0x30, 0x52, 0x31
	.byte 0x52, 0x34, 0x52, 0x35, 0x52, 0x34, 0x52, 0x35, 0x52
	.byte 0x34, 0x52, 0x35, 0x52, 0x34, 0x52, 0x35, 0x52, 0x34
	.byte 0x52, 0x35, 0x52, 0x34, 0x52, 0x35, 0x52, 0x34, 0x52
	.byte 0x35, 0x52, 0x34, 0x52, 0x35, 0x52, 0x34, 0x52, 0x35
	.byte 0x52, 0x34, 0x52, 0x35, 0x52, 0x34, 0x52, 0x35, 0x52
	.byte 0x34, 0x52, 0x35, 0x52, 0x34, 0x52, 0x35, 0x52, 0x34
	.byte 0x52, 0x35, 0x52, 0x34, 0x52, 0x35, 0x52, 0x34, 0x52
	.byte 0x35, 0x52
byte_813FFC8: .byte 0x32, 0x52, 0x33, 0x52, 0x32, 0x52, 0x33, 0x52, 0x32
	.byte 0x52, 0x33, 0x52, 0x32, 0x52, 0x33, 0x52, 0x32, 0x52
	.byte 0x33, 0x52, 0x32, 0x52, 0x33, 0x52, 0x32, 0x52, 0x33
	.byte 0x52, 0x32, 0x52, 0x33, 0x52, 0x32, 0x52, 0x33, 0x52
	.byte 0x32, 0x52, 0x33, 0x52, 0x32, 0x52, 0x33, 0x52, 0x32
	.byte 0x52, 0x33, 0x52, 0x32, 0x52, 0x33, 0x52, 0x32, 0x52
	.byte 0x33, 0x52, 0x32, 0x52, 0x33, 0x52, 0x32, 0x52, 0x33
	.byte 0x52, 0x36, 0x52, 0x37, 0x52, 0x36, 0x52, 0x37, 0x52
	.byte 0x36, 0x52, 0x37, 0x52, 0x36, 0x52, 0x37, 0x52, 0x36
	.byte 0x52, 0x37, 0x52, 0x36, 0x52, 0x37, 0x52, 0x36, 0x52
	.byte 0x37, 0x52, 0x36, 0x52, 0x37, 0x52, 0x36, 0x52, 0x37
	.byte 0x52, 0x36, 0x52, 0x37, 0x52, 0x36, 0x52, 0x37, 0x52
	.byte 0x36, 0x52, 0x37, 0x52, 0x36, 0x52, 0x37, 0x52, 0x36
	.byte 0x52, 0x37, 0x52, 0x36, 0x52, 0x37, 0x52, 0x36, 0x52
	.byte 0x37, 0x52, 0x0, 0x3A, 0x2, 0x2
	thumb_func_end sub_813FF30

	thumb_local_start
reqBBS_anim_814004C:
	push {r0-r7,lr}
	ldrh r7, [r5,#0x24]
	mov r6, r10
	ldr r6, [r6,#oToolkit_CurFramePtr]
	ldrh r6, [r6]
	mov r4, #0x1f
	and r4, r6
	lsl r4, r4, #2
	mov r6, #0
loc_814005E:
	ldr r3, [r5,#0x28]
	ldr r3, [r3,#0xc]
	ldr r2, off_81400C0 // =reqBBS_eRequestEntriesIDs 
	add r1, r7, r6
	ldrb r2, [r2,r1]
	add r0, r2, r3
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_814008E
	push {r4-r7}
	// j
	mov r0, #2
	mov r1, #2
	mul r1, r6
	// i
	add r1, #3
	// cpyOff
	mov r2, #2
	ldr r3, off_81400C4 // =pt_81400C8 
	// tileRefs
	ldr r3, [r3,r4]
	mov r4, #2
	mov r5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7}
	b loc_81400A6
loc_814008E:
	push {r4-r7}
	mov r0, #2
	mov r1, #2
	mul r1, r6
	add r1, #3
	mov r2, #2
	mov r3, #0
	mov r4, #2
	mov r5, #2
	bl sub_80018D0
	pop {r4-r7}
loc_81400A6:
	add r6, #1
	cmp r6, #8
	bne loc_814005E
	// j
	mov r0, #0x15
	// i
	mov r1, #0
	// cpyOff
	mov r2, #2
	ldr r3, off_81400C4 // =pt_81400C8 
	// tileRefs
	ldr r3, [r3,r4]
	mov r4, #2
	mov r5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r0-r7,pc}
off_81400C0: .word reqBBS_eRequestEntriesIDs
off_81400C4: .word pt_81400C8
pt_81400C8: .word byte_8140148
	.word byte_8140148
	.word byte_8140148
	.word byte_8140148
	.word byte_8140148
	.word byte_8140148
	.word byte_8140148
	.word byte_8140148
	.word byte_8140148
	.word byte_8140148
	.word byte_8140148
	.word byte_8140148
	.word byte_8140148
	.word byte_8140148
	.word byte_8140148
	.word byte_8140148
	.word byte_8140188
	.word byte_8140188
	.word byte_8140188
	.word byte_8140188
	.word byte_8140188
	.word byte_8140188
	.word byte_8140188
	.word byte_8140188
	.word byte_8140188
	.word byte_8140188
	.word byte_8140188
	.word byte_8140188
	.word byte_8140188
	.word byte_8140188
	.word byte_8140188
	.word byte_8140188
byte_8140148: .byte 0x80, 0x0, 0x81, 0x0, 0x82, 0x0, 0x83, 0x0, 0x81, 0x0, 0x83
	.byte 0x0, 0x82, 0x0, 0x84, 0x0, 0x81, 0x0, 0x83, 0x0, 0x82, 0x0
	.byte 0x84, 0x0, 0x81, 0x0, 0x83, 0x0, 0x82, 0x0, 0x84, 0x0, 0x81
	.byte 0x0, 0x83, 0x0, 0x82, 0x0, 0x84, 0x0, 0x81, 0x0, 0x83, 0x0
	.byte 0x82, 0x0, 0x84, 0x0, 0x81, 0x0, 0x83, 0x0, 0x82, 0x0, 0x84
	.byte 0x0, 0x81, 0x0, 0x83, 0x0, 0x82, 0x0, 0x84, 0x0
byte_8140188: .byte 0x84, 0x0, 0x85, 0x0, 0x86, 0x0, 0x87, 0x0, 0x84, 0x0, 0x85
	.byte 0x0, 0x86, 0x0, 0x87, 0x0, 0x84, 0x0, 0x85, 0x0, 0x86, 0x0
	.byte 0x87, 0x0, 0x84, 0x0, 0x85, 0x0, 0x86, 0x0, 0x87, 0x0, 0x84
	.byte 0x0, 0x85, 0x0, 0x86, 0x0, 0x87, 0x0, 0x84, 0x0, 0x85, 0x0
	.byte 0x86, 0x0, 0x87, 0x0, 0x84, 0x0, 0x85, 0x0, 0x86, 0x0, 0x87
	.byte 0x0, 0x84, 0x0, 0x85, 0x0, 0x86, 0x0, 0x87, 0x0
	thumb_func_end reqBBS_anim_814004C

	thumb_local_start
reqBBS_renderRequestStatus:
	push {r4-r7,lr}
	ldrh r7, [r5,#0x24] // reqBBS_GUI.pagePos
	mov r6, #0
loc_81401CE:
	ldr r3, [r5,#0x28] // reqBBS_GUI.reqBBS_textualPointers
	ldr r3, [r3,#0x14]
	ldr r2, off_8140230 // =reqBBS_eRequestEntriesIDs 
	add r1, r7, r6
	ldrb r2, [r2,r1]
	add r0, r2, r3
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_81401FC
	push {r4-r7}
	// j
	mov r0, #2
	mov r1, #2
	mul r1, r6
	// i
	add r1, #3
	// cpyOff
	mov r2, #2
	// tileRefs
	ldr r3, off_8140234 // =byte_8140238 
	mov r4, #2
	mov r5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7}
	b loc_8140228
loc_81401FC:
	ldr r3, [r5,#0x28]
	ldr r3, [r3,#0x10]
	ldr r2, off_8140230 // =reqBBS_eRequestEntriesIDs 
	add r1, r7, r6
	ldrb r2, [r2,r1]
	add r0, r2, r3
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_8140228
	push {r4-r7}
	// j
	mov r0, #2
	mov r1, #2
	mul r1, r6
	// i
	add r1, #3
	// cpyOff
	mov r2, #2
	// tileRefs
	ldr r3, off_8140240 // =byte_8140244 
	mov r4, #2
	mov r5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7}
loc_8140228:
	add r6, #1
	cmp r6, #8
	bne loc_81401CE
	pop {r4-r7,pc}
off_8140230: .word reqBBS_eRequestEntriesIDs
off_8140234: .word byte_8140238
byte_8140238: .byte 0x8A, 0x0, 0x8B, 0x0, 0x8C, 0x0, 0x8D, 0x0
off_8140240: .word byte_8140244
byte_8140244: .byte 0x8E, 0x0, 0x8F, 0x0, 0x90, 0x0, 0x91, 0x0
	thumb_func_end reqBBS_renderRequestStatus

	thumb_local_start
reqBBS_renderRankStars:
	push {r4-r7,lr}
	ldrh r7, [r5,#0x24] // reqBBS_GUI.pagePos
	mov r6, #0
loc_8140252:
	ldr r3, [r5,#0x28] // reqBBS_GUI.reqBBS_textualPointers
	ldr r3, [r3,#8]
	ldr r2, off_81402BC // =reqBBS_eRequestEntriesIDs 
	add r1, r7, r6
	ldrb r2, [r2,r1]
	add r0, r2, r3
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_81402B4
	push {r4-r7}
	mov r0, #0x16
	mov r1, #2
	mul r1, r6
	add r1, #3
	mov r2, #2
	mov r3, #0
	mov r4, #5
	mov r5, #2
	bl sub_80018D0
	pop {r4-r7}
	ldr r0, off_81402C0 // =byte_813F380 
	ldr r1, off_81402BC // =reqBBS_eRequestEntriesIDs 
	add r2, r7, r6
	ldrb r1, [r1,r2]
	ldrb r0, [r0,r1]
	add r0, #1
	tst r0, r0
	beq loc_81402B4
	mov r1, #0
loc_8140290:
	push {r0,r1}
	push {r4-r7}
	mov r0, #0x1a
	// j
	sub r0, r0, r1
	mov r1, #2
	mul r1, r6
	// i
	add r1, #3
	// cpyOff
	mov r2, #2
	// tileRefs
	ldr r3, off_81402C4 // =dword_81402C8 
	mov r4, #1
	mov r5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7}
	pop {r0,r1}
	add r1, #1
	cmp r1, r0
	bne loc_8140290
loc_81402B4:
	add r6, #1
	cmp r6, #8
	bne loc_8140252
	pop {r4-r7,pc}
off_81402BC: .word reqBBS_eRequestEntriesIDs
off_81402C0: .word byte_813F380
off_81402C4: .word dword_81402C8
dword_81402C8: .word 0x60896088
	thumb_func_end reqBBS_renderRankStars

	thumb_local_start
reqBBS_81402CC:
	push {r4-r7,lr}
	bl reqBBS_81408C8
	ldr r1, off_8140300 // =byte_813F380 
	ldrb r0, [r1,r0]
	add r0, #1
	tst r0, r0
	beq locret_81402FE
	mov r1, #0
loc_81402DE:
	push {r0,r1}
	push {r4-r7}
	mov r0, #0x1a
	// j
	sub r0, r0, r1
	// i
	mov r1, #6
	// cpyOff
	mov r2, #1
	// tileRefs
	ldr r3, off_8140304 // =dword_8140308 
	mov r4, #1
	mov r5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7}
	pop {r0,r1}
	add r1, #1
	cmp r1, r0
	bne loc_81402DE
locret_81402FE:
	pop {r4-r7,pc}
off_8140300: .word byte_813F380
off_8140304: .word dword_8140308
dword_8140308: .word 0x60936092
	thumb_func_end reqBBS_81402CC

	thumb_local_start
reqBBS_814030C:
	push {r4-r7,lr}
	ldr r0, off_8140344 // =eReqBBSGui
	ldr r1, dword_8140348 // =0xf 
	ldrb r0, [r0,r1]
	ldr r1, off_814034C // =byte_813F380 
	ldrb r0, [r1,r0]
	add r0, #1
	tst r0, r0
	beq locret_8140340
	mov r1, #0
loc_8140320:
	push {r0,r1}
	push {r4-r7}
	mov r0, #0x1a
	// j
	sub r0, r0, r1
	// i
	mov r1, #6
	// cpyOff
	mov r2, #1
	// tileRefs
	ldr r3, off_8140350 // =dword_8140354 
	mov r4, #1
	mov r5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7}
	pop {r0,r1}
	add r1, #1
	cmp r1, r0
	bne loc_8140320
locret_8140340:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8140344: .word eReqBBSGui
dword_8140348: .word 0xF
off_814034C: .word byte_813F380
off_8140350: .word dword_8140354
dword_8140354: .word 0x60936092
	thumb_func_end reqBBS_814030C

	thumb_local_start
reqBBS_8140358:
	push {r4-r7,lr}
	mov r8, r0
	mov r7, r10
	ldr r7, [r7,#oToolkit_JoypadPtr]
	ldrh r0, [r7,#oJoypad_Pressed]
	mov r1, #2
	tst r1, r0
	beq loc_814036E
	bl reqBBS_81403A8
	b locret_81403A0
loc_814036E:
	ldrh r1, [r5,#0x1e]
	cmp r1, #0
	beq locret_81403A0
	mov r1, #4
	tst r1, r0
	beq loc_8140380
	bl reqBBS_8140414
	b locret_81403A0
loc_8140380:
	mov r1, #1
	tst r1, r0
	beq loc_814038C
	bl reqBBS_81403C0
	b locret_81403A0
loc_814038C:
	ldrh r0, [r7,#4]
	ldr r1, off_81403A4 // =0x3c0 
	tst r0, r1
	beq locret_81403A0
	mov r1, #8
	mov r2, #0
	mov r3, #0
	bl sub_811F7F8
	strb r7, [r5,#0xb]
locret_81403A0:
	pop {r4-r7,pc}
	.balign 4, 0x00
off_81403A4: .word 0x3C0
	thumb_func_end reqBBS_8140358

	thumb_local_start
reqBBS_81403A8:
	push {lr}
	mov r0, #0xc
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #8
	strb r0, [r5]
	mov r0, #0x68 
	bl sound_play // () -> void
	pop {pc}
	.byte 0, 0
	thumb_func_end reqBBS_81403A8

	thumb_local_start
reqBBS_81403C0:
	push {lr}
	mov r0, #0x18
	strb r0, [r5]
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	mov r1, #0x1b
	strb r1, [r0,#9]
	mov r1, #0x36 
	strb r1, [r0,#0xa]
	mov r1, #0
	strb r1, [r0,#3]
	mov r1, #0xff
	strb r1, [r0,#2]
	mov r1, #0x50 
	strb r1, [r0,#7]
	mov r1, #0x50 
	strb r1, [r0,#6]
	mov r0, #0x67 
	bl sound_play // () -> void
	mov r0, #6
	strb r0, [r5,#8]
	push {r5}
	mov r0, #0
	mov r1, #0
	mov r2, #3
	mov r3, #0
	mov r4, #0x1e
	mov r5, #0x14
	bl sub_80018D0
	pop {r5}
	bl reqBBS_renderSelectedEntry_HeaderText
	mov r7, r10
	ldr r7, [r7,#0x20]
	mov r0, #0xf7
	strb r0, [r7]
	mov r0, #0
	strb r0, [r7,#4]
	strb r0, [r7,#6]
	pop {pc}
	thumb_func_end reqBBS_81403C0

	thumb_local_start
reqBBS_8140414:
	push {lr}
	mov r0, #0x2c 
	strb r0, [r5]
	mov r7, r10
	ldr r0, [r7,#oToolkit_Unk200f3a0_Ptr]
	mov r1, #0x1b
	strb r1, [r0,#9]
	mov r1, #0x36 
	strb r1, [r0,#0xa]
	mov r1, #0
	strb r1, [r0,#3]
	mov r1, #0xff
	strb r1, [r0,#2]
	mov r1, #0x50 
	strb r1, [r0,#7]
	mov r1, #0x50 
	strb r1, [r0,#6]
	mov r0, #0x67 
	bl sound_play // () -> void
	mov r0, #6
	strb r0, [r5,#8]
	push {r5}
	mov r0, #0
	mov r1, #0
	mov r2, #3
	mov r3, #0
	mov r4, #0x1e
	mov r5, #0x14
	bl sub_80018D0
	pop {r5}
	bl reqBBS_changeChatboxHeader
	ldr r0, off_8140488 // =eChatbox
	ldr r2, dword_8140480 // =0xd 
	ldrb r1, [r5,r2]
	ldr r2, off_8140484 // =0x4c 
	str r1, [r0,r2]
	ldr r1, dword_814048C // =0xe 
	ldrb r0, [r5,r1]
	ldr r1, off_8140490 // =byte_8140494 
	ldrb r1, [r1,r0]
	ldr r0, off_8140488 // =eChatbox
	ldr r2, off_814049C // =0x54 
	str r1, [r0,r2]
	mov r7, r10
	ldr r7, [r7,#0x20]
	mov r0, #0xf7
	strb r0, [r7]
	mov r0, #0
	strb r0, [r7,#4]
	strb r0, [r7,#6]
	pop {pc}
dword_8140480: .word 0xD
off_8140484: .word 0x4C
off_8140488: .word eChatbox
dword_814048C: .word 0xE
off_8140490: .word byte_8140494
byte_8140494: .byte 0xA, 0x19, 0x23, 0x4B, 0x4B, 0x0, 0x0, 0x0
off_814049C: .word 0x54
	thumb_func_end reqBBS_8140414

	thumb_local_start
reqBBS_drawChatbox_dup1:
	push {r4-r7,lr}
	// tileRefs
	ldr r3, off_81404B4 // =eTileRefs2018A04 
	// j
	mov r0, #2
	// i
	mov r1, #5
	// cpyOff
	mov r2, #1
	mov r4, #0x1a
	mov r5, #0xa
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7,pc}
off_81404B4: .word eTileRefs2018A04
	thumb_func_end reqBBS_drawChatbox_dup1

	thumb_local_start
reqBBS_drawSelectChatbox:
	push {r4-r7,lr}
	// tileRefs
	ldr r3, off_81404CC // =unk_201BA04 
	// j
	mov r0, #5
	// i
	mov r1, #5
	// cpyOff
	mov r2, #1
	mov r4, #0x14
	mov r5, #0xa
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7,pc}
off_81404CC: .word unk_201BA04
	thumb_func_end reqBBS_drawSelectChatbox

	thumb_local_start
sub_81404D0:
	push {r4-r7,lr}
	mov r0, #3
	mov r1, #5
	mov r3, #0
	mov r2, #1
	mov r4, #0x18
	mov r5, #0xa
	bl sub_80018D0
	pop {r4-r7,pc}
	push {r4-r7,lr}
	pop {r4-r7,pc}
	thumb_func_end sub_81404D0

	thumb_local_start
reqBBS_renderSelectedEntry_HeaderText:
	push {r4-r7,lr}
	ldrh r0, [r5,#0x24] // reqBBS_GUI.pagePos
	ldrh r1, [r5,#0x20] // reqBBS_GUI.cursorPos
	add r0, r0, r1
	ldr r1, off_814050C // =reqBBS_eRequestEntriesIDs 
	ldrb r1, [r1,r0]
	ldr r0, [r5,#0x28] // reqBBS_GUI.reqBBS_textualPointers
	ldr r0, [r0]
	ldr r2, off_8140510 // =byte_201B200
	ldr r3, dword_8140514 // =0x6008400 
	mov r4, #0x17
	mov r5, #1
	ldr r6, off_8140518 // =dword_86A5D60 
	mov r7, #0
	bl renderTextGfx_8045F8C
	pop {r4-r7,pc}
	.balign 4, 0x00
off_814050C: .word reqBBS_eRequestEntriesIDs
off_8140510: .word byte_201B200
dword_8140514: .word 0x6008400
off_8140518: .word dword_86A5D60
	thumb_func_end reqBBS_renderSelectedEntry_HeaderText

	thumb_local_start
reqBBS_setChatboxHeaderBasedOn_0F:
	push {r4-r7,lr}
	ldr r0, off_8140550 // =eReqBBSGui
	ldr r1, dword_814054C // =0xf 
	ldrb r1, [r0,r1]
	ldr r0, [r5,#0x28] // reqBBS_GUI.reqBBS_textualPointers
	ldr r0, [r0]
	ldr r2, off_8140540 // =byte_201B200
	ldr r3, dword_8140544 // =0x6008400 
	mov r4, #0x17
	mov r5, #1
	ldr r6, off_8140548 // =dword_86A5D60 
	mov r7, #0
	bl renderTextGfx_8045F8C
	pop {r4-r7,pc}
	.balign 4, 0x00
	.word reqBBS_eRequestEntriesIDs
off_8140540: .word byte_201B200
dword_8140544: .word 0x6008400
off_8140548: .word dword_86A5D60
dword_814054C: .word 0xF
off_8140550: .word eReqBBSGui
	thumb_func_end reqBBS_setChatboxHeaderBasedOn_0F

	thumb_local_start
reqBBS_changeChatboxHeader:
	push {r4-r7,lr}
	bl reqBBS_getTotalPointsIndex // () -> u8
	mov r1, #8
	add r1, r1, r0
	ldr r0, off_8140574 // =reqBBS_eTextScript
	ldr r2, off_8140578 // =byte_201B200
	ldr r3, dword_814057C // =0x6008400 
	mov r4, #0xc
	mov r5, #1
	ldr r6, off_8140580 // =byte_86ACD60 
	ldr r7, off_8140584 // =unk_201C200 
	bl sub_8045FC6
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8140574: .word reqBBS_eTextScript
off_8140578: .word byte_201B200
dword_814057C: .word 0x6008400
off_8140580: .word byte_86ACD60
off_8140584: .word unk_201C200
	thumb_func_end reqBBS_changeChatboxHeader

	thumb_local_start
reqBBS_8140588:
	push {r4-r7,lr}
	ldr r0, off_81405A0 // =byte_813F22C
	mov r1, #6
	lsl r1, r1, #6
	mov r2, r10
	ldr r2, [r2,#oToolkit_GFX30025c0_Ptr]
	add r1, r1, r2
	mov r2, #0x80
	bl sub_8000AC8
	pop {r4-r7,pc}
	.byte 0, 0
off_81405A0: .word byte_813F22C
	thumb_func_end reqBBS_8140588

	thumb_local_start
reqBBS_81405A4:
	push {r4-r7,lr}
	ldr r0, off_81405BC // =byte_813F2AC 
	mov r1, #6
	lsl r1, r1, #6
	mov r2, r10
	ldr r2, [r2,#oToolkit_GFX30025c0_Ptr]
	add r1, r1, r2
	mov r2, #0x80
	bl sub_8000AC8
	pop {r4-r7,pc}
	.balign 4, 0x00
off_81405BC: .word byte_813F2AC
	thumb_func_end reqBBS_81405A4

	thumb_local_start
reqBBS_81405C0:
	push {r4-r7,lr}
	ldr r0, off_81405D8 // =reqBBS_eTextScript
	mov r1, #0x12
	ldr r2, off_81405DC // =byte_201CA00
	ldr r3, dword_81405E0 // =0x6003c00 
	mov r4, #8
	mov r5, #1
	ldr r6, off_81405E4 // =dword_86B7AE0 
	mov r7, #0
	bl renderTextGfx_8045F8C
	pop {r4-r7,pc}
off_81405D8: .word reqBBS_eTextScript
off_81405DC: .word byte_201CA00
dword_81405E0: .word 0x6003C00
off_81405E4: .word dword_86B7AE0
	thumb_func_end reqBBS_81405C0

	thumb_local_start
reqBBS_81405E8:
	push {r4-r7,lr}
	// j
	mov r0, #0xa
	// i
	mov r1, #0
	// cpyOff
	mov r2, #2
	// tileRefs
	ldr r3, off_81405FC // =byte_813F32C 
	mov r4, #8
	mov r5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r4-r7,pc}
off_81405FC: .word byte_813F32C
	thumb_func_end reqBBS_81405E8

	thumb_local_start
reqBBS_8140600:
	push {r4-r7,lr}
	pop {r4-r7,pc}
	thumb_func_end reqBBS_8140600

	thumb_local_start
reqBBS_8140604:
	push {r0,r4-r7,lr}
	ldrh r6, [r5,#0x1e]
	tst r6, r6
	beq locret_8140634
	mov r0, #0
	ldr r1, off_8140638 // =reqBBS_eRequestEntriesIDs 
	sub r7, r7, r1
	ldr r1, [r5,#0x28]
	ldr r1, [r1,#0xc]
	add r3, r3, r1
	mov r0, r3
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq locret_8140634
	mov r0, r7
	mov r1, #7
	sub r2, r0, r1
	bge loc_814062C
	mov r2, #0
	b loc_814062E
loc_814062C:
	mov r0, r1
loc_814062E:
	strh r0, [r5,#0x20]
	strh r2, [r5,#0x24]
	strh r2, [r5,#0x26]
locret_8140634:
	pop {r0,r4-r7,pc}
	.balign 4, 0x00
off_8140638: .word reqBBS_eRequestEntriesIDs
	thumb_func_end reqBBS_8140604

    thumb_local_start
sub_814063C:
	push {r0-r7,lr}
	ldrh r7, [r5,#0x1e]
	ldrh r6, [r5,#0x20]
	ldrh r4, [r5,#0x24]
	mov r3, r10
	ldr r3, [r3,#4]
	ldrh r0, [r3,#4]
	mov r1, #0x40 
	tst r1, r0
	bne loc_8140658
	mov r1, #0x80
	tst r1, r0
	bne loc_814066C
	b locret_8140686
loc_8140658:
	tst r6, r6
	beq loc_8140662
	sub r6, #1
	strh r6, [r5,#0x20]
	b locret_8140686
loc_8140662:
	tst r4, r4
	beq locret_8140686
	sub r4, #1
	strh r4, [r5,#0x24]
	b locret_8140686
loc_814066C:
	sub r7, #1
	cmp r6, r7
	beq loc_814067C
	cmp r6, #7
	beq loc_814067C
	add r6, #1
	strh r6, [r5,#0x20]
	b locret_8140686
loc_814067C:
	add r3, r4, r6
	cmp r3, r7
	beq locret_8140686
	add r4, #1
	strh r4, [r5,#0x24]
locret_8140686:
	pop {r0-r7,pc}
	thumb_func_end sub_814063C

	thumb_local_start
reqBBS_animateCursor:
	push {r0-r7,lr}
	ldrb r0, [r5,#0x9] // reqBBS_GUI.animationTimer1
	ldr r1, off_81406E0 // =dword_81406E4+2 
	ldrb r0, [r1,r0]
	lsl r0, r0, #7
	ldr r2, off_81406D8 // =unk_201AA04 
	add r0, r0, r2
	ldr r1, dword_81406DC // =0x6017f80 
	mov r2, #0x80
	bl sub_8000AC8
	ldrh r1, [r5,#0x20]
	mov r0, #3
	mov r3, #0x10
	mul r1, r3
	add r1, #0x18
	lsl r0, r0, #0x10
	orr r0, r1
	ldrb r2, [r5,#9]
	ldr r3, off_81406E0 // =dword_81406E4+2 
	add r2, #1
	ldrb r1, [r3,r2]
	cmp r1, #0xff
	bne loc_81406BC
	mov r2, #1
	ldrh r1, [r3]
loc_81406BC:
	strb r2, [r5,#9]
	ldr r2, dword_81406D4 // =0x40000000 
	orr r0, r2
	ldr r1, dword_81406E4 // =0xc3fc 
	mov r2, #0
	lsl r2, r2, #0xa
	orr r1, r2
	mov r2, #0
	mov r3, #3
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	pop {r0-r7,pc}
dword_81406D4: .word 0x40000000
off_81406D8: .word unk_201AA04
dword_81406DC: .word 0x6017F80
off_81406E0: .word dword_81406E4+2
dword_81406E4: .word 0xC3FC
	.word 0x0
	.word 0x1010101, 0x2020101, 0x2020202, 0xFF
	thumb_func_end reqBBS_animateCursor

	thumb_func_start reqBBS_81406FC
reqBBS_81406FC:
	push {r5,lr}
	ldr r0, dword_8140790 // =0x3fffffff 
	ldrh r1, [r5,#0x1e]
	cmp r1, #0x28 
	blt loc_814070C
	mov r1, #0x28 
	mov r2, #0xa
	b loc_814072E
loc_814070C:
	cmp r1, #0x1e
	blt loc_8140716
	mov r1, #0x1e
	mov r2, #0xb
	b loc_814072E
loc_8140716:
	cmp r1, #0x14
	blt loc_8140720
	mov r1, #0x14
	mov r2, #0xc
	b loc_814072E
loc_8140720:
	cmp r1, #0xa
	blt loc_814072A
	mov r1, #0xa
	mov r2, #0xd
	b loc_814072E
loc_814072A:
	mov r1, #0
	mov r2, #0xe
loc_814072E:
	mov r3, #1
	lsl r3, r2
	eor r0, r3
	ldrh r2, [r5,#0x1e]
	mov r3, #1
	sub r2, r2, r1
	mov r1, #9
	sub r1, r1, r2
	lsl r3, r1
	eor r0, r3
	ldrb r1, [r5,#5]
	mov r2, #0
	cmp r1, #0x28 
	blt loc_8140750
	mov r1, #0x28 
	mov r2, #0x19
	b loc_8140772
loc_8140750:
	cmp r1, #0x1e
	blt loc_814075A
	mov r1, #0x1e
	mov r2, #0x1a
	b loc_8140772
loc_814075A:
	cmp r1, #0x14
	blt loc_8140764
	mov r1, #0x14
	mov r2, #0x1b
	b loc_8140772
loc_8140764:
	cmp r1, #0xa
	blt loc_814076E
	mov r1, #0xa
	mov r2, #0x1c
	b loc_8140772
loc_814076E:
	mov r1, #0
	mov r2, #0x1d
loc_8140772:
	mov r3, #1
	lsl r3, r2
	eor r0, r3
	ldrb r2, [r5,#5]
	mov r3, #1
	sub r2, r2, r1
	mov r1, #9
	sub r1, r1, r2
	add r1, #0xf
	lsl r3, r1
	eor r0, r3
	ldr r5, off_8140794 // =eStructArr2008450 
	bl sub_8002FA6
	pop {r5,pc}
dword_8140790: .word 0x3FFFFFFF
off_8140794: .word eStructArr2008450
	thumb_func_end reqBBS_81406FC

// () -> u8
	thumb_func_start reqBBS_getTotalPointsIndex
reqBBS_getTotalPointsIndex:
	push {r4-r7,lr}
	ldr r0, off_81409A4 // =eReqBBSGui
	ldr r1, dword_81407A4 // =0xe 
	ldrb r0, [r0,r1]
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_81407A4: .word 0xE
	thumb_func_end reqBBS_getTotalPointsIndex

	thumb_local_start
reqBBS_81407A8:
	push {r4-r7,lr}
	ldr r1, off_81409A8 // =eReqBBSGui
	ldr r2, dword_81407B4 // =0xe 
	strb r0, [r1,r2]
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_81407B4: .word 0xE
	thumb_func_end reqBBS_81407A8

	thumb_local_start
reqBBS_81407B8:
	push {r4-r7,lr}
	ldr r0, off_81409AC // =eReqBBSGui
	ldr r1, dword_81407C4 // =0xd 
	ldrb r0, [r0,r1]
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_81407C4: .word 0xD
	thumb_func_end reqBBS_81407B8

	thumb_local_start
reqBBS_81407C8:
	push {r4-r7,lr}
	ldr r1, off_81409B0 // =eReqBBSGui
	ldr r2, dword_81407D4 // =0xd 
	strb r0, [r1,r2]
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_81407D4: .word 0xD
	thumb_func_end reqBBS_81407C8

	thumb_func_start reqBBS_81407D8
reqBBS_81407D8:
	push {r4-r7,lr}
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #0x3a 
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_8140814
	ldr r0, off_81409B4 // =eReqBBSGui
	ldr r1, dword_8140820 // =0xf 
	ldrb r0, [r0,r1]
	bl reqBBS_814084C
	tst r0, r0
	beq loc_8140814
	ldr r0, off_81409B8 // =eReqBBSGui
	ldr r1, dword_8140818 // =0xd 
	ldr r2, dword_814081C // =0xe 
	ldrb r1, [r0,r1]
	ldrb r2, [r0,r2]
	ldr r0, off_8140824 // =byte_8140828 
	ldrb r0, [r0,r2]
	tst r0, r0
	beq loc_8140814
	cmp r0, r1
	bgt loc_8140814
	add r2, #1
	ldr r0, off_81409BC // =eReqBBSGui
	ldr r1, dword_814081C // =0xe 
	strb r2, [r0,r1]
	mov r0, #1
	pop {r4-r7,pc}
loc_8140814:
	mov r0, #0
	pop {r4-r7,pc}
dword_8140818: .word 0xD
dword_814081C: .word 0xE
dword_8140820: .word 0xF
off_8140824: .word byte_8140828
byte_8140828: .byte 0xA, 0x19, 0x23, 0x4B, 0x0, 0x0, 0x0, 0x0, 0xF0, 0xB5, 0x5, 0x49
	.byte 0x9, 0x69, 0x40, 0x18, 0x0, 0x1C, 0xEE, 0xF6, 0x95, 0xFC, 0x1, 0xD0
	.byte 0x1, 0x20, 0x0, 0xE0, 0x0, 0x20, 0xF0, 0xBD
	.word reqBBS_textualPointers
	thumb_func_end reqBBS_81407D8

	thumb_local_start
reqBBS_814084C:
	push {r4-r7,lr}
	ldr r1, off_8140864 // =reqBBS_textualPointers 
	ldr r1, [r1,#0x18] // (dword_813F364 - 0x813f34c)
	add r0, r0, r1
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_8140860
	mov r0, #1
	b locret_8140862
loc_8140860:
	mov r0, #0
locret_8140862:
	pop {r4-r7,pc}
off_8140864: .word reqBBS_textualPointers
	thumb_func_end reqBBS_814084C

	thumb_local_start
reqBBS_8140868:
	push {r4-r7,lr}
	ldr r1, off_8140880 // =reqBBS_textualPointers 
	ldr r1, [r1,#0x14] // (byte_813F354+0xc - 0x813f34c)
	add r0, r0, r1
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_814087C
	mov r0, #1
	b locret_814087E
loc_814087C:
	mov r0, #0
locret_814087E:
	pop {r4-r7,pc}
off_8140880: .word reqBBS_textualPointers
	thumb_func_end reqBBS_8140868

	thumb_local_start
reqBBS_8140884:
	push {r4-r7,lr}
	push {r0}
	bl reqBBS_getTotalPointsIndex // () -> u8
	pop {r2}
	ldr r1, off_81409C0 // =byte_813F380 
	ldrb r1, [r1,r2]
	cmp r0, r1
	blt loc_814089A
	mov r0, #0
	b locret_814089C
loc_814089A:
	mov r0, #1
locret_814089C:
	pop {r4-r7,pc}
	.byte 0, 0
	thumb_func_end reqBBS_8140884

	thumb_local_start
reqBBS_81408A0:
	push {r4-r7,lr}
	ldr r1, off_81408B0 // =reqBBS_textualPointers 
	ldr r1, [r1,#0x10] // (byte_813F354+8 - 0x813f34c)
	add r0, r0, r1
	mov r0, r0
	bl SetEventFlag
	pop {r4-r7,pc}
off_81408B0: .word reqBBS_textualPointers
	thumb_func_end reqBBS_81408A0

	thumb_func_start reqBBS_81408B4
reqBBS_81408B4:
	push {r4-r7,lr}
	ldr r1, off_81408C4 // =reqBBS_textualPointers 
	ldr r1, [r1,#24]
	add r0, r0, r1
	mov r0, r0
	bl SetEventFlag
	pop {r4-r7,pc}
off_81408C4: .word reqBBS_textualPointers
	thumb_func_end reqBBS_81408B4

	thumb_local_start
reqBBS_81408C8:
	push {r4-r7,lr}
	ldrh r0, [r5,#0x24]
	ldrh r1, [r5,#0x20]
	add r0, r0, r1
	ldr r1, off_81408D8 // =reqBBS_eRequestEntriesIDs 
	ldrb r0, [r1,r0]
	pop {r4-r7,pc}
	.balign 4, 0x00
off_81408D8: .word reqBBS_eRequestEntriesIDs
	thumb_func_end reqBBS_81408C8

	thumb_local_start
reqBBS_81408DC:
	push {r4-r7,lr}
	bl reqBBS_81408C8
	ldr r1, off_81409C4 // =eReqBBSGui
	ldr r2, dword_81408EC // =0xf 
	strb r0, [r1,r2]
	pop {r4-r7,pc}
	.balign 4, 0x00
dword_81408EC: .word 0xF
	thumb_func_end reqBBS_81408DC

	thumb_local_start
reqBBS_81408F0:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	beq loc_814095E
	mov r0, #0x20 
	bl chatbox_check_eFlags2009F38
	beq loc_814096A
	ldr r0, off_8140970 // =0x110 
	bl chatbox_check_eFlags2009F38
	bne loc_814096A
	bl reqBBS_81408C8
	bl reqBBS_8140868
	tst r0, r0
	bne loc_814095E
	// flag 5 @ 0x2001C88[0x17<<5 + 0x7] (=2001F6F)
	mov r0, #0x17
	mov r1, #0x3a 
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_8140962
	bl reqBBS_81408C8
	bl reqBBS_8140884
	tst r0, r0
	bne loc_8140966
	mov r0, #0x17
	mov r1, #0x1d
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_814095A
	bl getPETNaviSelect // () -> u8
	cmp r0, #0
	bne loc_814095A
	// flag 5 @ 0x2001C88[0x17<<5 + 0x7] (=2001F6F)
	mov r0, #0x17
	mov r1, #0x3a 
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	// flag 3 @ 0x2001C88[0x17<<5 + 0x7] (=2001F6F)
	mov r0, #0x17
	mov r1, #0x3c 
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	bl reqBBS_81408C8
	bl reqBBS_81408A0
	bl reqBBS_81408DC
loc_814095A:
	mov r0, #0xd
	b locret_814096C
loc_814095E:
	mov r0, #0xe
	b locret_814096C
loc_8140962:
	mov r0, #0xf
	b locret_814096C
loc_8140966:
	mov r0, #0x10
	b locret_814096C
loc_814096A:
	mov r0, #0
locret_814096C:
	pop {r4-r7,pc}
	.byte 0, 0
off_8140970: .word 0x110
	thumb_func_end reqBBS_81408F0

	thumb_func_start reqBBS_8140974
reqBBS_8140974:
	push {r4-r7,lr}
	ldr r0, off_81409C8 // =eReqBBSGui
	ldr r1, dword_8140980 // =0xf 
	ldrb r0, [r0,r1]
	pop {r4-r7,pc}
	.byte 0, 0
dword_8140980: .word 0xF
	thumb_func_end reqBBS_8140974

	thumb_func_start reqBBS_8140984
reqBBS_8140984:
	push {r4-r7,lr}
	ldr r0, off_81409CC // =eReqBBSGui
	mov r1, #0
	ldr r2, dword_8140998 // =0xd 
	strb r1, [r0,r2]
	ldr r2, dword_814099C // =0xe 
	strb r1, [r0,r2]
	ldr r2, dword_81409A0 // =0xf 
	strb r1, [r0,r2]
	pop {r4-r7,pc}
dword_8140998: .word 0xD
dword_814099C: .word 0xE
dword_81409A0: .word 0xF
off_81409A4: .word eReqBBSGui
off_81409A8: .word eReqBBSGui
off_81409AC: .word eReqBBSGui
off_81409B0: .word eReqBBSGui
off_81409B4: .word eReqBBSGui
off_81409B8: .word eReqBBSGui
off_81409BC: .word eReqBBSGui
off_81409C0: .word byte_813F380
off_81409C4: .word eReqBBSGui
off_81409C8: .word eReqBBSGui
off_81409CC: .word eReqBBSGui
	thumb_func_end reqBBS_8140984

// (int a1) -> int
	thumb_func_start reqBBS_81409D0
reqBBS_81409D0:
	push {r6,lr}
	mov r6, r0
	bl GetRNG2 // () -> int
	mov r1, #0xff
	and r0, r1
	mov r1, r6
	svc 6
	mov r0, r1
	pop {r6,pc}
	thumb_func_end reqBBS_81409D0

	thumb_func_start reqBBS_81409E4
reqBBS_81409E4:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldr r0, [r0,#oGameState_OverworldPlayerObjectPtr]
	add r0, #0x1c // NPC.scriptArrayOffset
	bl sub_8031A7A
	pop {pc}
	thumb_func_end reqBBS_81409E4

	thumb_func_start reqBBS_81409F4
reqBBS_81409F4:
	push {lr}
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	ldrb r0, [r1,#oGameState_Unk_0e]
	pop {pc}
	.byte 0, 0
	thumb_func_end reqBBS_81409F4

	thumb_func_start reqBBS_setFlag_e17b0f7_8140A00
reqBBS_setFlag_e17b0f7_8140A00:
	// entry 17, byte 0, flag 7
	push {lr}
	// flag 7 @ 0x2001C88[0x17<<5 + 0x0] (=2001F68)
	mov r0, #0x17
	mov r1, #0
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	pop {pc}
	thumb_func_end reqBBS_setFlag_e17b0f7_8140A00

	thumb_func_start reqBBS_clearFlag_8140A0C
reqBBS_clearFlag_8140A0C:
	push {r4,r5,lr}
	// flag 7 @ 0x2001C88[0x17<<5 + 0x0] (=2001F68)
	mov r0, #0x17
	mov r1, #0
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r5, r10
	ldr r5, [r5,#oToolkit_Unk2001c04_Ptr]
	mov r3, #0x14
	ldrh r0, [r5,r3]
	mov r3, #0x12
	strh r0, [r5,r3]
	pop {r4,r5,pc}
	thumb_func_end reqBBS_clearFlag_8140A0C

	thumb_local_start
reqBBS_setFlags_8140A24:
	push {lr}
	mov r0, #0x16
	mov r1, #0x40 
	mov r2, #0x40 
	bl SetEventFlagRangeFromImmediate // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
	mov r0, #0x16
	mov r1, #0xc0
	mov r2, #0x10
	bl SetEventFlagRangeFromImmediate // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
	mov r0, #0
	pop {pc}
	.byte 0, 0
	thumb_func_end reqBBS_setFlags_8140A24

	thumb_local_start
reqBBS_setFlags_8140A40:
	push {lr}
	mov r0, #0x16
	mov r1, #0xf3
	mov r2, #0xd
	bl SetEventFlagRangeFromImmediate // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
	mov r0, #0x16
	mov r1, #0xc0
	mov r2, #0x10
	bl SetEventFlagRangeFromImmediate // (u8 entryIdx, u8 byteFlagIdx, int numEntries) -> void
	mov r0, #0
	pop {pc}
	.balign 4, 0x00
	thumb_func_end reqBBS_setFlags_8140A40

	thumb_func_start reqBBS_RunTextScriptWhoAmI
reqBBS_RunTextScriptWhoAmI:
	push {lr}
	ldr r2, off_8140A6C // =TextScriptWhoAmIPtr
	lsl r0, r0, #2
	ldr r0, [r2,r0]
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	pop {pc}
	.balign 4, 0x00
off_8140A6C: .word TextScriptWhoAmIPtr
TextScriptWhoAmIPtr: .word TextScriptWhoAmI
byte_8140A74: .byte 0x78, 0x96, 0x78, 0x78, 0x78, 0x78, 0xAA, 0x96, 0x96
	.byte 0x96, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xA0, 0x96
	.byte 0x96, 0x96, 0x96, 0x96, 0x96, 0x96
byte_8140A8C: .byte 0x78, 0x96, 0x78, 0x78, 0x78, 0x78, 0xAA, 0x96, 0x96
	.byte 0x96, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xA0, 0x96
	.byte 0x96, 0x96, 0x96, 0x96, 0x96, 0x96
dword_8140AA4: .word 0x0
	.word iPalette3001B60
	.byte 0xC, 0xE, 0xD, 0xFF, 0x9, 0x0, 0x0, 0x80, 0x1, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0
dword_8140ABC: .word 0x0
	.word iPallete3001750
	.byte 0xC, 0xF, 0xC, 0xFF, 0x9, 0x0, 0x0, 0x80, 0x1, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0
dword_8140AD4: .word 0x0
	.word iPalette3001B60
	.byte 0xC, 0xE, 0xD, 0xFF, 0x9, 0x0, 0x0, 0x80, 0x1, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0
dword_8140AEC: .word 0x0
	.word iPallete3001750
	.byte 0xC, 0xF, 0xC, 0xFF, 0x9, 0x0, 0x0, 0x80, 0x1, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.word iPallete3001750
	.byte 0xC, 0xF, 0xC, 0xFF, 0x9, 0x0, 0x0, 0x80, 0x1, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0
dword_8140B1C: .word 0x0
	.word iPalette3001B60
	.byte 0xC, 0xE, 0xD, 0xFF, 0x9, 0x0, 0x0, 0x80, 0x1, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0
dword_8140B34: .word 0x0
	.word iPallete3001750
	.byte 0xC, 0xF, 0xC, 0xFF, 0x9, 0x0, 0x0, 0x80, 0x1, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0
dword_8140B4C: .word 0x0
	.word iPalette3001B60
	.byte 0xC, 0xE, 0xD, 0xFF, 0xC, 0x0, 0x0, 0x80, 0x1, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0
dword_8140B64: .word 0x0
	.word iPallete3001750
	.byte 0xC, 0xF, 0xC, 0xFF, 0xC, 0x0, 0x0, 0x80, 0x1, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0
dword_8140B7C: .word 0x0
	.word iPalette3001B60
	.byte 0xC, 0xE, 0xD, 0xFF, 0x10, 0x0, 0x0, 0x80, 0x1, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0
dword_8140B94: .word 0x0
	.word iPallete3001750
	.byte 0xC, 0xF, 0xC, 0xFF, 0x10, 0x0, 0x0, 0x80, 0x1, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0
byte_8140BAC: .byte 0x4, 0x0, 0x0, 0x0, 0x60, 0x1B, 0x0, 0x3, 0xC, 0xE, 0xD, 0xFF
	.byte 0x80, 0x8, 0x0, 0x80, 0xA, 0x0, 0x0, 0x0
byte_8140BC0: .byte 0xC0, 0x10, 0x0, 0x80, 0x1E, 0x0, 0x0, 0x0, 0x0, 0x19, 0x0, 0x80
	.byte 0x1E, 0x0, 0x0, 0x0, 0x40, 0x21, 0x0, 0x80, 0x1E, 0x0, 0x0, 0x0
	.byte 0x40, 0x19, 0x0, 0x80, 0x1E, 0x0, 0x0, 0x0, 0x0, 0x11, 0x0, 0x80
	.byte 0x1E, 0x0, 0x0, 0x0, 0x2, 0x0, 0x0, 0x0
	.word byte_8140BC0
byte_8140BF0: .byte 0x4, 0x0, 0x0, 0x0, 0x50, 0x17, 0x0, 0x3, 0xC, 0xF, 0xC, 0xFF
	.byte 0x80, 0x8, 0x0, 0x80, 0xA, 0x0, 0x0, 0x0, 0x2, 0x0, 0x0, 0x0
	.word byte_8140BC0
	.byte 0x4, 0x0, 0x0, 0x0, 0x60, 0x1B, 0x0, 0x3, 0xC, 0xE, 0xD, 0xFF
	.byte 0x0, 0x19, 0x0, 0x80, 0xA, 0x0, 0x0, 0x0
byte_8140C20: .byte 0xC0, 0x10, 0x0, 0x80, 0xA, 0x0, 0x0, 0x0, 0x80, 0x8, 0x0, 0x80
	.byte 0xA, 0x0, 0x0, 0x0, 0x40, 0x0, 0x0, 0x80, 0xA, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x80, 0x1, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x4, 0x0, 0x0, 0x0, 0x50, 0x17, 0x0, 0x3, 0xC, 0xF, 0xC, 0xFF
	.byte 0x0, 0x19, 0x0, 0x80, 0xA, 0x0, 0x0, 0x0, 0x2, 0x0, 0x0, 0x0
	.word byte_8140C20
byte_8140C60: .byte 0x0, 0x50, 0x1, 0x0, 0x0, 0x80, 0x1, 0x0
byte_8140C68: .byte 0xEA, 0x0, 0xC0, 0xFF, 0x2E, 0x0, 0xC0, 0xFF, 0x2E, 0x0
	.byte 0x48, 0xFF, 0xEA, 0x0, 0x48, 0xFF, 0xFF, 0x0, 0xFF, 0x0
byte_8140C7C: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xFF
	.byte 0x0, 0xFF, 0x0
byte_8140C90: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xFF
	.byte 0x0, 0xFF, 0x0
byte_8140CA4: .byte 0x44, 0x0, 0xAC, 0x0, 0xC0, 0x0, 0xAC, 0x0, 0xC0, 0x0, 0xAE
	.byte 0xFF, 0x44, 0x0, 0xAE, 0xFF, 0xFF, 0x0, 0xFF, 0x0
byte_8140CB8: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xFF
	.byte 0x0, 0xFF, 0x0
byte_8140CCC: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xFF
	.byte 0x0, 0xFF, 0x0
byte_8140CE0: .byte 0x72, 0x0, 0x8C, 0x0, 0x72, 0x0, 0x4C, 0x1, 0x94, 0xFF, 0x4C
	.byte 0x1, 0x94, 0xFF, 0x8C, 0x0, 0xFF, 0x0, 0xFF, 0x0
byte_8140CF4: .byte 0xD2, 0xFE, 0x8E, 0x0, 0xD2, 0xFE, 0xCA, 0x0, 0x50, 0xFF
	.byte 0xCE, 0x0, 0x50, 0xFF, 0xC, 0x1, 0x14, 0xFF, 0xC, 0x1
	.byte 0x14, 0xFF, 0x8E, 0x0, 0xFF, 0x0, 0xFF, 0x0
byte_8140D10: .byte 0x4C, 0x0, 0x6E, 0xFE, 0x72, 0xFF, 0x6E, 0xFE, 0xFF
	.byte 0x0, 0xFF, 0x0
byte_8140D1C: .byte 0xDC, 0xFF, 0x26, 0xFE, 0xDC, 0xFF, 0x66, 0xFE, 0x7C
	.byte 0x0, 0x66, 0xFE, 0x7C, 0x0, 0xC4, 0xFE, 0x9C, 0xFF
	.byte 0xC4, 0xFE, 0x9C, 0xFF, 0x26, 0xFF, 0x1A, 0x0, 0x26
	.byte 0xFF, 0x9C, 0xFF, 0x26, 0xFF, 0x9C, 0xFF, 0xC4, 0xFE
	.byte 0x7C, 0x0, 0xC4, 0xFE, 0x7C, 0x0, 0x66, 0xFE, 0xDC
	.byte 0xFF, 0x66, 0xFE, 0xDC, 0xFF, 0x26, 0xFE, 0x78, 0x0
	.byte 0x26, 0xFE, 0xFF, 0x0, 0xFF, 0x0
byte_8140D58: .byte 0x1A, 0x0, 0xA6, 0xFF, 0x9A, 0xFF, 0xA6, 0xFF, 0x9A
	.byte 0xFF, 0x24, 0x0, 0x1A, 0x0, 0x24, 0x0, 0xFF, 0x0
	.byte 0xFF, 0x0
byte_8140D6C: .byte 0xFF, 0xFF, 0x0, 0x4, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x0, 0x5, 0x3, 0x2, 0xFF, 0xFF, 0x1, 0x1, 0x0, 0x6
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0x8, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0xF, 0x3, 0x5, 0x2, 0x0
	.byte 0x1, 0x4, 0x0, 0xA, 0x3, 0x6, 0x2, 0x1, 0x1, 0x5
	.byte 0x0, 0xB, 0x3, 0x7, 0x2, 0x2, 0x1, 0x6, 0x0, 0xD
	.byte 0x3, 0x8, 0xFF, 0xFF, 0x1, 0x7, 0xFF, 0xFF, 0x3, 0x9
	.byte 0x2, 0x3, 0x1, 0x8, 0x0, 0xE, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0x0, 0x10, 0x3, 0xB, 0x2, 0x5, 0x1, 0xA
	.byte 0x0, 0x14, 0xFF, 0xFF, 0x2, 0x6, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x3, 0xD, 0xFF, 0xFF, 0x1, 0xC, 0x0, 0x15, 0x3, 0xE
	.byte 0x2, 0x7, 0x1, 0xD, 0x0, 0x16, 0xFF, 0xFF, 0x2, 0x9
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x3, 0x10, 0x2, 0x4, 0x1, 0xF
	.byte 0x0, 0x11, 0xFF, 0xFF, 0x2, 0xA, 0xFF, 0xFF, 0x0, 0x18
	.byte 0x3, 0x12, 0x2, 0x10, 0x1, 0x11, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x3, 0x14, 0xFF, 0xFF
	.byte 0x1, 0x13, 0x0, 0x19, 0x3, 0x15, 0x2, 0xB, 0x1, 0x14
	.byte 0x0, 0x1A, 0x3, 0x16, 0x2, 0xD, 0x1, 0x15, 0x0, 0x1B
	.byte 0xFF, 0xFF, 0x2, 0xE, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x2, 0xF, 0xFF, 0xFF, 0x0, 0x1C, 0x3, 0x19, 0x2, 0x11
	.byte 0x1, 0x18, 0x0, 0x1D, 0xFF, 0xFF, 0x2, 0x14, 0xFF, 0xFF
	.byte 0x0, 0x1E, 0x3, 0x1B, 0x2, 0x15, 0x1, 0x1A, 0x0, 0x1F
	.byte 0xFF, 0xFF, 0x2, 0x16, 0xFF, 0xFF, 0xFF, 0xFF, 0x3, 0x1D
	.byte 0x2, 0x18, 0x1, 0x1C, 0xFF, 0xFF, 0xFF, 0xFF, 0x2, 0x19
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x3, 0x1F, 0x2, 0x1A, 0x1, 0x1E
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x2, 0x1B
byte_8140E6C: .byte 0xFF, 0xFF, 0x0, 0x2, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x0, 0xA, 0x3, 0x2, 0xFF, 0xFF, 0x1, 0x1, 0xFF, 0xFF
	.byte 0x3, 0x3, 0x2, 0x0, 0x1, 0x2, 0x0, 0xE, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0x10, 0x3, 0x5, 0xFF, 0xFF
	.byte 0x1, 0x4, 0x0, 0x12, 0xFF, 0xFF, 0xFF, 0xFF, 0x1, 0x5
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0xC
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x3, 0x9
	.byte 0xFF, 0xFF, 0x1, 0x8, 0x0, 0x1C, 0x3, 0xA, 0xFF, 0xFF
	.byte 0x1, 0x9, 0xFF, 0xFF, 0x3, 0xB, 0x2, 0x1, 0x1, 0xA
	.byte 0x0, 0x1D, 0x3, 0xC, 0xFF, 0xFF, 0x1, 0xB, 0xFF, 0xFF
	.byte 0x3, 0xD, 0xFF, 0xFF, 0x1, 0xC, 0x0, 0x17, 0x3, 0xE
	.byte 0xFF, 0xFF, 0x1, 0xD, 0xFF, 0xFF, 0x3, 0xF, 0x2, 0x3
	.byte 0x1, 0xE, 0x0, 0x18, 0x3, 0x10, 0xFF, 0xFF, 0x1, 0xF
	.byte 0xFF, 0xFF, 0x3, 0x11, 0x2, 0x4, 0x1, 0x10, 0x0, 0x19
	.byte 0x3, 0x12, 0xFF, 0xFF, 0x1, 0x11, 0xFF, 0xFF, 0x3, 0x13
	.byte 0x2, 0x5, 0x1, 0x12, 0x0, 0x1A, 0x3, 0x14, 0xFF, 0xFF
	.byte 0x1, 0x13, 0x0, 0x1B, 0x3, 0x15, 0xFF, 0xFF, 0x1, 0x14
	.byte 0x0, 0x24, 0x3, 0x16, 0xFF, 0xFF, 0x1, 0x15, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0x1E, 0x3, 0x18
	.byte 0x2, 0xD, 0x1, 0x17, 0xFF, 0xFF, 0x3, 0x19, 0x2, 0xF
	.byte 0x1, 0x18, 0xFF, 0xFF, 0x3, 0x1A, 0x2, 0x11, 0x1, 0x19
	.byte 0x0, 0x20, 0x3, 0x1B, 0x2, 0x13, 0x1, 0x1A, 0x0, 0x23
	.byte 0xFF, 0xFF, 0x2, 0x14, 0xFF, 0xFF, 0xFF, 0xFF, 0x3, 0x1D
	.byte 0x2, 0x9, 0x1, 0x1C, 0xFF, 0xFF, 0xFF, 0xFF, 0x2, 0xB
	.byte 0xFF, 0xFF, 0x0, 0x25, 0x3, 0x1F, 0x2, 0x17, 0x1, 0x1E
	.byte 0x0, 0x26, 0x3, 0x20, 0xFF, 0xFF, 0x1, 0x1F, 0x0, 0x27
	.byte 0x3, 0x21, 0x2, 0x1A, 0x1, 0x20, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x3, 0x23, 0xFF, 0xFF
	.byte 0x1, 0x22, 0x0, 0x28, 0x3, 0x24, 0x2, 0x1B, 0x1, 0x23
	.byte 0x0, 0x29, 0xFF, 0xFF, 0x2, 0x15, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0x2, 0x1E, 0xFF, 0xFF, 0xFF, 0xFF, 0x3, 0x27
	.byte 0x2, 0x1F, 0x1, 0x26, 0xFF, 0xFF, 0xFF, 0xFF, 0x2, 0x20
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x3, 0x29, 0x2, 0x23, 0x1, 0x28
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x2, 0x24
byte_8140FBC: .byte 0xFF, 0xFF, 0x0, 0x7, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0x3, 0x2, 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0xA
	.byte 0x3, 0x3, 0xFF, 0xFF, 0x1, 0x2, 0x0, 0xB, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0xC, 0x3, 0x5, 0xFF, 0xFF
	.byte 0x1, 0x4, 0x0, 0xD, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0x3, 0x7, 0xFF, 0xFF, 0x1, 0x6, 0x0, 0xF
	.byte 0xFF, 0xFF, 0xFF, 0x0, 0xFF, 0xFF, 0x0, 0x10, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0x17, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x3, 0xB, 0x2, 0x2, 0x1, 0xA
	.byte 0x0, 0x11, 0x3, 0xC, 0x2, 0x3, 0x1, 0xB, 0x0, 0x13
	.byte 0x3, 0xD, 0x2, 0x4, 0x1, 0xC, 0x0, 0x1B, 0x3, 0xE
	.byte 0x2, 0x5, 0x1, 0xD, 0x0, 0x1C, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0x0, 0x15, 0x3, 0x10, 0x2, 0x7, 0x1, 0xF
	.byte 0x0, 0x16, 0xFF, 0xFF, 0x2, 0x8, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x3, 0x12, 0x2, 0xB, 0x1, 0x11, 0x0, 0x1A, 0x3, 0x13
	.byte 0xFF, 0xFF, 0x1, 0x12, 0xFF, 0xFF, 0xFF, 0xFF, 0x2, 0xC
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x3, 0x15, 0xFF, 0xFF, 0x1, 0x14
	.byte 0xFF, 0xFF, 0x3, 0x16, 0x2, 0xF, 0x1, 0x15, 0x0, 0x1F
	.byte 0x3, 0x17, 0x2, 0x10, 0x1, 0x16, 0x0, 0x21, 0x3, 0x18
	.byte 0x2, 0x9, 0x1, 0x17, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0x0, 0x24, 0x3, 0x1A, 0xFF, 0xFF, 0x1, 0x19
	.byte 0x0, 0x26, 0x3, 0x1B, 0x2, 0x12, 0x1, 0x1A, 0x0, 0x2A
	.byte 0x3, 0x1C, 0x2, 0xD, 0x1, 0x1B, 0x0, 0x2B, 0xFF, 0xFF
	.byte 0x2, 0xE, 0xFF, 0xFF, 0xFF, 0xFF, 0x3, 0x1E, 0xFF, 0xFF
	.byte 0x1, 0x1D, 0x0, 0x2E, 0x3, 0x1F, 0xFF, 0xFF, 0x1, 0x1E
	.byte 0xFF, 0xFF, 0x3, 0x20, 0x2, 0x16, 0x1, 0x1F, 0x0, 0x30
	.byte 0x3, 0x21, 0xFF, 0xFF, 0x1, 0x20, 0xFF, 0xFF, 0x3, 0x22
	.byte 0x2, 0x17, 0x1, 0x21, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0x0, 0x28, 0x3, 0x24, 0xFF, 0xFF, 0x1, 0x23
	.byte 0x0, 0x29, 0xFF, 0xFF, 0x2, 0x19, 0xFF, 0xFF, 0x0, 0x33
	.byte 0x3, 0x26, 0xFF, 0xFF, 0x1, 0x25, 0xFF, 0xFF, 0x3, 0x27
	.byte 0x2, 0x1A, 0x1, 0x26, 0x0, 0x34, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x3, 0x29, 0x2, 0x23, 0x1, 0x28
	.byte 0x0, 0x32, 0xFF, 0xFF, 0x2, 0x24, 0xFF, 0xFF, 0x0, 0x35
	.byte 0x3, 0x2B, 0x2, 0x1B, 0x1, 0x2A, 0x0, 0x46, 0xFF, 0xFF
	.byte 0x2, 0x1C, 0xFF, 0xFF, 0xFF, 0xFF, 0x3, 0x2D, 0xFF, 0xFF
	.byte 0x1, 0x2C, 0x0, 0x3A, 0x3, 0x2E, 0xFF, 0xFF, 0x1, 0x2D
	.byte 0xFF, 0xFF, 0x3, 0x2F, 0x2, 0x1E, 0x1, 0x2E, 0x0, 0x3B
	.byte 0x3, 0x30, 0xFF, 0xFF, 0x1, 0x2F, 0xFF, 0xFF, 0x3, 0x31
	.byte 0x2, 0x20, 0x1, 0x30, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0x0, 0x43, 0x3, 0x33, 0x2, 0x29, 0x1, 0x32
	.byte 0x0, 0x36, 0xFF, 0xFF, 0x2, 0x25, 0xFF, 0xFF, 0x0, 0x38
	.byte 0x3, 0x35, 0x2, 0x27, 0x1, 0x34, 0x0, 0x45, 0xFF, 0xFF
	.byte 0x2, 0x2A, 0xFF, 0xFF, 0xFF, 0xFF, 0x3, 0x37, 0x2, 0x33
	.byte 0x1, 0x36, 0x0, 0x44, 0x3, 0x38, 0xFF, 0xFF, 0x1, 0x37
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x2, 0x34, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x3, 0x3A, 0xFF, 0xFF, 0x1, 0x39, 0xFF, 0xFF, 0x3, 0x3B
	.byte 0x2, 0x2D, 0x1, 0x3A, 0x0, 0x3E, 0x3, 0x3C, 0x2, 0x2F
	.byte 0x1, 0x3B, 0x0, 0x3F, 0x3, 0x3D, 0xFF, 0xFF, 0x1, 0x3C
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0x4B
	.byte 0x3, 0x3F, 0x2, 0x3B, 0x1, 0x3E, 0xFF, 0xFF, 0x3, 0x40
	.byte 0x2, 0x3C, 0x1, 0x3F, 0x0, 0x4C, 0x3, 0x41, 0xFF, 0xFF
	.byte 0x1, 0x40, 0x0, 0x4D, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x2, 0x28, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x3, 0x44, 0x2, 0x32, 0x1, 0x43, 0xFF, 0xFF, 0x3, 0x45
	.byte 0x2, 0x37, 0x1, 0x44, 0x0, 0x48, 0x3, 0x46, 0x2, 0x35
	.byte 0x1, 0x45, 0x0, 0x49, 0x3, 0x47, 0x2, 0x2B, 0x1, 0x46
	.byte 0x0, 0x4A, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x3, 0x49, 0x2, 0x45, 0x1, 0x48, 0xFF, 0xFF, 0x3, 0x4A
	.byte 0x2, 0x46, 0x1, 0x49, 0xFF, 0xFF, 0xFF, 0xFF, 0x2, 0x47
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x3, 0x4C, 0x2, 0x3E, 0x1, 0x4B
	.byte 0xFF, 0xFF, 0x3, 0x4D, 0x2, 0x40, 0x1, 0x4C, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0x2, 0x41
byte_814122C: .byte 0xFF, 0xFF, 0x0, 0x6, 0x3, 0x1, 0xFF, 0xFF, 0x1, 0x0, 0x0, 0x8, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0x9, 0x3, 0x3, 0xFF, 0xFF, 0x1, 0x2
	.byte 0x0, 0x4, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0xF, 0x3, 0x5, 0x2
	.byte 0x3, 0x1, 0x4, 0x0, 0xA, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x3, 0x7, 0x2, 0x0, 0x1, 0x6, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0x3, 0x9, 0x2, 0x1, 0x1, 0x8, 0x0, 0xE, 0xFF, 0xFF
	.byte 0x2, 0x2, 0xFF, 0xFF, 0xFF, 0xFF, 0x3, 0xB, 0x2, 0x5, 0x1, 0xA, 0x0
	.byte 0xC, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x3, 0xD, 0x2, 0xB
	.byte 0x1, 0xC, 0x0, 0x26, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0x10, 0x3
	.byte 0xF, 0x2, 0x9, 0x1, 0xE, 0x0, 0x11, 0xFF, 0xFF, 0x2, 0x4, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x2, 0xE, 0xFF, 0xFF, 0xFF, 0xFF, 0x3, 0x12, 0x2
	.byte 0xF, 0x1, 0x11, 0x0, 0x25, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0x1B
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0x53, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0x0, 0x1C, 0x3, 0x16, 0xFF, 0xFF, 0x1, 0x15, 0x0, 0x1E, 0x3, 0x17
	.byte 0xFF, 0xFF, 0x1, 0x16, 0x0, 0x20, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x0
	.byte 0x21, 0x3, 0x19, 0xFF, 0xFF, 0x1, 0x18, 0x0, 0x1A, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0x0, 0x22, 0x3, 0x1B, 0x2, 0x19, 0x1, 0x1A, 0x0, 0x23, 0xFF
	.byte 0xFF, 0x2, 0x13, 0xFF, 0xFF, 0xFF, 0xFF, 0x3, 0x1D, 0x2, 0x15, 0x1, 0x1C
	.byte 0x0, 0x34, 0x3, 0x1E, 0xFF, 0xFF, 0x1, 0x1D, 0xFF, 0xFF, 0xFF, 0xFF, 0x2
	.byte 0x16, 0xFF, 0xFF, 0x0, 0x27, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0x28
	.byte 0x3, 0x21, 0x2, 0x17, 0x1, 0x20, 0x0, 0x29, 0x3, 0x22, 0x2, 0x18, 0x1
	.byte 0x21, 0xFF, 0xFF, 0xFF, 0xFF, 0x2, 0x1A, 0xFF, 0xFF, 0xFF, 0xFF, 0x3, 0x24
	.byte 0x2, 0x1B, 0x1, 0x23, 0xFF, 0x2C, 0x3, 0x25, 0xFF, 0xFF, 0x1, 0x24, 0xFF
	.byte 0xFF, 0x3, 0x26, 0x2, 0x12, 0x1, 0x25, 0xFF, 0xFF, 0xFF, 0xFF, 0x2, 0xD
	.byte 0xFF, 0xFF, 0x0, 0x39, 0x3, 0x28, 0x2, 0x1F, 0x1, 0x27, 0x0, 0x40, 0xFF
	.byte 0xFF, 0x2, 0x20, 0xFF, 0xFF, 0x0, 0x41, 0x3, 0x2A, 0x2, 0x21, 0x1, 0x29
	.byte 0x0, 0x3A, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0x3B, 0x3, 0x2C, 0xFF
	.byte 0xFF, 0x1, 0x2B, 0xFF, 0xFF, 0x3, 0x2D, 0x2, 0x24, 0x1, 0x2C, 0x0, 0x44
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0x53, 0x3, 0x3C, 0xFF, 0xFF, 0x1
	.byte 0x53, 0x0, 0x46, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0x48, 0x3, 0x31
	.byte 0xFF, 0xFF, 0x1, 0x30, 0x0, 0x49, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x0
	.byte 0x37, 0x3, 0x34, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x1, 0x32, 0xFF, 0xFF, 0x3, 0x35, 0x2, 0x1D, 0x1, 0x34, 0x0, 0x38, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x3, 0x37, 0xFF, 0xFF, 0x1, 0x36
	.byte 0x0, 0x3E, 0xFF, 0xFF, 0x2, 0x32, 0xFF, 0xFF, 0x0, 0x3F, 0x3, 0x39, 0x2
	.byte 0x35, 0x1, 0x38, 0x0, 0x4B, 0xFF, 0xFF, 0x2, 0x27, 0xFF, 0xFF, 0x0, 0x42
	.byte 0x3, 0x3B, 0x2, 0x2A, 0x1, 0x3A, 0x0, 0x43, 0xFF, 0xFF, 0x2, 0x2B, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0x3, 0x3D, 0x2, 0x2E, 0x1, 0x3C, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x3, 0x3F, 0x2, 0x37, 0x1, 0x3E, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0x2, 0x38, 0xFF, 0xFF, 0x0, 0x4C, 0x3, 0x41, 0x2, 0x28
	.byte 0x1, 0x40, 0x0, 0x4E, 0x3, 0x42, 0x2, 0x29, 0x1, 0x41, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0x2, 0x3A, 0xFF, 0xFF, 0xFF, 0xFF, 0x3, 0x44, 0x2, 0x3B, 0x1, 0x43
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x2, 0x2D, 0xFF, 0xFF, 0xFF, 0xFF, 0x3, 0x46, 0xFF
	.byte 0xFF, 0x1, 0x45, 0x0, 0x50, 0xFF, 0xFF, 0x2, 0x2F, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x3, 0x48, 0xFF, 0xFF, 0x1, 0x47, 0x0, 0x51, 0xFF, 0xFF, 0x2, 0x30, 0xFF
	.byte 0xFF, 0x0, 0x52, 0x3, 0x4A, 0x2, 0x31, 0x1, 0x49, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x3, 0x4C, 0x2, 0x39, 0x1, 0x4B, 0x0
	.byte 0x4D, 0xFF, 0xFF, 0x2, 0x40, 0xFF, 0xFF, 0xFF, 0xFF, 0x3, 0x4E, 0x2, 0x4C
	.byte 0x1, 0x4D, 0xFF, 0xFF, 0x3, 0x4F, 0x2, 0x41, 0x1, 0x4E, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x3, 0x51, 0x2, 0x46, 0x1, 0x50
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x2, 0x48, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_81414CC: .byte 0xEA, 0xFE, 0x46, 0x1, 0xEA, 0xFE, 0xC6, 0x0, 0xEA, 0xFE
	.byte 0x46, 0x0, 0xEA, 0xFE, 0x66, 0xFF, 0x6A, 0xFF, 0x46, 0x1
	.byte 0x6A, 0xFF, 0xC6, 0x0, 0x6A, 0xFF, 0x46, 0x0, 0x6A, 0xFF
	.byte 0xC6, 0xFF, 0x6A, 0xFF, 0x66, 0xFF, 0x6A, 0xFF, 0x48, 0xFF
	.byte 0xCA, 0xFF, 0xC6, 0x0, 0xCA, 0xFF, 0x46, 0x0, 0xCA, 0xFF
	.byte 0xFA, 0xFF, 0xCA, 0xFF, 0xC6, 0xFF, 0xCA, 0xFF, 0x48, 0xFF
	.byte 0xEA, 0xFF, 0x46, 0x1, 0xEA, 0xFF, 0xC6, 0x0, 0x2A, 0x0
	.byte 0xC6, 0x0, 0x2A, 0x0, 0xA6, 0x0, 0x2A, 0x0, 0x64, 0x0
	.byte 0x2A, 0x0, 0x46, 0x0, 0x2A, 0x0, 0xC6, 0xFF, 0x2A, 0x0
	.byte 0x48, 0xFF, 0x64, 0x0, 0x46, 0x1, 0x8A, 0x0, 0xC6, 0x0
	.byte 0x8A, 0x0, 0x46, 0x0, 0x8A, 0x0, 0xC6, 0xFF, 0x8A, 0x0
	.byte 0x48, 0xFF, 0xEA, 0x0, 0xC6, 0x0, 0xEA, 0x0, 0x46, 0x0
	.byte 0xEA, 0x0, 0xC6, 0xFF, 0xEA, 0x0, 0x48, 0xFF
byte_814154C: .byte 0xBA, 0xFE, 0x3C, 0x1, 0x42, 0xFF, 0xAE, 0x1, 0x42, 0xFF
	.byte 0x3C, 0x1, 0x42, 0xFF, 0xCE, 0x0, 0x64, 0xFF, 0x6E, 0x0
	.byte 0x64, 0xFF, 0xE, 0x0, 0x64, 0xFF, 0xAC, 0xFF, 0x82, 0xFF
	.byte 0x4C, 0x1, 0xC4, 0xFF, 0x2C, 0x2, 0xC4, 0xFF, 0xCE, 0x1
	.byte 0xC4, 0xFF, 0xAE, 0x1, 0xC4, 0xFF, 0x6E, 0x1, 0xC4, 0xFF
	.byte 0x4C, 0x1, 0xC4, 0xFF, 0x2E, 0x1, 0xC4, 0xFF, 0xCE, 0x0
	.byte 0xC4, 0xFF, 0xAE, 0x0, 0xC4, 0xFF, 0x6E, 0x0, 0xC4, 0xFF
	.byte 0x2E, 0x0, 0xC4, 0xFF, 0xE, 0x0, 0xC4, 0xFF, 0xAC, 0xFF
	.byte 0xC4, 0xFF, 0x2C, 0xFF, 0xC4, 0xFF, 0xAE, 0xFE, 0xC4, 0xFF
	.byte 0x50, 0xFE, 0x2, 0x0, 0x2E, 0x1, 0x2, 0x0, 0xAE, 0x0
	.byte 0x2, 0x0, 0x2E, 0x0, 0x2, 0x0, 0xAC, 0xFF, 0x2, 0x0
	.byte 0x2C, 0xFF, 0x44, 0x0, 0xCE, 0x1, 0x44, 0x0, 0x6E, 0x1
	.byte 0x44, 0x0, 0x2E, 0x1, 0x44, 0x0, 0xAE, 0x0, 0x44, 0x0
	.byte 0xAC, 0xFF, 0x44, 0x0, 0x8C, 0xFF, 0x44, 0x0, 0x4C, 0xFF
	.byte 0x44, 0x0, 0x2C, 0xFF, 0x44, 0x0, 0xAE, 0xFE, 0xC2, 0x0
	.byte 0x2E, 0x1, 0xC2, 0x0, 0xAE, 0x0, 0xC2, 0x0, 0xAC, 0xFF
	.byte 0xC2, 0x0, 0x2C, 0xFF, 0xC2, 0x0, 0xAE, 0xFE
byte_81415F4: .byte 0x94, 0xFE, 0xEE, 0xFF, 0xD2, 0xFE, 0xAE, 0x1, 0xD2
	.byte 0xFE, 0x4E, 0x1, 0xD2, 0xFE, 0xE, 0x1, 0xD2, 0xFE
	.byte 0xCE, 0x0, 0xD2, 0xFE, 0x8E, 0x0, 0x2, 0xFF, 0xE
	.byte 0x0, 0x2, 0xFF, 0xEE, 0xFF, 0x2, 0xFF, 0x58, 0xFF
	.byte 0x2, 0xFF, 0xEC, 0xFE, 0x14, 0xFF, 0x4E, 0x1, 0x14
	.byte 0xFF, 0xE, 0x1, 0x14, 0xFF, 0xCE, 0x0, 0x14, 0xFF
	.byte 0x8E, 0x0, 0x14, 0xFF, 0x4C, 0x0, 0x32, 0xFF, 0xEE
	.byte 0xFF, 0x32, 0xFF, 0x5C, 0xFF, 0x52, 0xFF, 0xE, 0x1
	.byte 0x52, 0xFF, 0xEC, 0x0, 0x52, 0xFF, 0xCE, 0x0, 0x74
	.byte 0xFF, 0x6, 0x0, 0x74, 0xFF, 0xEE, 0xFF, 0x74, 0xFF
	.byte 0x5C, 0xFF, 0x74, 0xFF, 0xEC, 0xFE, 0x74, 0xFF, 0xB2
	.byte 0xFE, 0x94, 0xFF, 0x4E, 0x1, 0x94, 0xFF, 0xEC, 0x0
	.byte 0x94, 0xFF, 0x8E, 0x0, 0x94, 0xFF, 0x4C, 0x0, 0xB2
	.byte 0xFF, 0x6, 0x0, 0xB2, 0xFF, 0xAE, 0xFF, 0xB2, 0xFF
	.byte 0x5C, 0xFF, 0xB2, 0xFF, 0xE, 0xFF, 0xB2, 0xFF, 0xEC
	.byte 0xFE, 0xB2, 0xFF, 0xB2, 0xFE, 0xB2, 0xFF, 0x8E, 0x1
	.byte 0xB2, 0xFF, 0x4E, 0x1, 0xD4, 0xFF, 0xE, 0x1, 0xD4
	.byte 0xFF, 0xEC, 0x0, 0xD4, 0xFF, 0xCE, 0x0, 0xF2, 0xFF
	.byte 0x8E, 0x1, 0xF2, 0xFF, 0x4E, 0x1, 0xF2, 0xFF, 0x8E
	.byte 0x0, 0xF2, 0xFF, 0x4C, 0x0, 0xF2, 0xFF, 0x6, 0x0
	.byte 0xF2, 0xFF, 0xEE, 0xFF, 0xF2, 0xFF, 0xAE, 0xFF, 0xF2
	.byte 0xFF, 0x5C, 0xFF, 0xF2, 0xFF, 0xE, 0xFF, 0xF2, 0xFF
	.byte 0xB2, 0xFE, 0x14, 0x0, 0x4E, 0x1, 0x14, 0x0, 0xE
	.byte 0x1, 0x14, 0x0, 0xCE, 0x0, 0x14, 0x0, 0x8E, 0x0
	.byte 0x32, 0x0, 0xE, 0x1, 0x32, 0x0, 0xEC, 0x0, 0x32
	.byte 0x0, 0xCE, 0x0, 0x32, 0x0, 0xE, 0x0, 0x32, 0x0
	.byte 0xEE, 0xFF, 0x32, 0x0, 0x5C, 0xFF, 0x32, 0x0, 0xE
	.byte 0xFF, 0x32, 0x0, 0xB2, 0xFE, 0x74, 0x0, 0x5C, 0xFF
	.byte 0x74, 0x0, 0xE, 0xFF, 0x74, 0x0, 0xEC, 0xFE, 0x74
	.byte 0x0, 0xB2, 0xFE, 0x4C, 0x0, 0x8E, 0x1, 0x74, 0x0
	.byte 0x4E, 0x1, 0x74, 0x0, 0xEC, 0x0, 0x74, 0x0, 0x8E
	.byte 0x0, 0x74, 0x0, 0x4C, 0x0, 0x74, 0x0, 0xE, 0x0
	.byte 0xB2, 0x0, 0x8E, 0x0, 0xB2, 0x0, 0x4C, 0x0, 0xB2
	.byte 0x0, 0xE, 0x0, 0xB2, 0x0, 0x5C, 0xFF, 0xB2, 0x0
	.byte 0xEC, 0xFE, 0xB2, 0x0, 0xB2, 0xFE
byte_814172C: .byte 0x3C, 0xFE, 0x4, 0x1, 0x3C, 0xFE, 0xA6, 0x0, 0x3C, 0xFE
	.byte 0x64, 0x0, 0x3C, 0xFE, 0xE6, 0xFF, 0x5A, 0xFE, 0xE6, 0xFF
	.byte 0x5A, 0xFE, 0xA4, 0xFF, 0x7A, 0xFE, 0x4, 0x1, 0x7A, 0xFE
	.byte 0xE6, 0x0, 0x7A, 0xFE, 0xA6, 0x0, 0x7A, 0xFE, 0x64, 0x0
	.byte 0x9C, 0xFE, 0xA4, 0xFF, 0x9C, 0xFE, 0x66, 0xFF, 0xBA, 0xFE
	.byte 0x66, 0xFF, 0xBA, 0xFE, 0x44, 0xFF, 0xBA, 0xFE, 0x64, 0x0
	.byte 0xBA, 0xFE, 0xE6, 0xFF, 0xD8, 0xFE, 0x64, 0x0, 0xFA, 0xFE
	.byte 0xE6, 0xFF, 0xFA, 0xFE, 0x84, 0xFF, 0xFC, 0xFE, 0x24, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x1A, 0xFF, 0xA6, 0x1, 0x1A, 0xFF
	.byte 0x64, 0x1, 0x1A, 0xFF, 0xE6, 0x0, 0x1A, 0xFF, 0xA4, 0x0
	.byte 0x1A, 0xFF, 0x64, 0x0, 0x3C, 0xFF, 0x64, 0x0, 0x3C, 0xFF
	.byte 0x24, 0x0, 0x5C, 0xFF, 0xA6, 0x1, 0x5C, 0xFF, 0x84, 0x1
	.byte 0x5C, 0xFF, 0x64, 0x1, 0x5C, 0xFF, 0x26, 0x1, 0x5C, 0xFF
	.byte 0xE6, 0x0, 0x5C, 0xFF, 0xA4, 0x0, 0x5C, 0xFF, 0x64, 0x0
	.byte 0x5C, 0xFF, 0x24, 0x0, 0x5C, 0xFF, 0xE4, 0xFF, 0x5C, 0xFF
	.byte 0x84, 0xFF, 0x5C, 0xFF, 0x44, 0xFF, 0x7E, 0xFF, 0x26, 0x1
	.byte 0x7E, 0xFF, 0xE6, 0x0, 0x9A, 0xFF, 0xA4, 0x0, 0x9A, 0xFF
	.byte 0x64, 0x0, 0x9A, 0xFF, 0x24, 0x0, 0x9A, 0xFF, 0xE4, 0xFF
	.byte 0x9A, 0xFF, 0xA6, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x9A, 0xFF, 0xA6, 0x1, 0x0, 0x0, 0x0, 0x0, 0x9A, 0xFF
	.byte 0x84, 0x1, 0x9A, 0xFF, 0x64, 0x1, 0xBA, 0xFF, 0xC2, 0x1
	.byte 0xBA, 0xFF, 0xA6, 0x1, 0xBA, 0xFF, 0x64, 0x1, 0xBA, 0xFF
	.byte 0x26, 0x1, 0xDA, 0xFF, 0x64, 0x0, 0xDA, 0xFF, 0x24, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xDC, 0xFF
	.byte 0xA6, 0x1, 0xDC, 0xFF, 0x64, 0x1, 0xFA, 0xFF, 0xE6, 0x0
	.byte 0xFA, 0xFF, 0xA4, 0x0, 0xFA, 0xFF, 0x64, 0x0, 0x1A, 0x0
	.byte 0x24, 0x0, 0x1A, 0x0, 0xA6, 0xFF, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x1A, 0x0, 0x26, 0x1, 0x1A, 0x0, 0xE6, 0x0, 0x3C, 0x0
	.byte 0xE6, 0x0, 0x3C, 0x0, 0xA4, 0x0, 0x3C, 0x0, 0x64, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end reqBBS_RunTextScriptWhoAmI

/*For debugging purposes, connect comment at any range!*/
