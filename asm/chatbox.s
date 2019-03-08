	.include "asm/chatbox.inc"

// () -> int
	thumb_func_start chatbox_uncompBasedOnMap_803FD08
chatbox_uncompBasedOnMap_803FD08:
	push {r4-r7,lr}
	mov r0, #0
	bl chatbox_map_8040730
	// dest
	ldr r1, off_803FD30 // =byte_202DA00
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	bl chatbox_map_8040794
	// dest
	ldr r1, off_803FD34 // =unk_2033400
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	bl chatbox_map_80407C8
	// dest
	ldr r1, off_803FD38 // =byte_202FA00
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	mov r0, #0
	pop {r4-r7,pc}
	.balign 4, 0x00
off_803FD30: .word byte_202DA00
off_803FD34: .word unk_2033400
off_803FD38: .word byte_202FA00
	thumb_func_end chatbox_uncompBasedOnMap_803FD08

	thumb_func_start chatbox_uncomp_803FD3C
chatbox_uncomp_803FD3C:
	push {r4-r7,lr}
	mov r0, #1
	bl chatbox_map_8040730
	// dest
	ldr r1, off_803FD50 // =unk_2034A00
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	mov r0, #0
	pop {r4-r7,pc}
	.byte 0, 0
off_803FD50: .word unk_2034A00
	thumb_func_end chatbox_uncomp_803FD3C

	thumb_local_start
chatbox_uncomp_803FD54:
	push {r4-r7,lr}
	bl chatbox_map_8040794
	// dest
	ldr r1, off_803FD64 // =unk_2033400
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	mov r0, #0
	pop {r4-r7,pc}
off_803FD64: .word unk_2033400
	thumb_func_end chatbox_uncomp_803FD54

// (u8 scriptID) -> void
	thumb_func_start chatbox_runScript_202da04
chatbox_runScript_202da04:
	push {r4,r5,lr}
	mov r1, r0
	ldr r0, off_803FD74 // =eTextScript202DA04
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	pop {r4,r5,pc}
off_803FD74: .word eTextScript202DA04
	thumb_func_end chatbox_runScript_202da04

// (void *textScript, u8 scriptIdx) -> void
	thumb_func_start chatbox_runScript_803FD78
chatbox_runScript_803FD78:
	push {r4,r5,lr}
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	// src
	ldr r0, off_803FD90 // =byte_803FD94
	mov r1, r10
	ldr r1, [r1,#oToolkit_ChatboxPtr]
	// dest
	add r1, #0x68 // ChatBoxPropreties.unk_68
	// halfwordCount
	mov r2, #8
	bl CopyHalfwords // (u16 *src, u16 *dest, int halfwordCount) -> void
	pop {r4,r5,pc}
	.byte 0, 0
off_803FD90: .word byte_803FD94
byte_803FD94: .byte 0x7E, 0x0, 0x83, 0x0, 0x7F, 0x0, 0x81, 0x0
	thumb_func_end chatbox_runScript_803FD78

// (void *textScript, u8 scriptIdx) -> void
	thumb_func_start chatbox_runScript_803FD9C
chatbox_runScript_803FD9C:
	push {r4,r5,lr}
	mov r4, #0
	b loc_803FDA8
	.balign 4, 0x00
	thumb_func_end chatbox_runScript_803FD9C

	thumb_func_start chatbox_runScript_803FDA4
chatbox_runScript_803FDA4:
	push {r4,r5,lr}
	mov r4, #1
loc_803FDA8:
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	ldr r0, off_803FDEC // =byte_86BFBA0
	ldr r1, dword_803FDF0 // =0x600dc80
	ldr r2, off_803FDF4 // =0x280
	bl sub_8000AC8
	cmp r4, #1
	beq loc_803FDC6
	ldr r0, off_803FDFC // =byte_86BFE20
	ldr r1, off_803FE00 // =unk_3001B40
	mov r2, #0x20
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
	b loc_803FDD0
loc_803FDC6:
	ldr r0, off_803FE04 // =byte_86BFE40
	ldr r1, off_803FE00 // =unk_3001B40
	mov r2, #0x20
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
loc_803FDD0:
	// src
	ldr r0, off_803FDE0 // =byte_803FDE4
	mov r1, r10
	ldr r1, [r1,#oToolkit_ChatboxPtr]
	// dest
	add r1, #0x68
	// halfwordCount
	mov r2, #8
	bl CopyHalfwords // (u16 *src, u16 *dest, int halfwordCount) -> void
	pop {r4,r5,pc}
off_803FDE0: .word byte_803FDE4
byte_803FDE4: .byte 0x7E, 0x0, 0x83, 0x0, 0x7F, 0x0, 0x81, 0x0
off_803FDEC: .word byte_86BFBA0
dword_803FDF0: .word 0x600DC80
off_803FDF4: .word 0x280
	.word 0x380
off_803FDFC: .word byte_86BFE20
off_803FE00: .word unk_3001B40
off_803FE04: .word byte_86BFE40
    thumb_func_end chatbox_runScript_803FDA4

// (void *textScript, u8 scriptIdx) -> void
	thumb_func_start chatbox_runScript_803FE08
chatbox_runScript_803FE08:
	push {r4,r5,lr}
	mov r4, #0
	b loc_803FE14
	.byte 0, 0
	thumb_func_end chatbox_runScript_803FE08

	thumb_func_start chatbox_runScript_803FE10
chatbox_runScript_803FE10:
	push {r4,r5,lr}
	mov r4, #1
loc_803FE14:
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	ldr r0, off_803FE58 // =byte_86C05E0
	ldr r1, dword_803FE5C // =0x600dc80
	ldr r2, off_803FE60 // =0x320
	bl sub_8000AC8
	cmp r4, #1
	beq loc_803FE32
	ldr r0, off_803FE68 // =byte_86C0900
	ldr r1, off_803FE6C // =unk_3001B40
	mov r2, #0x20
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
	b loc_803FE3C
loc_803FE32:
	ldr r0, off_803FE70 // =byte_86C0920
	ldr r1, off_803FE6C // =unk_3001B40
	mov r2, #0x20
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
loc_803FE3C:
	// src
	ldr r0, off_803FE4C // =byte_803FE50
	mov r1, r10
	ldr r1, [r1,#oToolkit_ChatboxPtr]
	// dest
	add r1, #0x68
	// halfwordCount
	mov r2, #8
	bl CopyHalfwords // (u16 *src, u16 *dest, int halfwordCount) -> void
	pop {r4,r5,pc}
off_803FE4C: .word byte_803FE50
byte_803FE50: .byte 0x7E, 0x0, 0x83, 0x0, 0x7F, 0x0, 0x81, 0x0
off_803FE58: .word byte_86C05E0
dword_803FE5C: .word 0x600DC80
off_803FE60: .word 0x320
	.word 0x380
off_803FE68: .word byte_86C0900
off_803FE6C: .word unk_3001B40
off_803FE70: .word byte_86C0920
	thumb_func_end chatbox_runScript_803FE10

// (u16 *scriptList, u8 scriptOffIdx) -> void
	thumb_func_start chatbox_runScript_803FE74
chatbox_runScript_803FE74:
	push {r4,r5,lr}
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	ldr r0, off_803FE9C // =spriteWhiteDot
	ldr r1, dword_803FEA0 // =0x600dc80
	ldr r2, off_803FEA4 // =0x6f8
	bl sub_8000AC8
	ldr r0, off_803FEAC // =spriteWhiteDot
	ldr r1, off_803FEB0 // =unk_3001B40
	mov r2, #0x20
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
	pop {r4,r5,pc}
off_803FE90: .word byte_803FE94
byte_803FE94: .byte 0x7E, 0x0, 0x83, 0x0, 0x7F, 0x0, 0x81, 0x0
off_803FE9C: .word spriteWhiteDot
dword_803FEA0: .word 0x600DC80
off_803FEA4: .word 0x6F8
	.word 0x380
off_803FEAC: .word spriteWhiteDot
off_803FEB0: .word unk_3001B40
	thumb_func_end chatbox_runScript_803FE74

	thumb_func_start chatbox_onUpdate
chatbox_onUpdate:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_ChatboxPtr]
	ldrb r0, [r5]
	tst r0, r0
	bne loc_803FEC2
	pop {r4-r7,pc}
loc_803FEC2:
	ldr r0, off_803FF28 // =0x338
	bl chatbox_clear_eFlags2009F38 // (int a1) ->
	mov r0, #0x40
	bl chatbox_check_eFlags2009F38
	bne loc_803FEE2
	mov r7, r10
	ldr r7, [r7,#oToolkit_JoypadPtr]
	ldrh r1, [r7]
	strh r1, [r5,#oChatbox_JoypadHeld]
	ldrh r1, [r7,#0x2] // Joystick.IQR
	strh r1, [r5,#oChatbox_JoypadUp]
	ldrh r1, [r7,#0x4] // Joystick.keyPress
	strh r1, [r5,#0x24] // ChatBoxPropreties.keyPress
	b loc_803FEEA
loc_803FEE2:
	mov r0, #0
	strh r0, [r5,#oChatbox_JoypadHeld]
	strh r0, [r5,#oChatbox_JoypadUp]
	strh r0, [r5,#0x24] // ChatBoxPropreties.keyPress
loc_803FEEA:
	mov r0, #FLAGS_3E_UNK_0001
	bl chatbox_maskFlags_3e // (int mask) -> void
	bne loc_803FF04
	ldr r1, [r5,#0x78] // ChatBoxPropreties.unk_78
	cmp r1, #0
	beq loc_803FEFE
	sub r1, #1
	str r1, [r5,#0x78] // ChatBoxPropreties.unk_78
	b loc_803FF04
loc_803FEFE:
	bl chatbox_8040154
	b loc_803FF08
loc_803FF04:
	mov r0, #1
	strb r0, [r5,#0x11] // ChatBoxPropreties.bxoff_11
loc_803FF08:
	ldr r0, off_803FF2C // =jt_803FF30
	ldrb r1, [r5,#0x11] // ChatBoxPropreties.bxoff_11
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	ldr r0, off_803FF38 // =off_803FF3C
	ldr r1, [r0]
	ldrh r1, [r5,r1]
	tst r1, r1
	beq locret_803FF26
	push {r0-r5}
	bl chatbox_8040CD0
	pop {r0-r5}
locret_803FF26:
	pop {r4-r7,pc}
off_803FF28: .word 0x338
off_803FF2C: .word jt_803FF30
jt_803FF30: .word chatbox_interpreteAndDrawDialogChar_1+1
	.word chatbox_interpreteAndDrawDialogChar+1
off_803FF38: .word off_803FF3C
off_803FF3C: .word 0x1D4
	.byte 0xD6, 0x1, 0x0, 0x0, 0xD8, 0x1, 0x0, 0x0, 0xE8, 0x1, 0x0, 0x0, 0xEC
	.byte 0x1, 0x0, 0x0
	thumb_func_end chatbox_onUpdate

// () ->
	thumb_local_start
chatbox_interpreteAndDrawDialogChar:
	push {lr}
	mov r0, #1
	strb r0, [r5,#0x11] // ChatBoxPropreties.bxoff_11
loc_803FF56:
	ldr r4, [r5,#0x2c] // ChatBoxPropreties.pScriptCursor
	ldrb r1, [r4]
	cmp r1, #0xe5
	bmi loc_803FF7C
	mov r0, #0
	ldrb r2, [r5,#0x9] // ChatBoxPropreties.bNumCharacterTyped
	cmp r2, #0
	bgt loc_803FFCC
	sub r1, #0xe5
	lsl r1, r1, #2
	ldr r2, off_8040020 // =TextScriptBytecodeJumptable
	ldr r1, [r2,r1]
	mov lr, pc
	bx r1
	cmp r0, #2
	beq loc_803FF7A
	bl chatbox_8040C9C
loc_803FF7A:
	b loc_803FFD0
loc_803FF7C:
	mov r0, #FLAGS_3E_UNK_0001
	bl chatbox_clearFlags_3e // (int mask) -> void
	mov r0, #0
	ldrb r2, [r5,#9]
	cmp r2, #0
	bgt loc_803FFCC
	ldrb r2, [r5,#0x8] // ChatBoxPropreties.typingSpeed
	strb r2, [r5,#0x9] // ChatBoxPropreties.bNumCharacterTyped
	mov r0, #FLAGS_3E_UNK_0040
	bl chatbox_maskFlags_3e // (int mask) -> void

	bne loc_803FF9E
	mov r2, #0x68 // ChatBoxPropreties.unk_68
	ldrh r0, [r5,r2]
	bl sound_play // () -> void
loc_803FF9E:
	cmp r1, #0xe4
	beq loc_803FFB4
	ldr r6, [r5,#0x7c] // ChatBoxPropreties.unk_7C
	ldr r3, off_8040038 // =sub_3006F8C+1
	mov lr, pc
	bx r3
	add r4, #1
	bl chatbox_8040C44
	mov r0, #1
	b loc_803FFD0
loc_803FFB4:
	ldrb r1, [r4,#1]
	add r1, #0xe4
	mov r0, #0
	ldr r6, [r5,#0x7c] // ChatBoxPropreties.unk_7C
	ldr r3, off_8040038 // =sub_3006F8C+1
	mov lr, pc
	bx r3
	add r4, #2
	bl chatbox_8040C44
	mov r0, #1
	b loc_803FFD0
loc_803FFCC:
	sub r2, #1
	strb r2, [r5,#9]
loc_803FFD0:
	str r4, [r5,#0x2c] // ChatBoxPropreties.pScriptCursor
	tst r0, r0
	bne loc_803FF56
	ldr r0, off_8040030 // =FLAGS_3E_HIDE_CHATBOX
	bl chatbox_maskFlags_3e // (int mask) -> void

	bne loc_803FFE2
	bl chatbox_copyTiles_8040344
loc_803FFE2:
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	beq loc_8040016
	ldr r0, off_8040030 // =FLAGS_3E_HIDE_CHATBOX
	bl chatbox_maskFlags_3e // (int mask) -> void

	bne loc_803FFF8
	ldrb r0, [r5,#0x10]
	cmp r0, #3
	bne loc_8040016
loc_803FFF8:
	ldrb r0, [r5,#0xf]
	mov r2, #0x3d // ChatBoxPropreties.unk_3D
	ldrb r1, [r5,r2]
	cmp r1, #2
	beq loc_8040012
	tst r0, r0
	beq loc_8040008
	ldrb r0, [r5,#2]
loc_8040008:
	ldr r1, off_8040034 // =sub_30070B4+1
	mov lr, pc
	bx r1
	ldrb r0, [r5,#0xf]
	strb r0, [r5,#2]
loc_8040012:
	bl chatbox_804021C
loc_8040016:
	bl chatbox_8040B8C
	bl chatbox_804082C
	pop {pc}
off_8040020: .word TextScriptBytecodeJumptable
	.word byte_8040028
byte_8040028: .byte 0x0, 0xB, 0x4D, 0x25, 0x44, 0x0, 0x0, 0x0
off_8040030: .word FLAGS_3E_HIDE_CHATBOX
off_8040034: .word sub_30070B4+1
off_8040038: .word sub_3006F8C+1
	.word byte_8040040
byte_8040040: .byte 0x0, 0xB, 0x4D, 0x25, 0x44, 0x2A, 0x0, 0x0
	.word byte_8043CA4
	.word 0x800
	.word 0x138
	.word 0x1F4
	.word 0x1F5
	thumb_func_end chatbox_interpreteAndDrawDialogChar

	thumb_local_start
chatbox_interpreteAndDrawDialogChar_1:
	push {r4-r7,lr}
	mov r0, #0
	strb r0, [r5,#0x11]
	str r0, [r5,#0x74]
	mov r0, #1
	mov r1, #0x3d
	strb r0, [r5,r1]
	ldrb r0, [r5,#0xf]
	strb r0, [r5,#2]
	ldr r4, [r5,#0x2c]
loc_8040070:
	ldrb r1, [r4]
	cmp r1, #0xe5
	bmi loc_8040088
	sub r1, #0xe5
	lsl r1, r1, #2
	ldr r2, off_8040120 // =TextScriptBytecodeJumptable
	ldr r1, [r2,r1]
	mov lr, pc
	bx r1
	bl chatbox_8040C9C
loc_8040086:
	b loc_80400B8
loc_8040088:
	// mask
	ldr r0, Flags804014C // =FLAGS_3E_UNK_0800 | FLAGS_3E_UNK_0040
	bl chatbox_setflags_3e // (int mask) -> void
	cmp r1, #0xe4
	beq loc_80400A4
	mov r0, #0
	ldr r6, [r5,#oChatbox_Unk_7C]
	ldr r3, off_8040138 // =sub_3006F8C+1
	mov lr, pc
	bx r3
	bl chatbox_8040C9C
	add r4, #1
	b loc_80400B8
loc_80400A4:
	ldrb r1, [r4,#1]
	add r1, #0xe4
	mov r0, #0
	ldr r6, [r5,#0x7c]
	ldr r3, off_8040138 // =sub_3006F8C+1
	mov lr, pc
	bx r3
	bl chatbox_8040C9C
	add r4, #2
loc_80400B8:
	str r4, [r5,#0x2c]
	ldrh r2, [r5,#0x3e]
	mov r3, #1
	and r2, r3
	ldr r3, [r5,#0x74]
	orr r3, r2
	cmp r3, #0
	beq loc_8040070
	ldrb r3, [r5,#0x11]
	add r3, r3, r2
	cmp r3, #0
	beq loc_8040070
	mov r0, #FLAGS_3E_UNK_0040
	bl chatbox_clearFlags_3e // (int mask) -> void
	ldr r0, Flags8040130 // =FLAGS_3E_HIDE_CHATBOX
	bl chatbox_maskFlags_3e // (int mask) -> void
	bne loc_80400E2
	bl chatbox_copyTiles_8040344
loc_80400E2:
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	beq loc_8040112
	ldr r0, Flags8040130 // =FLAGS_3E_HIDE_CHATBOX
	bl chatbox_maskFlags_3e // (int mask) -> void
	bne loc_80400F8
	ldrb r0, [r5,#0x10]
	cmp r0, #3
	bne loc_8040112
loc_80400F8:
	ldrb r0, [r5,#2]
	ldr r1, off_8040134 // =sub_30070B4+1
	mov lr, pc
	bx r1
	ldrb r0, [r5,#0xf]
	ldrb r1, [r5,#2]
	add r1, #1
	cmp r0, r1
	blt loc_804010E
	strb r1, [r5,#2]
	b loc_80400F8
loc_804010E:
	bl chatbox_804021C
loc_8040112:
	bl chatbox_8040B8C
	bl chatbox_804082C
	mov r0, #1
	strb r0, [r5,#0x11]
	pop {r4-r7,pc}
off_8040120: .word TextScriptBytecodeJumptable
	.word byte_8040128
byte_8040128: .byte 0x0, 0xB, 0x4D, 0x25, 0x44, 0x0, 0x0, 0x0
Flags8040130: .word FLAGS_3E_HIDE_CHATBOX
off_8040134: .word sub_30070B4+1
off_8040138: .word sub_3006F8C+1
	.word byte_8040140
byte_8040140: .byte 0x0, 0xB, 0x4D, 0x25, 0x44, 0x2A, 0x0, 0x0
	.word byte_8043CA4
Flags804014C: .word FLAGS_3E_UNK_0800 | FLAGS_3E_UNK_0040
    .word 0x138
	thumb_func_end chatbox_interpreteAndDrawDialogChar_1

	thumb_local_start
chatbox_8040154:
	push {lr}
	mov r2, #2
	ldrh r1, [r5,#oChatbox_JoypadHeld]
	tst r2, r1
	bne loc_804016E
	mov r2, #1
	ldrh r1, [r5,#oChatbox_JoypadUp]
	tst r2, r1
	bne loc_804016E
	ldrb r1, [r5,#oChatbox_TextScriptPrintSpeed]
	tst r1, r1
	beq loc_804016E
	b locret_8040174
loc_804016E:
	mov r0, #0
	strb r0, [r5,#oChatbox_JumpTableOffset_11]
	pop {pc}
locret_8040174:
	pop {pc}
	mov r0, #1
	strb r0, [r5,#oChatbox_JumpTableOffset_11]
	pop {pc}
	thumb_func_end chatbox_8040154

	thumb_local_start
chatbox_804017C:
	push {r4,r6,r7,lr}
	mov r1, r12
	push {r1}
	mov r1, r9
	push {r1}
	mov r1, r8
	push {r1}
	mov r1, r10
	push {r1}
	ldrb r0, [r5,#0x18]
	mov r10, r0
	ldrb r0, [r5,#0x19]
	mov r8, r0
	ldr r6, dword_80401F8 // =0xe2b8
	mov r12, r6
	ldr r6, off_80401FC // =byte_8040200
	mov r9, r6
	ldr r4, off_804020C // =byte_8040210
	mov r7, #0x8 // (dword_8040208 - 0x8040200)
loc_80401A2:
	mov r0, #5
loc_80401A4:
	push {r0}
	mov r3, r0
	mov r1, #0x20
	mul r1, r3
	mov r2, r10
	add r1, r1, r2
	mov r0, r9
	ldr r0, [r0,r7]
	lsl r1, r1, #0x10
	orr r0, r1
	lsl r2, r7, #2
	mov r1, r8
	add r1, r1, r2
	orr r0, r1
	mov r6, r4
	ldr r6, [r6,r7]
	mov r1, r12
	mov r2, #6
	mul r2, r7
	lsl r2, r2, #1
	lsl r3, r6
	add r2, r2, r3
	add r1, r1, r2
	mov r2, #0
	mov r3, #3
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	pop {r0}
	sub r0, #1
	bge loc_80401A4
	sub r7, #4
	bge loc_80401A2
	pop {r1}
	mov r10, r1
	pop {r1}
	mov r8, r1
	pop {r1}
	mov r9, r1
	pop {r1}
	mov r12, r1
	pop {r4,r6,r7,pc}
	.balign 4, 0x00
dword_80401F8: .word 0xE2B8
off_80401FC: .word byte_8040200
byte_8040200: .byte 0x0, 0x40, 0x0, 0x80, 0x0, 0x40, 0x0, 0x80
dword_8040208: .word 0x40004000
off_804020C: .word byte_8040210
byte_8040210: .byte 0x3, 0x0, 0x0, 0x0, 0x3, 0x0, 0x0, 0x0, 0x2, 0x0, 0x0, 0x0
	thumb_func_end chatbox_804017C

	thumb_local_start
chatbox_804021C:
	push {r4,r6,r7,lr}
	mov r1, r12
	push {r1}
	mov r1, r9
	push {r1}
	mov r1, r8
	push {r1}
	mov r1, r10
	push {r1}
	ldrb r0, [r5,#0x18] // ChatBoxPropreties.textCoord
	mov r10, r0
	ldrb r0, [r5,#0x19] // ChatBoxPropreties.unk_19
	mov r9, r0
	ldr r0, dword_804030C // =0xe2b8
	mov r12, r0
	ldr r0, off_8040310 // =byte_8040314
	mov r8, r0
	mov r7, #0
loc_8040240:
	mov r6, #0
loc_8040242:
	push {r6}
	mov r0, #0x20
	mul r0, r6
	mov r1, r10
	add r0, r0, r1
	mov r1, r8
	lsl r7, r7, #2
	ldr r1, [r1,r7]
	lsr r7, r7, #2
	lsl r0, r0, #0x10
	orr r0, r1
	ldr r1, off_804033C // =dword_8040340
	ldrb r1, [r1,r7]
	mov r2, r9
	add r1, r1, r2
	orr r0, r1
	mov r1, r12
	ldr r2, off_8040320 // =byte_8040324
	mov r3, #8
	mul r3, r7
	add r3, r3, r6
	ldrb r4, [r2,r3]
	add r1, r1, r4
	mov r2, #0
	mov r3, #3
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	pop {r6}
	add r6, #1
	push {r6}
	mov r0, #0x20
	mul r0, r6
	mov r1, r10
	add r0, r0, r1
	mov r1, r8
	lsl r7, r7, #2
	ldr r1, [r1,r7]
	lsr r7, r7, #2
	lsl r0, r0, #0x10
	orr r0, r1
	ldr r1, off_804033C // =dword_8040340
	ldrb r1, [r1,r7]
	mov r2, r9
	add r1, r1, r2
	orr r0, r1
	mov r1, r12
	ldr r2, off_8040320 // =byte_8040324
	mov r3, #8
	mul r3, r7
	add r3, r3, r6
	ldrb r4, [r2,r3]
	add r1, r1, r4
	mov r2, #0
	mov r3, #3
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	pop {r6}
	add r6, #1
	push {r6}
	mov r0, #0x20
	mul r0, r6
	mov r1, r10
	add r0, r0, r1
	mov r1, r8
	lsl r7, r7, #2
	ldr r1, [r1,r7]
	lsr r7, r7, #2
	lsl r0, r0, #0x10
	orr r0, r1
	ldr r1, off_804033C // =dword_8040340
	ldrb r1, [r1,r7]
	mov r2, r9
	add r1, r1, r2
	orr r0, r1
	mov r1, r12
	ldr r2, off_8040320 // =byte_8040324
	mov r3, #8
	mul r3, r7
	add r3, r3, r6
	ldrb r4, [r2,r3]
	add r1, r1, r4
	mov r2, #0
	mov r3, #3
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	pop {r6}
	add r6, #1
	cmp r6, #6
	bne loc_8040242
	add r7, #1
	cmp r7, #3
	bne loc_8040240
	pop {r1}
	mov r10, r1
	pop {r1}
	mov r8, r1
	pop {r1}
	mov r9, r1
	pop {r1}
	mov r12, r1
	pop {r4,r6,r7,pc}
dword_804030C: .word 0xE2B8
off_8040310: .word byte_8040314
byte_8040314: .byte 0x0, 0x40, 0x0, 0x80, 0x0, 0x40, 0x0, 0x80, 0x0, 0x40, 0x0, 0x40
off_8040320: .word byte_8040324
byte_8040324: .byte 0x0, 0x8, 0x10, 0x18, 0x20, 0x28, 0x0, 0x0, 0x30, 0x38, 0x40
	.byte 0x48, 0x50, 0x58, 0x0, 0x0, 0x60, 0x64, 0x68, 0x6C, 0x70, 0x74
	.byte 0x0
byte_804033B: .byte 0x0
off_804033C: .word dword_8040340
dword_8040340: .word 0x201000
	thumb_func_end chatbox_804021C

	thumb_local_start
chatbox_copyTiles_8040344:
	push {lr}
	ldr r3, off_804036C // =spritePtrArr8045CEC
	ldr r4, dword_8040370 // =0x1d2
	ldrb r4, [r5,r4]
	lsl r4, r4, #5
	ldrb r1, [r5,#0x10] // ChatBoxPropreties.chatboxOpenState
	lsl r1, r1, #2
	add r4, r4, r1
	// tileRefs
	ldr r3, [r3,r4]
	push {r5}
	// j
	ldrb r0, [r5,#0x1c] // ChatBoxPropreties.unk_1C
	// i
	ldrb r1, [r5,#0x1d] // ChatBoxPropreties.unk_1D
	// cpyOff
	mov r2, #0
	ldrb r4, [r5,#0x1e] // ChatBoxPropreties.unk_1E
	ldrb r5, [r5,#0x1f] // ChatBoxPropreties.unk_1F
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {r5}
	pop {pc}
	.balign 4, 0x00
off_804036C: .word spritePtrArr8045CEC
dword_8040370: .word 0x1D2
	thumb_func_end chatbox_copyTiles_8040344

// (u8 scriptOffIdx) -> void
	thumb_func_start chatbox_runTrainScript
chatbox_runTrainScript:
	push {r4,r5,lr}
	mov r1, r0
	ldr r0, off_8040380 // =eTextScript2034A04
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	pop {r4,r5,pc}
off_8040380: .word eTextScript2034A04
	thumb_func_end chatbox_runTrainScript

// (void *scripts, u8 scriptOffIdx) -> void
	thumb_func_start chatbox_runScript
chatbox_runScript:
	push {r4-r6,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_ChatboxPtr]
	ldr r2, [r5,#0x4c] // ChatBoxPropreties.unk_4C
	ldr r3, [r5,#0x50] // ChatBoxPropreties.unk_50
	ldr r4, [r5,#0x54] // ChatBoxPropreties.unk_54
	ldr r6, [r5,#0x58] // ChatBoxPropreties.unk_58
	push {r0-r3}
	mov r0, r10
	// memBlock
	ldr r0, [r0,#oToolkit_ChatboxPtr]
	// size
	ldr r1, off_80404A4 // =0x230
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	pop {r0-r3}
	str r2, [r5,#0x4c] // ChatBoxPropreties.unk_4C
	str r3, [r5,#0x50] // ChatBoxPropreties.unk_50
	str r4, [r5,#0x54] // ChatBoxPropreties.unk_54
	str r6, [r5,#0x58] // ChatBoxPropreties.unk_58
	// u16* scriptArr;
	str r0, [r5,#0x30] // ChatBoxPropreties.pScriptArray
	// u8 scriptID;
	strb r1, [r5,#oChatbox_TextScriptIdx]
	mov r2, #0x9c // ChatBoxPropreties.chatPageState+0x98
	strb r1, [r5,r2]
	lsl r1, r1, #1
	// scriptOff
	ldrh r1, [r0,r1]
	add r0, r0, r1
	str r0, [r5,#0x2c] // ChatBoxPropreties.pScriptCursor
	str r0, [r5,#0x34] // ChatBoxPropreties.pCurrScript
	mov r0, #1
	strb r0, [r5]
	mov r0, #2
	strb r0, [r5,#8]
	ldr r0, off_804048C // =unk_200B2B0
	str r0, [r5,#0x38] // ChatBoxPropreties.unk_38
	mov r0, #1
	strb r0, [r5,#oChatbox_BoxYX]
	mov r0, #1
	str r0, [r5,#oChatbox_Unk_74]
	strb r0, [r5,#0x11] // ChatBoxPropreties.bxoff_11
	mov r0, #4
	str r0, [r5,#0x78] // ChatBoxPropreties.unk_78
	// src
	ldr r0, off_8040490 // =byte_8040494
	mov r1, r5
	// dest
	add r1, #0x68
	// halfwordCount
	mov r2, #8
	bl CopyHalfwords // (u16 *src, u16 *dest, int halfwordCount) -> void
	mov r1, #0xc
	strb r1, [r5,#0x1d] // ChatBoxPropreties.unk_1D
	mov r2, #0x1e
	strb r2, [r5,#0x1e] // ChatBoxPropreties.unk_1E
	mov r3, #8
	strb r3, [r5,#0x1f] // ChatBoxPropreties.unk_1F
	mov r0, #0xe2
	strb r0, [r5,#0x1a] // ChatBoxPropreties.csrCoord
	mov r1, #0x8d
	strb r1, [r5,#0x1b] // ChatBoxPropreties.unk_1B
	mov r0, #0x33
	strb r0, [r5,#0x18] // ChatBoxPropreties.textCoord
	mov r0, #0x6c
	strb r0, [r5,#0x19] // ChatBoxPropreties.unk_19
	mov r0, #0x19
	mov r1, #0x84 // ChatBoxPropreties.unk_84
	str r0, [r5,r1]
	mov r0, #0x80
	mov r1, #0x88 // ChatBoxPropreties.unk_88
	str r0, [r5,r1]
	mov r0, #2
	ldr r1, off_80404A8 // =0x1f0
	strb r0, [r5,r1]
	ldr r1, off_80404B4 // =0x1f1
	strb r0, [r5,r1]
	mov r0, #0
	ldr r1, dword_80404AC // =0x1f2
	strb r0, [r5,r1]
	ldr r1, dword_80404B0 // =0x1f3
	strb r0, [r5,r1]
	mov r0, #3
	ldr r1, off_80404B8 // =0x1f4
	strb r0, [r5,r1]
	ldr r1, off_80404BC // =0x1f5
	strb r0, [r5,r1]
	mov r0, #0
	ldr r1, off_80404A0 // =eFlags2009F38
	str r0, [r1]
	mov r0, #0x80
	bl chatbox_set_eFlags2009F38
	bl chatbox_8045F60
	// mask
	ldr r0, Flags8040494 // =FLAGS_3E_HIDE_CHATBOX
	bl chatbox_setflags_3e // (int mask) -> void
	ldrb r0, [r5,#oChatbox_TextScriptCharIdx]
	mov r1, r5
	add r1, #0x94
	strb r0, [r1]
	mov r0, #0xd
	mov r2, #oChatbox_Unk_90
	str r0, [r5,r2]
	ldr r0, off_804046C // =dword_86BEB20
	ldr r1, dword_8040470 // =0x600dc80
	ldr r2, off_8040474 // =0x160
	bl sub_8000AC8
	ldr r0, off_804047C // =byte_86BEC80
	ldr r1, off_8040480 // =unk_3001B40
	mov r2, #0x20
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
	ldr r0, off_8040484 // =dword_86B7AC0
	ldr r1, off_8040488 // =byte_3001710
	mov r2, #0x20
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
	pop {r4-r6,pc}
	.balign 4, 0x00
off_804046C: .word dword_86BEB20
dword_8040470: .word 0x600DC80
off_8040474: .word 0x160
	.word 0x380
off_804047C: .word byte_86BEC80
off_8040480: .word unk_3001B40
off_8040484: .word dword_86B7AC0
off_8040488: .word byte_3001710
off_804048C: .word unk_200B2B0
off_8040490: .word byte_8040494
byte_8040494: .byte 0x65, 0x0, 0x68, 0x0, 0x66, 0x0, 0x67, 0x0
Flags8040494: .word FLAGS_3E_HIDE_CHATBOX
off_80404A0: .word eFlags2009F38
off_80404A4: .word 0x230
off_80404A8: .word 0x1F0
dword_80404AC: .word 0x1F2
dword_80404B0: .word 0x1F3
off_80404B4: .word 0x1F1
off_80404B8: .word 0x1F4
off_80404BC: .word 0x1F5
	thumb_func_end chatbox_runScript

	thumb_func_start chatbox_reqBBS_80404C0
chatbox_reqBBS_80404C0:
	push {r4-r6,lr}
	push {r2}
	mov r5, r10
	ldr r5, [r5,#oToolkit_ChatboxPtr]
	ldr r2, [r5,#0x4c] // ChatBoxPropreties.unk_4C
	ldr r3, [r5,#0x50] // ChatBoxPropreties.unk_50
	ldr r4, [r5,#0x54] // ChatBoxPropreties.unk_54
	ldr r6, [r5,#0x58] // ChatBoxPropreties.unk_58
	push {r0-r3}
	mov r0, r10
	// memBlock
	ldr r0, [r0,#oToolkit_ChatboxPtr]
	// size
	ldr r1, off_80405DC // =0x230
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	pop {r0-r3}
	str r2, [r5,#0x4c] // ChatBoxPropreties.unk_4C
	str r3, [r5,#0x50] // ChatBoxPropreties.unk_50
	str r4, [r5,#0x54] // ChatBoxPropreties.unk_54
	str r6, [r5,#0x58] // ChatBoxPropreties.unk_58
	str r0, [r5,#0x30] // ChatBoxPropreties.pScriptArray
	strb r1, [r5,#1]
	mov r2, #0x9c
	strb r1, [r5,r2]
	lsl r1, r1, #1
	ldrh r1, [r0,r1]
	add r0, r0, r1
	str r0, [r5,#0x2c] // ChatBoxPropreties.pScriptCursor
	str r0, [r5,#0x34] // ChatBoxPropreties.pCurrScript
	mov r0, #1
	strb r0, [r5]
	mov r0, #2
	strb r0, [r5,#8]
	ldr r0, off_80405C4 // =unk_200B2B0
	str r0, [r5,#0x38] // ChatBoxPropreties.unk_38
	mov r0, #1
	strb r0, [r5,#0xc]
	mov r0, #1
	str r0, [r5,#oChatbox_Unk_74]
	strb r0, [r5,#0x11] // ChatBoxPropreties.bxoff_11
	mov r0, #4
	str r0, [r5,#0x78] // ChatBoxPropreties.unk_78
	// src
	ldr r0, off_80405C8 // =byte_80405CC
	mov r1, r5
	// dest
	add r1, #0x68
	// halfwordCount
	mov r2, #8
	bl CopyHalfwords // (u16 *src, u16 *dest, int halfwordCount) -> void
	mov r1, #0xc
	strb r1, [r5,#0x1d] // ChatBoxPropreties.unk_1D
	mov r2, #0x1e
	strb r2, [r5,#0x1e] // ChatBoxPropreties.unk_1E
	mov r3, #8
	strb r3, [r5,#0x1f] // ChatBoxPropreties.unk_1F
	mov r0, #0xe2
	strb r0, [r5,#0x1a] // ChatBoxPropreties.csrCoord
	mov r1, #0x8d
	strb r1, [r5,#0x1b] // ChatBoxPropreties.unk_1B
	mov r0, #0x33
	strb r0, [r5,#0x18] // ChatBoxPropreties.textCoord
	mov r0, #0x6c
	strb r0, [r5,#0x19] // ChatBoxPropreties.unk_19
	mov r0, #0x19
	mov r1, #0x84 // ChatBoxPropreties.unk_84
	str r0, [r5,r1]
	mov r0, #0x80
	mov r1, #0x88 // ChatBoxPropreties.unk_88
	str r0, [r5,r1]
	mov r0, #2
	ldr r1, off_80405E0 // =0x1f0
	strb r0, [r5,r1]
	ldr r1, off_80405EC // =0x1f1
	strb r0, [r5,r1]
	mov r0, #0
	ldr r1, dword_80405E4 // =0x1f2
	strb r0, [r5,r1]
	ldr r1, dword_80405E8 // =0x1f3
	strb r0, [r5,r1]
	mov r0, #3
	ldr r1, off_80405F0 // =0x1f4
	strb r0, [r5,r1]
	ldr r1, off_80405F4 // =0x1f5
	strb r0, [r5,r1]
	mov r0, #0
	ldr r1, off_80405D8 // =eFlags2009F38
	str r0, [r1]
	mov r0, #0x80
	bl chatbox_set_eFlags2009F38
	bl chatbox_8045F60
	// mask
	ldr r0, Flags80405D4 // =FLAGS_3E_HIDE_CHATBOX
	bl chatbox_setflags_3e // (int mask) -> void
	ldrb r0, [r5,#oChatbox_TextScriptCharIdx]
	mov r1, r5
	add r1, #0x94
	strb r0, [r1]
	mov r0, #0xd
	mov r2, #oChatbox_Unk_90
	str r0, [r5,r2]
	ldr r0, off_80405A8 // =dword_86BEB20
	ldr r1, dword_80405AC // =0x600dc80
	ldr r2, off_80405B0 // =0x160
	bl sub_8000AC8
	ldr r0, off_80405B4 // =byte_86BEC80
	ldr r1, off_80405B8 // =unk_3001B40
	mov r2, #0x20
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
	pop {r0}
	ldr r1, off_80405C0 // =byte_3001710
	mov r2, #0x20
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
	pop {r4-r6,pc}
off_80405A8: .word dword_86BEB20
dword_80405AC: .word 0x600DC80
off_80405B0: .word 0x160
off_80405B4: .word byte_86BEC80
off_80405B8: .word unk_3001B40
	.word dword_86B7AC0
off_80405C0: .word byte_3001710
off_80405C4: .word unk_200B2B0
off_80405C8: .word byte_80405CC
byte_80405CC: .byte 0x65, 0x0, 0x68, 0x0, 0x66, 0x0, 0x67, 0x0
Flags80405D4: .word FLAGS_3E_HIDE_CHATBOX
off_80405D8: .word eFlags2009F38
off_80405DC: .word 0x230
off_80405E0: .word 0x1F0
dword_80405E4: .word 0x1F2
dword_80405E8: .word 0x1F3
off_80405EC: .word 0x1F1
off_80405F0: .word 0x1F4
off_80405F4: .word 0x1F5
	thumb_func_end chatbox_reqBBS_80404C0

	thumb_local_start
dead_80405F8:
	push {r4-r6,lr}
	push {r2-r4}
	mov r5, r10
	ldr r5, [r5,#oToolkit_ChatboxPtr]
	ldr r2, [r5,#0x4c]
	ldr r3, [r5,#0x50]
	ldr r4, [r5,#0x54]
	ldr r6, [r5,#0x58]
	push {r0-r3}
	mov r0, r10
	// memBlock
	ldr r0, [r0,#oToolkit_ChatboxPtr]
	// size
	ldr r1, off_8040714 // =0x230
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	pop {r0-r3}
	str r2, [r5,#0x4c]
	str r3, [r5,#0x50]
	str r4, [r5,#0x54]
	str r6, [r5,#0x58]
	str r0, [r5,#0x30]
	strb r1, [r5,#1]
	mov r2, #0x9c
	strb r1, [r5,r2]
	lsl r1, r1, #1
	ldrh r1, [r0,r1]
	add r0, r0, r1
	str r0, [r5,#0x2c]
	str r0, [r5,#0x34]
	mov r0, #1
	strb r0, [r5]
	mov r0, #2
	strb r0, [r5,#8]
	ldr r0, off_80406FC // =unk_200B2B0
	str r0, [r5,#0x38]
	mov r0, #1
	strb r0, [r5,#0xc]
	mov r0, #1
	str r0, [r5,#0x74]
	strb r0, [r5,#0x11]
	mov r0, #4
	str r0, [r5,#0x78]
	// src
	ldr r0, off_8040700 // =byte_8040704
	mov r1, r5
	// dest
	add r1, #0x68
	// halfwordCount
	mov r2, #8
	bl CopyHalfwords // (u16 *src, u16 *dest, int halfwordCount) -> void
	mov r1, #0xc
	strb r1, [r5,#0x1d]
	mov r2, #0x1e
	strb r2, [r5,#0x1e]
	mov r3, #8
	strb r3, [r5,#0x1f]
	mov r0, #0xe2
	strb r0, [r5,#0x1a]
	mov r1, #0x8d
	strb r1, [r5,#0x1b]
	mov r0, #0x33
	strb r0, [r5,#0x18]
	mov r0, #0x6c
	strb r0, [r5,#0x19]
	mov r0, #0x19
	mov r1, #0x84
	str r0, [r5,r1]
	mov r0, #0x80
	mov r1, #0x88
	str r0, [r5,r1]
	mov r0, #2
	ldr r1, off_8040718 // =0x1f0
	strb r0, [r5,r1]
	ldr r1, off_8040724 // =0x1f1
	strb r0, [r5,r1]
	mov r0, #0
	ldr r1, dword_804071C // =0x1f2
	strb r0, [r5,r1]
	ldr r1, dword_8040720 // =0x1f3
	strb r0, [r5,r1]
	mov r0, #3
	ldr r1, off_8040728 // =0x1f4
	strb r0, [r5,r1]
	ldr r1, off_804072C // =0x1f5
	strb r0, [r5,r1]
	mov r0, #0
	ldr r1, off_8040710 // =eFlags2009F38
	str r0, [r1]
	mov r0, #0x80
	bl chatbox_set_eFlags2009F38
	bl chatbox_8045F60
	// mask
	ldr r0, Flags804070C // =FLAGS_3E_HIDE_CHATBOX
	bl chatbox_setflags_3e // (int mask) -> void
	ldrb r0, [r5,#0x18]
	mov r1, r5
	add r1, #0x94
	strb r0, [r1]
	mov r0, #0xd
	mov r2, #oChatbox_Unk_90
	str r0, [r5,r2]
	pop {r0,r2}
	ldr r1, byte_80406E4 // =0x80
	bl sub_8000AC8
	pop {r0}
	ldr r1, off_80406F0 // =unk_3001B40
	mov r2, #0x20
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
	ldr r0, off_80406F4 // =dword_86B7AC0
	ldr r1, off_80406F8 // =byte_3001710
	mov r2, #0x20
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
	pop {r4-r6,pc}
	.byte 0, 0
	.word dword_86BEB20
byte_80406E4: .byte 0x80, 0xDC, 0x0, 0x6, 0x60, 0x1, 0x0, 0x0
	.word byte_86BEC80
off_80406F0: .word unk_3001B40
off_80406F4: .word dword_86B7AC0
off_80406F8: .word byte_3001710
off_80406FC: .word unk_200B2B0
off_8040700: .word byte_8040704
byte_8040704: .byte 0x65, 0x0, 0x68, 0x0, 0x66, 0x0, 0x67, 0x0
Flags804070C: .word FLAGS_3E_HIDE_CHATBOX
off_8040710: .word eFlags2009F38
off_8040714: .word 0x230
off_8040718: .word 0x1F0
dword_804071C: .word 0x1F2
dword_8040720: .word 0x1F3
off_8040724: .word 0x1F1
off_8040728: .word 0x1F4
off_804072C: .word 0x1F5
	thumb_func_end dead_80405F8

	thumb_local_start
chatbox_map_8040730:
	push {r4-r7,lr}
	mov r4, r0
	mov r2, r10
	ldr r2, [r2,#oToolkit_GameStatePtr]
	ldrb r0, [r2,#oGameState_MapGroup]
	ldrb r1, [r2,#oGameState_MapNumber]
	mov r2, r10
	ldr r2, [r2,#oToolkit_GameStatePtr]
	ldrb r2, [r2,#oGameState_Unk_08]
	mov r6, #0
	cmp r0, #0x80
	bmi loc_804074C
	mov r6, #4
	sub r0, #0x80
loc_804074C:
	ldr r5, off_804076C // =off_8040770
	lsl r4, r4, #3
	add r5, r5, r4
	ldr r3, [r5,r6]
	lsl r0, r0, #2
	add r3, r3, r0
	ldr r3, [r3]
	tst r4, r4
	bne loc_8040764
	lsl r1, r1, #2
	add r3, r3, r1
	ldr r3, [r3]
loc_8040764:
	lsl r2, r2, #2
	add r3, r3, r2
	ldr r0, [r3]
	pop {r4-r7,pc}
off_804076C: .word off_8040770
off_8040770: .word off_8044470
	.word off_80444C4
	.word off_80444A8
	.word off_804457C
	.word byte_8040784
byte_8040784: .byte 0x60, 0x3, 0x50, 0x2, 0x40, 0x2, 0x30, 0x1, 0x20, 0x1, 0x10
	.byte 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end chatbox_map_8040730

	thumb_local_start
chatbox_map_8040794:
	push {r4-r7,lr}
	mov r2, r10
	ldr r2, [r2,#oToolkit_GameStatePtr]
	ldrb r0, [r2,#oGameState_MapGroup]
	ldrb r1, [r2,#oGameState_MapNumber]
	ldrb r2, [r2,#oGameState_GameProgress]
	mov r6, #0
	cmp r0, #0x80
	bmi loc_80407AA
	mov r6, #4
	sub r0, #0x80
loc_80407AA:
	ldr r5, off_80407BC // =mapPtrs80407C0
	ldr r3, [r5,r6]
	lsl r0, r0, #2
	add r3, r3, r0
	ldr r3, [r3]
	lsl r1, r1, #2
	add r3, r3, r1
	ldr r0, [r3]
	pop {r4-r7,pc}
off_80407BC: .word mapPtrs80407C0
mapPtrs80407C0: .word off_804448C
	.word off_8044520
	thumb_func_end chatbox_map_8040794

	thumb_local_start
chatbox_map_80407C8:
	push {r4-r7,lr}
	mov r2, r10
	ldr r2, [r2,#oToolkit_GameStatePtr]
	ldrb r0, [r2,#oGameState_MapGroup]
	ldrb r1, [r2,#oGameState_MapNumber]
	mov r2, #4
	mov r6, #0
	cmp r0, #0x80
	bmi loc_80407DE
	mov r6, #4
	sub r0, #0x80
loc_80407DE:
	ldr r5, off_80407F8 // =mapPtrs80407FC
	ldr r3, [r5,r6]
	lsl r0, r0, #2
	add r3, r3, r0
	ldr r3, [r3]
	lsl r1, r1, #2
	add r3, r3, r1
	ldr r3, [r3]
	lsl r2, r2, #2
	add r3, r3, r2
	ldr r0, [r3]
	pop {r4-r7,pc}
	.balign 4, 0x00
off_80407F8: .word mapPtrs80407FC
mapPtrs80407FC: .word off_8044470
	.word off_80444C4
	.word byte_8040808
byte_8040808: .byte 0x60, 0x4, 0x50, 0x4, 0x40, 0x4, 0x30, 0x4, 0x20, 0x4, 0x10
	.byte 0x4, 0x0, 0x4, 0x0, 0x0
	thumb_func_end chatbox_map_80407C8

	thumb_func_start chatbox_8040818
chatbox_8040818:
	push {r5,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_ChatboxPtr]
	mov r0, #0
	strb r0, [r5]
	mov r0, #0xc8
	bl chatbox_clear_eFlags2009F38 // (int a1) ->
	pop {r5,pc}
	.balign 4, 0x00
	thumb_func_end chatbox_8040818

	thumb_local_start
chatbox_804082C:
	push {r4,r6,lr}
	mov r0, #0x20
	bl chatbox_maskFlags_3e // (int mask) -> void

	cmp r0, #0
	beq locret_8040886
	ldrb r4, [r5,#3]
	ldr r1, off_8040894 // =off_8040898
	lsl r2, r4, #2
	ldr r6, [r1,r2]
	ldrb r0, [r5,#0x17]
	ldrb r0, [r6,r0]
	lsl r0, r0, #7
	ldr r2, off_8040888 // =dword_86A4740
	lsl r1, r4, #7
	mov r3, #3
	mul r1, r3
	add r2, r2, r1
	add r0, r0, r2
	ldr r1, dword_804088C // =0x6017f00
	mov r2, #0x80
	bl sub_8000AC8
	ldrb r0, [r5,#0x1a]
	ldrb r1, [r5,#0x1b]
	lsl r0, r0, #0x10
	orr r0, r1
	ldrb r2, [r5,#0x17]
	add r2, #1
	ldrb r1, [r6,r2]
	cmp r1, #0xff
	bne loc_8040870
	mov r2, #1
	ldrh r1, [r3]
loc_8040870:
	strb r2, [r5,#0x17]
	ldr r2, dword_8040890 // =0x40000000
	orr r0, r2
	ldr r1, dword_80408A0 // =0xe3f8
	mov r2, #0
	lsl r2, r2, #0xa
	orr r1, r2
	mov r2, #0
	mov r3, #4
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
locret_8040886:
	pop {r4,r6,pc}
off_8040888: .word dword_86A4740
dword_804088C: .word 0x6017F00
dword_8040890: .word 0x40000000
off_8040894: .word off_8040898
off_8040898: .word byte_80408A4
	.word byte_80408A4
dword_80408A0: .word 0xE3F8
byte_80408A4: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x2, 0x2, 0x2, 0x2, 0x2
	.byte 0x2, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x1
	.byte 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0xFF
	thumb_func_end chatbox_804082C

// (int notUsed, u8 scriptID) -> void
	thumb_local_start
chatbox_config_80408D0:
	push {lr}
	strb r1, [r5,#oChatbox_TextScriptIdx]
	ldr r0, [r5,#0x30] // ChatBoxPropreties.pScriptArray
	lsl r1, r1, #1
	ldrh r1, [r0,r1]
	add r0, r0, r1
	str r0, [r5,#0x2c] // ChatBoxPropreties.pScriptCursor
	str r0, [r5,#0x34] // ChatBoxPropreties.pCurrScript
	mov r4, r0
	mov r1, #0
	strb r1, [r5,#oChatbox_TextScriptState_04]
	str r1, [r5,#0x64] // ChatBoxPropreties.unk_64
	strb r1, [r5,#0x12] // ChatBoxPropreties.unk_12
	strb r1, [r5,#0x2] // ChatBoxPropreties.currLine
	strb r1, [r5,#0x17] // ChatBoxPropreties.unk_17
	mov r0, #0x3d // ChatBoxPropreties.unk_3D
	strb r1, [r5,r0]
	mov r0, #0x80 // ChatBoxPropreties.unk_80
	str r1, [r5,r0]
	mov r1, #1
	strb r1, [r5,#0x11] // ChatBoxPropreties.bxoff_11
	str r1, [r5,#oChatbox_Unk_74]
	ldrb r1, [r5,#0x8] // ChatBoxPropreties.typingSpeed
	ldrb r0, [r5,#0x18] // ChatBoxPropreties.textCoord
	mov r1, r5
	add r1, #0x94 // ChatBoxPropreties.unk_94
	strb r0, [r1]
	bl chatbox_8045F60
	ldr r0, Flags8040918 // =FLAGS_3E_UNK_0400
	ldr r1, Flags804091C // =FLAGS_3E_UNK_0800
	orr r0, r1
	bl chatbox_clearFlags_3e // (int mask) -> void
	pop {pc}
	.byte 0x0, 0x0
Flags8040918: .word FLAGS_3E_UNK_0400
Flags804091C: .word FLAGS_3E_UNK_0800
	thumb_func_end chatbox_config_80408D0

// (int mask) -> void
	thumb_local_start
chatbox_setflags_3e:
	push {r1}
	ldrh r1, [r5,#oChatbox_flags_3E]
	orr r1, r0
	strh r1, [r5,#oChatbox_flags_3E]
	pop {r1}
	mov pc, lr
	thumb_func_end chatbox_setflags_3e

// (int mask) -> void
	thumb_local_start
chatbox_clearFlags_3e:
	push {r1}
	ldrh r1, [r5,#oChatbox_flags_3E]
	bic r1, r0
	strh r1, [r5,#oChatbox_flags_3E]
	pop {r1}
	mov pc, lr
	thumb_func_end chatbox_clearFlags_3e

// (int mask) -> void
//
	thumb_func_start chatbox_maskFlags_3e
chatbox_maskFlags_3e:
	push {r1}
	ldrh r1, [r5,#oChatbox_flags_3E]
	and r0, r1
	pop {r1}
	mov pc, lr
	.balign 4, 0x00
	thumb_func_end chatbox_maskFlags_3e

	thumb_local_start
chatbox_ED_select_8040944:
	push {lr}
	ldrb r0, [r5,#oChatbox_Unk_16]
	ldr r1, off_80409AC // =dword_80409B0+2
	ldrb r0, [r1,r0]
	lsl r0, r0, #7
	ldr r2, off_80409A4 // =byte_86A48C0
	add r0, r0, r2
	ldr r1, dword_80409A8 // =0x6017f80
	mov r2, #0x80
	bl sub_8000AC8
	mov r2, r5
	add r2, #0x94
	ldrb r1, [r2]
	ldr r0, [r5,#oChatbox_Unk_70]
	add r0, r0, r1
	sub r0, #6
	ldrb r1, [r5,#0xf]
	mov r3, #0xe
	mul r1, r3
	ldrb r2, [r5,#0x19]
	add r1, r1, r2
	sub r1, #1
	lsl r0, r0, #0x10
	orr r0, r1
	ldrb r2, [r5,#0x16]
	ldr r3, off_80409AC // =dword_80409B0+2
	add r2, #1
	ldrb r1, [r3,r2]
	cmp r1, #0xff
	bne loc_8040986
	mov r2, #1
	ldrh r1, [r3]
loc_8040986:
	strb r2, [r5,#0x16]
	ldr r2, dword_80409A0 // =0x40000000
	orr r0, r2
	ldr r1, dword_80409B0 // =0xe3fc
	mov r2, #0
	lsl r2, r2, #0xa
	orr r1, r2
	mov r2, #0
	mov r3, #4
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	pop {pc}
	.byte 0, 0
dword_80409A0: .word 0x40000000
off_80409A4: .word byte_86A48C0
dword_80409A8: .word 0x6017F80
off_80409AC: .word dword_80409B0+2
dword_80409B0: .word 0xE3FC
	.word 0x0
	.word 0x1010101
	.word 0x2020101
	.word 0x2020202
	.word 0xFF
	thumb_func_end chatbox_ED_select_8040944

	thumb_local_start
chatbox_80409C8:
	push {lr}
	ldr r0, off_80409D8 // =dword_86A4A40
	ldr r1, dword_80409DC // =0x6017f80
	mov r2, #0x80
	bl sub_8000AC8
	pop {pc}
	.hword 0x0
off_80409D8: .word dword_86A4A40
dword_80409DC: .word 0x6017F80
	thumb_func_end chatbox_80409C8

	thumb_local_start
chatbox_80409E0:
	push {r4,r6,lr}
	ldrb r0, [r5,#0x16]
	ldr r1, off_8040A7C // =byte_8040A80
	ldrb r0, [r1,r0]
	lsl r0, r0, #7
	ldr r2, off_8040A74 // =dword_86A4A40
	add r0, r0, r2
	ldr r1, dword_8040A78 // =0x6017f80
	mov r2, #0x80
	bl sub_8000AC8
	ldrb r1, [r5,#0x18]
	ldr r0, [r5,#0x70]
	add r0, r0, r1
	add r0, #4
	ldrb r1, [r5,#0x13]
	mov r3, #0x80
	ldrb r3, [r5,r3]
loc_8040A04:
	sub r3, #1
	cmp r1, r3
	bne loc_8040A0C
	add r0, #7
loc_8040A0C:
	ldrb r1, [r5,#0xf]
	mov r3, #0xe
	mul r1, r3
	ldrb r2, [r5,#0x19]
	add r1, r1, r2
	sub r1, #2
	lsl r0, r0, #0x10
	orr r0, r1
	mov r4, r0
	push {r5}
	ldr r6, dword_8040A70 // =0x8000
	orr r0, r6
	ldr r1, dword_8040A94 // =0xe3fc
	mov r2, #0
	lsl r2, r2, #0xa
	orr r1, r2
	mov r2, #0
	mov r3, #1
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	mov r0, r4
	mov r4, #8
	ldrb r1, [r5,#0x13]
	mov r3, #0x80
	ldrb r5, [r5,r3]
	sub r5, #1
	cmp r1, r5
	bne loc_8040A46
	mov r4, #0x12
loc_8040A46:
	lsl r4, r4, #0x10
	add r0, r0, r4
	orr r0, r6
	ldr r1, byte_8040A98 // =0xfe
	mov r6, #0
	lsl r6, r6, #0xa
	orr r1, r6
	mov r3, #1
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	pop {r5}
	ldrb r2, [r5,#0x16]
	ldr r3, off_8040A7C // =byte_8040A80
	add r2, #1
	ldrb r1, [r3,r2]
	cmp r1, #0xff
	bne loc_8040A6C
	mov r2, #1
	ldrh r1, [r3]
loc_8040A6C:
	strb r2, [r5,#0x16]
	pop {r4,r6,pc}
dword_8040A70: .word 0x8000
off_8040A74: .word dword_86A4A40
dword_8040A78: .word 0x6017F80
off_8040A7C: .word byte_8040A80
byte_8040A80: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1
	.byte 0x1, 0xFF, 0x0
dword_8040A94: .word 0xE3FC
byte_8040A98: .byte 0xFE, 0xE3
	thumb_func_end chatbox_80409E0

	thumb_local_start
chatbox_8040A9A:
	push {r4,r6,lr}
	ldrb r0, [r5,#0x16]
	ldr r1, off_8040B1C // =word_8040B20
	ldrb r0, [r1,r0]
	lsl r0, r0, #7
	ldr r2, off_8040B14 // =dword_86A4A40
	add r0, r0, r2
	ldr r1, dword_8040B18 // =0x6017f80
	mov r2, #0x80
	bl sub_8000AC8
	ldrb r1, [r5,#0x18]
	ldr r0, [r5,#0x70]
	add r0, r0, r1
	add r0, #4
	ldrb r1, [r5,#0xf]
	mov r3, #0xe
	mul r1, r3
	ldrb r2, [r5,#0x19]
	add r1, r1, r2
	sub r1, #2
	lsl r0, r0, #0x10
	orr r0, r1
	mov r4, r0
	push {r5}
	ldr r6, dword_8040B10 // =0x8000
	orr r0, r6
	ldr r1, dword_8040B34 // =0xe3fc
	mov r2, #0
	lsl r2, r2, #0xa
	orr r1, r2
	mov r2, #0
	mov r3, #1
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	mov r0, r4
	mov r4, #0x16
	lsl r4, r4, #0x10
	add r0, r0, r4
	orr r0, r6
	ldr r1, dword_8040B38 // =0xb520e3fe
	mov r6, #0
	lsl r6, r6, #0xa
	orr r1, r6
	mov r3, #1
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	pop {r5}
	ldrb r2, [r5,#0x16]
	ldr r3, off_8040B1C // =word_8040B20
	add r2, #1
	ldrb r1, [r3,r2]
	cmp r1, #0xff
	bne loc_8040B0A
	mov r2, #1
	ldrh r1, [r3]
loc_8040B0A:
	strb r2, [r5,#0x16]
	pop {r4,r6,pc}
	.byte 0, 0
dword_8040B10: .word 0x8000
off_8040B14: .word dword_86A4A40
dword_8040B18: .word 0x6017F80
off_8040B1C: .word word_8040B20
word_8040B20: .hword 0x0
	.word 0
	.byte 0, 0
	.byte 0x0, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0xFF, 0x0
dword_8040B34: .word 0xE3FC
dword_8040B38: .word 0xB520E3FE
	thumb_func_end chatbox_8040A9A

	push {r5}
	ldr r2, off_8040B88 // =0x1f8
	add r5, r5, r2
	push {r0,r1}
	bl spriteLoadMugshot_800275A // (int a1) -> void
	pop {r0,r1}
	strb r1, [r5,#4]
	mov r1, #3
	strh r1, [r5,#0xa]
	mov r1, #0
	strb r1, [r5]
	mov r1, #6
	strb r1, [r5,#3]
	mov r0, #0
	strh r0, [r5,#0x14]
	pop {r7}
	ldrb r0, [r7,#0xa]
	cmp r0, #3
	bne loc_8040B66
	strb r0, [r5]
loc_8040B66:
	mov r2, #0x90
	ldr r0, [r7,r2]
	lsl r0, r0, #4
	strb r0, [r5,#0x15]
	bl sprite_80026B6
	ldr r1, off_8040B84 // =0x3c0
	strh r1, [r5,#8]
	mov r1, #0x84
	ldr r1, [r7,r1]
	strh r1, [r5,#0xc]
	mov r1, #0x88
	ldr r1, [r7,r1]
	strb r1, [r5,#0xe]
	pop {r5,pc}
off_8040B84: .word 0x3C0
off_8040B88: .word 0x1F8
	thumb_local_start
chatbox_8040B8C:
	push {r4-r6,lr}
	mov r0, #2
	bl chatbox_maskFlags_3e // (int mask) -> void

	beq locret_8040C24
	ldr r0, off_8040C30 // =0x100
	bl chatbox_maskFlags_3e // (int mask) -> void

	bne loc_8040BA4
	ldrb r0, [r5,#0x10]
	cmp r0, #3
	bne locret_8040C24
loc_8040BA4:
	ldr r6, [r5,#0x40]
	mov r0, #4
	bl chatbox_maskFlags_3e // (int mask) -> void

	beq loc_8040BC4
	ldr r1, off_8040C28 // =0x421
	ldr r0, [r5,#0x40]
	sub r0, r0, r1
	mov r4, r0
	cmp r0, #0
	bge loc_8040BC2
	mov r4, #0
	mov r0, #FLAGS_3E_UNK_0004
	bl chatbox_clearFlags_3e // (int mask) -> void
loc_8040BC2:
	b loc_8040BE2
loc_8040BC4:
	mov r0, #8
	bl chatbox_maskFlags_3e // (int mask) -> void

	beq loc_8040BE4
	ldr r1, dword_8040C2C // =0x842
	ldr r0, [r5,#0x40]
	add r0, r0, r1
	mov r4, r0
	mov r1, #0x1f
	and r0, r1
	cmp r0, #6
	bmi loc_8040BE2
	mov r0, #FLAGS_3E_UNK_0008 | FLAGS_3E_MUGSHOT_ACTIVE
	bl chatbox_clearFlags_3e // (int mask) -> void
loc_8040BE2:
	str r4, [r5,#0x40]
loc_8040BE4:
	mov r7, r5
	ldrb r3, [r5,#7]
	push {r5}
	push {r3}
	ldr r3, off_8040C34 // =0x1f8
	add r5, r5, r3
	pop {r3}
	strb r3, [r5,#4]
	ldr r1, dword_8040C38 // =0x1f2
	ldrb r1, [r7,r1]
	ldr r2, dword_8040C40 // =0x1f3
	ldrb r3, [r7,r2]
	cmp r1, r3
	beq loc_8040C0C
	strb r1, [r7,r2]
	ldr r1, off_8040C3C // =0x1f0
	ldrb r1, [r7,r1]
	strb r1, [r5]
	bl sprite_80026B6
loc_8040C0C:
	bl sprite_chatbox_80026D6
	strh r6, [r5,#6]
	pop {r7}
	bl sub_8002818
	bl sub_8002874
	mov r0, #0
	mov r1, #3
	bl sub_8002694
locret_8040C24:
	pop {r4-r6,pc}
	.balign 4, 0x00
off_8040C28: .word 0x421
dword_8040C2C: .word 0x842
off_8040C30: .word 0x100
off_8040C34: .word 0x1F8
dword_8040C38: .word 0x1F2
off_8040C3C: .word 0x1F0
dword_8040C40: .word 0x1F3
	thumb_func_end chatbox_8040B8C

	thumb_local_start
chatbox_8040C44:
	push {r0,r1,r4,r5,lr}
	mov r0, #0x10
	bl chatbox_maskFlags_3e // (int mask) -> void

	bne loc_8040C64
	cmp r1, #0
	beq loc_8040C64
	cmp r1, #0x25
	beq loc_8040C64
	cmp r1, #0x40
	blt loc_8040C80
	cmp r1, #0x59
	blt loc_8040C64
	cmp r1, #0x5d
	blt loc_8040C80
	b loc_8040C64
loc_8040C64:
	mov r1, #0
	ldr r2, dword_8040C90 // =0x1f2
	strb r1, [r5,r2]
	ldr r2, off_8040C94 // =0x1f1
	ldrb r1, [r5,r2]
	cmp r1, #2
	bne loc_8040C74
	mov r1, #1
loc_8040C74:
	ldr r2, off_8040C98 // =0x1f0
	ldrb r3, [r5,r2]
	cmp r3, #3
	beq locret_8040C8E
	strb r1, [r5,r2]
	b locret_8040C8E
loc_8040C80:
	mov r1, #1
	ldr r2, dword_8040C90 // =0x1f2
	strb r1, [r5,r2]
	ldr r2, off_8040C94 // =0x1f1
	ldrb r1, [r5,r2]
	ldr r2, off_8040C98 // =0x1f0
	strb r1, [r5,r2]
locret_8040C8E:
	pop {r0,r1,r4,r5,pc}
dword_8040C90: .word 0x1F2
off_8040C94: .word 0x1F1
off_8040C98: .word 0x1F0
	thumb_func_end chatbox_8040C44

	thumb_local_start
chatbox_8040C9C:
	push {r0,r1,lr}
	mov r0, #0
	ldr r1, off_8040CC8 // =0x1f0
	ldrb r1, [r5,r1]
	cmp r1, #0
	beq loc_8040CBC
	cmp r1, #3
	bne loc_8040CB0
	mov r0, #3
	b loc_8040CBC
loc_8040CB0:
	mov r0, #0
	ldr r1, dword_8040CC4 // =0x1f2
	strb r0, [r5,r1]
	ldr r1, off_8040CCC // =0x1f1
	ldrb r0, [r5,r1]
	mov r0, #1
loc_8040CBC:
	ldr r1, off_8040CC8 // =0x1f0
	strb r0, [r5,r1]
	pop {r0,r1,pc}
	.balign 4, 0x00
dword_8040CC4: .word 0x1F2
off_8040CC8: .word 0x1F0
off_8040CCC: .word 0x1F1
	thumb_func_end chatbox_8040C9C

	thumb_local_start
chatbox_8040CD0:
	push {lr}
	ldr r7, off_8040D44 // =byte_8040D48
	ldr r6, [r7]
	ldrh r6, [r5,r6]
	sub r6, #1
loc_8040CDA:
	ldr r4, [r7,#0xc] // (off_8040D54 - 0x8040d48)
	add r4, r4, r6
	ldrb r4, [r5,r4]
	mov r0, #4
	mul r4, r0
	ldr r0, off_8040D58 // =off_8045DD4
	ldr r4, [r0,r4]
	push {r4,r6,r7}
	ldr r0, [r4,#8]
	ldr r1, [r4,#0xc]
	ldr r2, [r4,#0x10]
	bl sub_8000AC8
	ldr r0, [r4,#0x14]
	ldr r1, [r4,#0x18]
	ldr r2, [r4,#0x1c]
	bl sub_8000AC8
	pop {r4,r6,r7}
	push {r4,r6}
	ldr r0, [r7,#8]
	add r0, r0, r6
	ldrb r0, [r5,r0]
	mov r1, #0xe
	mul r0, r1
	ldrb r1, [r5,#0x19]
	add r0, r0, r1
	sub r0, #4
	ldr r1, [r7,#4]
	mov r2, #4
	mul r2, r6
	add r1, r1, r2
	ldr r1, [r5,r1]
	mov r2, r5
	add r2, #0x94
	ldrb r2, [r2]
	add r1, r1, r2
	ldr r2, [r4]
	orr r2, r0
	lsl r1, r1, #0x10
	orr r2, r1
	mov r0, r2
	ldr r1, [r4,#4]
	mov r2, #0
	mov r3, #4
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	pop {r4,r6}
	tst r6, r6
	beq locret_8040D42
	sub r6, #1
	b loc_8040CDA
locret_8040D42:
	pop {pc}
off_8040D44: .word byte_8040D48
byte_8040D48: .byte 0xD6, 0x1, 0x0, 0x0, 0xD8, 0x1, 0x0, 0x0, 0xE8, 0x1, 0x0, 0x0
off_8040D54: .word 0x1EC
off_8040D58: .word off_8045DD4
	thumb_func_end chatbox_8040CD0

	thumb_func_start chatbox_8040D5C
chatbox_8040D5C:
	push {r2,r3,lr}
	cmp r0, #1
	bne loc_8040D64
	mov r7, #1
loc_8040D64:
	sub r0, #1
	lsl r0, r0, #2
	ldr r2, off_8040D94 // =byte_8040D98
	ldr r0, [r2,r0]
	mov r3, #0
loc_8040D6E:
	sub r1, r1, r0
	add r3, #1
	cmp r1, #0
	bge loc_8040D6E
	neg r1, r1
	sub r1, r1, r0
	neg r1, r1
	sub r3, #1
	mov r0, r3
	mov r3, #0xf
	tst r7, r3
	beq loc_8040D8A
	add r0, #1
	b locret_8040D92
loc_8040D8A:
	tst r0, r0
	beq locret_8040D92
	add r7, #1
	add r0, #1
locret_8040D92:
	pop {r2,r3,pc}
off_8040D94: .word byte_8040D98
byte_8040D98: .byte 0x1, 0x0, 0x0, 0x0, 0xA, 0x0, 0x0, 0x0, 0x64, 0x0, 0x0, 0x0, 0xE8, 0x3, 0x0
	.byte 0x0, 0x10, 0x27, 0x0, 0x0, 0xA0, 0x86, 0x1, 0x0, 0x40, 0x42, 0xF, 0x0, 0x80, 0x96
	.byte 0x98, 0x0, 0x0, 0xE1, 0xF5, 0x5
	thumb_func_end chatbox_8040D5C

	thumb_local_start
chatbox_8040DBC:
	push {r0-r5,lr}
	// memBlock
	ldr r0, off_8040DD8 // =unk_200BEA0
	// size
	mov r1, #0x40
	mov r2, #0
loc_8040DC4:
	push {r0-r2}
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	pop {r0-r2}
	add r0, #0x60
	add r2, #1
	cmp r2, #0xd
	ble loc_8040DC4
	pop {r0-r5,pc}
	.byte 0x0, 0x0
off_8040DD8: .word unk_200BEA0
	thumb_func_end chatbox_8040DBC

// (int v3) ->
	thumb_local_start
chatbox_8040DDC:
	push {r0-r5,lr}
	mov r4, r0
	mov r1, #0x10
	mul r4, r1
	lsr r4, r4, #1
	// memBlock
	ldr r0, off_8040E00 // =unk_200BEA0
	// size
	mov r1, r4
	mov r2, #0
loc_8040DEC:
	push {r0-r2}
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	pop {r0-r2}
	add r0, #0x60
	add r2, #1
	cmp r2, #0xd
	ble loc_8040DEC
	pop {r0-r5,pc}
	.hword 0x0
off_8040E00: .word unk_200BEA0
	.word 0x420
	.word 0x540
	.word 0x1C05B520
	.word 0xF7FF2140
	.word 0xBD20FF17
	.word 0x1C05B520
	.word 0xFF3EF7FF
	.word 0xBD20
TextScriptBytecodeJumptable: .word chatbox_E5_nop+1
	.word chatbox_E6_end+1
	.word chatbox_E7_buttonhalt+1
	.word chatbox_E8_msgbox+1
	.word chatbox_E9_newline+1
	.word chatbox_EA_flag+1
	.word chatbox_EB_option+1
	.word chatbox_EC_label+1
	.word chatbox_ED_select+1
	.word chatbox_EE_pause+1
	.word chatbox_EF_checkflag+1
	.word chatbox_F0_jump+1
	.word chatbox_F1_textspeed+1
	.word chatbox_F2_clearmsgbox+1
	.word chatbox_F3_control+1
	.word chatbox_F4_unk+1
	.word chatbox_F5_mugshot+1
	.word chatbox_F6_textcolor+1
	.word chatbox_F7_movebox+1
	.word chatbox_F8_playeranimation+1
	.word chatbox_F9_storebyte+1
	.word chatbox_FA_print+1
	.word chatbox_FB_special+1
	.word chatbox_FC_interface+1
	.word chatbox_FD_sound+1
	.word chatbox_FE_numberinput+1
	.word chatbox_FF_copytext+1
	thumb_func_end chatbox_8040DDC

// (int textScriptCursor@R4) -> int
// Description: do nothing (but make the script go on)
// Parameters: 0
	thumb_local_start
chatbox_E5_nop:
	add r4, #1
	mov r0, #2
	mov pc, lr
	.balign 4, 0x00
	thumb_func_end chatbox_E5_nop

// () -> int
// Description: ends the current script and closes message box
// Parameters: 0
	thumb_local_start
chatbox_E6_end:
	push {lr}
	ldrb r0, [r5,#oChatbox_Unk_05]
	tst r0, r0
	beq loc_8040EB2
	sub r0, #1
	ldr r1, dword_8040EF0 // =0x140
	mov r2, #4
	mul r2, r0
	add r1, r1, r2
	ldr r4, [r5,r1]
	strb r0, [r5,#oChatbox_Unk_05]
	mov r0, #1
	pop {pc}
loc_8040EB2:
	// mask
	mov r0, #FLAGS_3E_UNK_0001
	bl chatbox_setflags_3e // (int mask) -> void
	ldr r0, Flags8040EEC // =FLAGS_3E_HIDE_CHATBOX
	bl chatbox_maskFlags_3e // (int mask) -> void

	bne loc_8040ECA
	bl chatbox_8041090
	tst r0, r0
	bne loc_8040EDC
	pop {pc}
loc_8040ECA:
	mov r0, #2
	bl chatbox_maskFlags_3e // (int mask) -> void

	beq loc_8040EDC
	mov r0, #FLAGS_3E_UNK_0008
	bl chatbox_setflags_3e // (int mask) -> void
	mov r0, #0
	pop {pc}
loc_8040EDC:
	mov r0, #0x80
	bl chatbox_clear_eFlags2009F38 // (int a1) ->
	mov r0, #0
	strb r0, [r5]
	strb r0, [r5,#4]
	mov r0, #0
	pop {pc}
Flags8040EEC: .word FLAGS_3E_HIDE_CHATBOX
dword_8040EF0: .word 0x140
	thumb_func_end chatbox_E6_end

// () -> int
// E7 = buttonhalt
// Description: display an arrow at the lower right of the message box and stop processing until a button is pressed
// Parameters: 1
// Parameter 1 = mode
// E7 00 = wait for A button or B button
// E7 01 = wait for any button
	thumb_local_start
chatbox_E7_buttonhalt:
	push {lr}
	// mask
	ldr r0, Flags8040F6C // =FLAGS_3E_UNK_0400
	bl chatbox_setflags_3e // (int mask) -> void
	// mask
	mov r0, #FLAGS_3E_UNK_0020 | FLAGS_3E_UNK_0001
	bl chatbox_setflags_3e // (int mask) -> void
	mov r0, #0
	strb r0, [r5,#oChatbox_Unk_03]
	ldrb r0, [r5,#oChatbox_TextScriptState_04]
	cmp r0, #1
	beq loc_8040F1A
	cmp r0, #2
	beq loc_8040F2A
	mov r0, #5
	strh r0, [r5,#oChatbox_BoxYX]
	mov r0, #1
	strb r0, [r5,#oChatbox_TextScriptState_04]
	b loc_8040F64
loc_8040F1A:
	ldrh r0, [r5,#oChatbox_BoxYX]
	cmp r0, #0
	beq loc_8040F26
	sub r0, #1
	strh r0, [r5,#oChatbox_BoxYX]
	b loc_8040F64
loc_8040F26:
	mov r0, #2
	strb r0, [r5,#oChatbox_TextScriptState_04]
loc_8040F2A:
	mov r1, #3
	ldrb r2, [r4,#oChatbox_TextScriptIdx]
	tst r2, r2
	beq loc_8040F34
	ldr r1, dword_8040F68 // =0x3ff
loc_8040F34:
	ldrh r0, [r5,#oChatbox_JoypadUp]
	tst r1, r0
	bne loc_8040F4E
	ldrh r0, [r5,#oChatbox_JoypadHeld]
	mov r1, #2
	tst r1, r0
	beq loc_8040F64
	ldrh r0, [r5,#oChatbox_BoxYX]
	cmp r0, #0xa
	bge loc_8040F4E
	add r0, #1
	strh r0, [r5,#oChatbox_BoxYX]
	b loc_8040F64
loc_8040F4E:
	mov r0, #FLAGS_3E_UNK_0020 | FLAGS_3E_UNK_0001
	bl chatbox_clearFlags_3e // (int mask) -> void
	mov r0, #0
	strb r0, [r5,#oChatbox_TextScriptState_04]
	strh r0, [r5,#oChatbox_BoxYX]
	mov r0, #1
	str r0, [r5,#oChatbox_Unk_74]
	add r4, #2
	mov r0, #0
	pop {pc}
loc_8040F64:
	mov r0, #0
	pop {pc}
dword_8040F68: .word 0x3FF
Flags8040F6C: .word FLAGS_3E_UNK_0400
	thumb_func_end chatbox_E7_buttonhalt

// () -> int
// E8 = msgbox
// Parameters: 1/3
// Parameter 1 = type/mode (msgbox type; even = open msgbox, odd = close msgbox)
// Parameter 2 = special msgbox type (only for modes 4-7)
// Parameter 3 = new buttonhalt arrow position (only for modes 4-7)
// Examples:
// E8 00 = open msgbox
// E8 01 = msgbox close
// E8 02 = open msgbox (no animation)
// E8 03 = msgbox close (no animation)
// E8 04 XX YY = open special msgbox (XX = type, YY = new buttonhalt arrow position)
// E8 05 XX YY = close special msgbox (XX = type, YY = new buttonhalt arrow position)
// E8 06 XX YY = open special msgbox (XX = type, YY = new buttonhalt arrow position) (no animation)
// E8 07 XX YY = close special msgbox (XX = type, YY = new buttonhalt arrow position) (no animation)
// E8 08 = open special msgbox 1
// E8 09 = special msgbox close 1
// E8 0A = open special msgbox 1 (no animation)
// E8 0B = special msgbox close 1 (no animation)
// E8 0C = open special msgbox 2
// E8 0D = special msgbox close 2
// E8 0E = open special msgbox 2 (no animation?)
// E8 0F = special msgbox close 2 (no animation?)
// E8 10 = open special msgbox 3
// E8 11 = special msgbox close 3
//
	thumb_local_start
chatbox_E8_msgbox:
	push {lr}
	ldr r0, off_8040FD4 // =chatbox_EB_msgboxJumpTable
	ldrb r1, [r4,#1]
	ldr r2, dword_8041024 // =0x1d2
	cmp r1, #0x10
	blt loc_8040F82
	mov r3, #6
	strb r3, [r5,r2]
	b loc_8040FBC
loc_8040F82:
	cmp r1, #0xc
	blt loc_8040F8C
	mov r3, #5
	strb r3, [r5,r2]
	b loc_8040FBC
loc_8040F8C:
	cmp r1, #8
	blt loc_8040F96
	mov r3, #4
	strb r3, [r5,r2]
	b loc_8040FBC
loc_8040F96:
	cmp r1, #3
	bgt loc_8040FA0
	mov r3, #0
	strb r3, [r5,r2]
	b loc_8040FBC
loc_8040FA0:
	push {r0-r2}
	ldrb r3, [r4,#2]
	strb r3, [r5,r2]
	ldrb r3, [r4,#3]
	cmp r3, #0xff
	beq loc_8040FBA
	lsl r3, r3, #2
	ldr r0, off_8040FD8 // =byte_8045DCC
	add r0, r0, r3
	ldrh r1, [r0]
	ldrh r2, [r0,#2]
	strb r1, [r5,#0x1a] // ChatBoxPropreties.csrCoord
	strb r2, [r5,#0x1b] // ChatBoxPropreties.unk_1B
loc_8040FBA:
	pop {r0-r2}
loc_8040FBC:
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	tst r0, r0
	beq locret_8040FD0
	ldr r0, off_8041028 // =byte_804102C
	ldrb r1, [r4,#1]
	ldrb r1, [r0,r1]
	add r4, r4, r1
locret_8040FD0:
	pop {pc}
	.balign 4, 0x00
off_8040FD4: .word chatbox_EB_msgboxJumpTable
off_8040FD8: .word byte_8045DCC
chatbox_EB_msgboxJumpTable: .word chatbox_804103E+1
	.word chatbox_8041090+1
	.word chatbox_80410F8+1
	.word chatbox_804110C+1
	.word chatbox_804103E+1
	.word chatbox_8041090+1
	.word chatbox_80410F8+1
	.word chatbox_804110C+1
	.word chatbox_804103E+1
	.word chatbox_8041090+1
	.word chatbox_80410F8+1
	.word chatbox_804110C+1
	.word chatbox_804103E+1
	.word chatbox_8041090+1
	.word chatbox_80410F8+1
	.word chatbox_804110C+1
	.word chatbox_80410F8+1
	.word chatbox_804110C+1
dword_8041024: .word 0x1D2
off_8041028: .word byte_804102C
byte_804102C: .byte 0x2, 0x2, 0x2, 0x2, 0x4, 0x4, 0x4, 0x4, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2
	.byte 0x2
	thumb_func_end chatbox_E8_msgbox

	thumb_local_start
chatbox_804103E:
	push {lr}
	// mask
	mov r0, #FLAGS_3E_UNK_0001
	bl chatbox_setflags_3e // (int mask) -> void
	ldrb r0, [r5,#0x10]
	cmp r0, #3
	beq loc_804107A
	ldr r0, =0x100
	bl chatbox_clearFlags_3e // (int mask) -> void
	ldrb r1, [r5,#0xc]
	tst r1, r1
	beq loc_8041060
	sub r1, #1
	strb r1, [r5,#0xc]
	mov r0, #0
	pop {pc}
loc_8041060:
	ldrb r0, [r5,#0x10]
	cmp r0, #0
	bne loc_8041068
	ldrb r0, [r5,#0x10]
loc_8041068:
	add r0, #1
	strb r0, [r5,#0x10]
	mov r2, #3
	cmp r0, r2
	beq loc_804107A
	mov r1, #0
	strb r1, [r5,#0xc]
loc_8041076:
	mov r0, #0
	pop {pc}
loc_804107A:
	mov r0, #4
	bl chatbox_maskFlags_3e // (int mask) -> void

	bne loc_8041076
	mov r0, #FLAGS_3E_UNK_0001
	bl chatbox_clearFlags_3e // (int mask) -> void
	mov r0, #1
	pop {pc}
    .pool
	thumb_func_end chatbox_804103E

	thumb_local_start
chatbox_8041090:
	push {lr}
	ldr r0, Flags80410F4 // =FLAGS_3E_HIDE_CHATBOX
	bl chatbox_maskFlags_3e // (int mask) -> void

	bne loc_80410F0
	// mask
	mov r0, #FLAGS_3E_UNK_0001
	bl chatbox_setflags_3e // (int mask) -> void
	bl chatbox_8045F60
	// mask
	mov r0, #FLAGS_3E_UNK_0008
	bl chatbox_setflags_3e // (int mask) -> void
	mov r0, #FLAGS_3E_MUGSHOT_ACTIVE
	bl chatbox_maskFlags_3e // (int mask) -> void

	beq loc_80410B6
	mov r0, #0
	pop {pc}
loc_80410B6:
	ldrb r1, [r5,#0xc]
	tst r1, r1
	beq loc_80410C4
	sub r1, #1
	strb r1, [r5,#0xc]
	mov r0, #0
	pop {pc}
loc_80410C4:
	ldrb r0, [r5,#0x10]
	cmp r0, #3
	bne loc_80410CC
	ldrb r0, [r5,#0x10]
loc_80410CC:
	tst r0, r0
	beq loc_80410DC
	sub r0, #1
	strb r0, [r5,#0x10]
	mov r1, #0
	strb r1, [r5,#0xc]
	mov r0, #0
	pop {pc}
loc_80410DC:
	mov r1, #0
	strb r1, [r5,#0xc]
	mov r0, #FLAGS_3E_UNK_0008 | FLAGS_3E_UNK_0001
	bl chatbox_clearFlags_3e // (int mask) -> void
	ldr r0, Flags80410F4 // =FLAGS_3E_HIDE_CHATBOX
	bl chatbox_setflags_3e // (int mask) -> void
	mov r0, #1
	pop {pc}
loc_80410F0:
	mov r0, #0
	pop {pc}
Flags80410F4: .word FLAGS_3E_HIDE_CHATBOX
	thumb_func_end chatbox_8041090

	thumb_local_start
chatbox_80410F8:
	push {lr}
	ldr r0, off_8041108 // =0x101
	bl chatbox_clearFlags_3e // (int mask) -> void
	mov r0, #3
	strb r0, [r5,#0x10]
	mov r0, #1
	pop {pc}
off_8041108: .word 0x101
	thumb_func_end chatbox_80410F8

	thumb_local_start
chatbox_804110C:
	push {lr}
	// mask
	mov r0, #FLAGS_3E_UNK_0001
	bl chatbox_setflags_3e // (int mask) -> void
	bl chatbox_8045F60
	mov r1, #0
	strb r1, [r5,#0xc]
	mov r0, #0
	strb r0, [r5,#0x10]
	// mask
	ldr r0, Flags8041130 // =FLAGS_3E_HIDE_CHATBOX
	bl chatbox_setflags_3e // (int mask) -> void
	mov r0, #FLAGS_3E_UNK_0008
	bl chatbox_clearFlags_3e // (int mask) -> void
	mov r0, #1
	pop {pc}
Flags8041130: .word FLAGS_3E_HIDE_CHATBOX
	thumb_func_end chatbox_804110C

	thumb_local_start
/*
E9 = newline
Description: moves the position for text writing to the next line
Parameters: 0
*/
chatbox_E9_newline:
	push {lr}
	ldrb r2, [r5,#0xf]
	add r2, #1
	strb r2, [r5,#0xf]
	mov r0, #0
	str r0, [r5,#0x70]
	cmp r2, #3
	bne loc_804114C
	mov r0, #1
	mov r2, #0x8c
	str r0, [r5,r2]
	b loc_8041156
loc_804114C:
	sub r2, #1
	lsl r3, r2, #2
	ldr r0, off_804115C // =byte_803FCE4
	ldr r0, [r0,r3]
	str r0, [r5,#0x7c]
loc_8041156:
	add r4, #1
	mov r0, #0
	pop {pc}
off_804115C: .word byte_803FCE4
	thumb_func_end chatbox_E9_newline

	thumb_local_start
/*
EA = flag
Description: does various things with flags
EA 00 XX XX = set flag XXXX
EA 01 XX XX = clear flag XXXX
EA 02 XX XX = toggle flag XXXX
EA 03 XX XX YY = set flag range (XXXX = starting flag, YY = amount of flags)
EA 04 XX XX YY = clear flag range (XXXX = starting flag, YY = amount of flags)
EA 05 = undefined (freeze)
EA 06 XX = load flag number from 02009CD0 + XX * 4h + 4Ch and set that flag
EA 07 XX XX = set flag XXXX and XXXX+80h, then copy some stuff based on XXXX-1CA0h (?????) (might be related to mail?)
EA 08 XX XX = nop, but continues with script (XXXX isn't used?)
EA 09 XX XX = set flag XXXX and XXXX+200h, then do something else with XXXX (?????)
EA 0A XX XX = set flag XXXX and XXXX+40h, then do something else with XXXX (?????)
*/
chatbox_EA_flag:
	push {lr}
	ldr r2, off_8041180 // =off_8041184
	ldrb r0, [r4,#1]
	lsl r0, r0, #2
	ldr r2, [r2,r0]
	ldrb r1, [r4,#2]
	ldrb r0, [r4,#3]
	lsl r0, r0, #8
	orr r0, r1
	push {r5}
	mov lr, pc
	bx r2
	pop {r5}
	mov r0, #1
	pop {pc}
	.byte 0, 0
off_8041180: .word off_8041184
off_8041184: .word chatbox_80411B0+1
	.word chatbox_80411BC+1
	.word chatbox_80411C8+1
	.word chatbox_80411E8+1
	.word chatbox_8041200+1
	.word 0x0
	.word chatbox_8041218+1
	.word chatbox_80411D4+1
	.word chatbox_80411E0+1
	.word chatbox_804122C+1
	.word chatbox_8041238+1
	thumb_func_end chatbox_EA_flag

	thumb_local_start
chatbox_80411B0:
	push {lr}
	bl SetEventFlag
	add r4, #4
	pop {pc}
	.balign 4, 0x00
	thumb_func_end chatbox_80411B0

	thumb_local_start
chatbox_80411BC:
	push {lr}
	bl ClearEventFlag // (u16 entryFlagBitfield) -> void
	add r4, #4
	pop {pc}
	.balign 4, 0x00
	thumb_func_end chatbox_80411BC

	thumb_local_start
chatbox_80411C8:
	push {lr}
	bl ToggleEventFlag // (u16 entryFlagBitfield) -> void
	add r4, #4
	pop {pc}
	.balign 4, 0x00
	thumb_func_end chatbox_80411C8

	thumb_local_start
chatbox_80411D4:
	push {lr}
	bl sub_802F238
	add r4, #4
	pop {pc}
	.byte 0, 0
	thumb_func_end chatbox_80411D4

	thumb_local_start
chatbox_80411E0:
	push {lr}
	add r4, #4
	pop {pc}
	.balign 4, 0x00
	thumb_func_end chatbox_80411E0

	thumb_local_start
chatbox_80411E8:
	push {lr}
	ldrb r1, [r4,#2]
	ldrb r0, [r4,#3]
	lsl r0, r0, #8
	orr r0, r1
	ldrb r1, [r4,#4]
	mov r0, r0
	mov r2, r1
	bl SetEventFlagRange // (u16 entryFlagBitfield) -> void
	add r4, #5
	pop {pc}
	thumb_func_end chatbox_80411E8

	thumb_local_start
chatbox_8041200:
	push {lr}
	ldrb r1, [r4,#2]
	ldrb r0, [r4,#3]
	lsl r0, r0, #8
	orr r0, r1
	ldrb r1, [r4,#4]
	mov r0, r0
	mov r2, r1
	bl ClearEventFlagRange // (u16 entryFlagBitfield) -> void
	add r4, #5
	pop {pc}
	thumb_func_end chatbox_8041200

	thumb_local_start
chatbox_8041218:
	push {lr}
	ldrb r0, [r4,#2]
	lsl r0, r0, #2
	add r0, #0x4c
	// bitfield
	ldr r0, [r5,r0]
	bl SetEventFlag
	add r4, #3
	pop {pc}
	.balign 4, 0x00
	thumb_func_end chatbox_8041218

	thumb_local_start
chatbox_804122C:
	push {lr}
	bl reqBBS_813E5DC
	add r4, #4
	pop {pc}
	.balign 4, 0x00
	thumb_func_end chatbox_804122C

	thumb_local_start
chatbox_8041238:
	push {lr}
	bl reqBBS_813F9A0
	add r4, #4
	pop {pc}
	.balign 4, 0x00
	thumb_func_end chatbox_8041238

	thumb_local_start
/*
EB = option
Description: creates an option to be selected using select
Parameters: 5
Parameter 1 = ??
Parameters 2-4 = cursor settings
EB XX LR UD = Pressing left moves cursor to option L, right moves cursor to option R, up moves cursor to option U, down moves cursor to option D
*/
chatbox_EB_option:
	push {lr}
	// mask
	mov r0, #FLAGS_3E_UNK_0010
	bl chatbox_setflags_3e // (int mask) -> void
	mov r0, #0xa
	strh r0, [r5,#oChatbox_BoxYX]
	mov r1, #oChatbox_Unk_80
	ldr r0, [r5,r1]
	mov r2, #0xa0
	mov r3, #0x10
	mul r3, r0
	add r2, r2, r3
	ldrb r3, [r4,#1]
	strb r3, [r5,r2]
	add r2, #4
	ldrb r3, [r4,#2]
	strb r3, [r5,r2]
	add r2, #1
	ldrb r3, [r4,#3]
	strb r3, [r5,r2]
	add r2, #3
	ldr r3, [r5,#0x70]
	str r3, [r5,r2]
	add r0, #1
	str r0, [r5,r1]
	strb r0, [r5,#0x12]
	mov r0, #0
	strb r0, [r5,#0x13]
	add r2, #4
	ldrb r0, [r5,#0xf]
	strb r0, [r5,r2]
	mov r0, #1
	add r4, #4
	pop {pc}
	thumb_func_end chatbox_EB_option

	thumb_local_start
/*
EC = label
Description: continue printing text after an arrow spawned by createchoice
Parameters: 2
Parameter 1 = "spaces" mode (0 = full text spaces, 1 = 1pxl lines)
Parameter 2 = amount of "spaces" before text
Example: EC 01 04 = display text 4 pixels behind an arrow spawned by createchoice
*/
chatbox_EC_label:
	push {lr}
	ldrb r2, [r4,#1]
	cmp r2, #1
	beq loc_80412AA
	ldrb r1, [r4,#2]
	mov r0, #8
	mul r0, r1
	ldr r2, [r5,#0x70]
	add r2, r2, r0
	str r2, [r5,#0x70]
	ldr r1, [r5,#0x7c]
	lsl r0, r0, #2
	add r1, r1, r0
	str r1, [r5,#0x7c]
	add r4, #3
	mov r0, #1
	pop {pc}
loc_80412AA:
	ldrb r0, [r4,#2]
	ldr r2, [r5,#0x70]
	add r2, r2, r0
	str r2, [r5,#0x70]
	ldr r1, [r5,#0x7c]
	lsl r0, r0, #2
	add r1, r1, r0
	str r1, [r5,#0x7c]
	add r4, #3
	mov r0, #1
	pop {pc}
	.word dword_80412C4
dword_80412C4: .word 0x303
	thumb_func_end chatbox_EC_label

	thumb_local_start
chatbox_ED_select:
	push {r3,lr}
	mov r0, #FLAGS_3E_UNK_0001
	bl chatbox_setflags_3e // (int mask) -> void
	ldrb r0, [r5,#oChatbox_ChoiceCursorPos]
	mov r1, #0xa0
	mov r2, #0x10
	mul r2, r0
	add r7, r1, r2
	add r7, #4
	ldrh r0, [r5,r7]
	add r7, #4
	push {r7}
	ldrb r1, [r5,#oChatbox_TextScriptState_04]
	cmp r1, #2
	beq loc_804131E
	ldrh r1, [r5,#0x24] // ChatBoxPropreties.keyPress
	ldr r2, off_8041480 // =byte_8041484
	mov r3, #0xc
loc_80412EE:
	ldrh r6, [r2]
	tst r6, r1
	bne loc_80412FE
	add r2, #2
	sub r3, #4
	cmp r3, #0
	blt loc_804131E
	b loc_80412EE
loc_80412FE:
	mov r6, #0xf0
	bic r1, r6
	strh r1, [r5,#0x24] // ChatBoxPropreties.keyPress
	lsr r0, r3
	mov r1, #0xf
	and r0, r1
	ldrb r1, [r5,#oChatbox_ChoiceCursorPos]
	strb r0, [r5,#oChatbox_ChoiceCursorPos]
	cmp r0, r1
	beq loc_804131E
	mov r0, #0
	strh r0, [r5,#oChatbox_BoxYX]
	mov r2, #0x6c
	ldrh r0, [r5,r2]
	bl sound_play // () -> void
loc_804131E:
	ldrb r0, [r5,#oChatbox_ChoiceCursorPos]
	pop {r7}
	ldrb r0, [r5,#oChatbox_TextScriptState_04]
	cmp r0, #0
	beq loc_8041334
	ldrh r0, [r5,#oChatbox_BoxYX]
	cmp r0, #0
	ble loc_8041334
	sub r0, #1
	strh r0, [r5,#oChatbox_BoxYX]
	b loc_8041362
loc_8041334:
	ldrb r0, [r5,#oChatbox_TextScriptState_04]
	cmp r0, #1
	beq loc_8041354
	cmp r0, #2
	beq loc_804139A
	ldrb r0, [r4,#2]
	mov r1, #0xf
	and r0, r1
	beq loc_8041348
	strb r0, [r5,#oChatbox_ChoiceCursorPos]
loc_8041348:
	mov r0, #1
	strb r0, [r5,#oChatbox_TextScriptState_04]
	// mask
	mov r0, #FLAGS_3E_UNK_0010
	bl chatbox_setflags_3e // (int mask) -> void
	b loc_8041384
loc_8041354:
	ldrh r0, [r5,#oChatbox_JoypadUp]
	mov r1, #1
	tst r0, r1
	bne loc_8041388
	mov r1, #2
	tst r0, r1
	bne loc_8041400
loc_8041362:
	ldrb r0, [r5,#oChatbox_ChoiceCursorPos]
	mov r1, #0xa0
	mov r2, #0x10
	mul r2, r0
	add r0, r1, r2
	add r0, #8
	ldr r1, [r5,r0]
	str r1, [r5,#0x70] // ChatBoxPropreties.unk_70
	add r0, #4
	ldrb r0, [r5,r0]
	ldrb r1, [r5,#0xf] // ChatBoxPropreties.amount_of_box_appeared
	strb r0, [r5,#0xf] // ChatBoxPropreties.amount_of_box_appeared
	push {r1}
	bl chatbox_ED_select_8040944
	pop {r1}
	strb r1, [r5,#0xf]
loc_8041384:
	mov r0, #0
	pop {r3,pc}
loc_8041388:
	mov r0, #0x80
	bl chatbox_maskFlags_3e // (int mask) -> void

	cmp r0, #0
	bne loc_804139A
	mov r1, #0x6e
	ldrh r0, [r5,r1]
	bl sound_play // () -> void
loc_804139A:
	mov r0, #0x50
	bl chatbox_clearFlags_3e // (int mask) -> void
	mov r0, #7
	bl chatbox_clear_eFlags2009F38 // (int a1) ->
	ldrb r0, [r5,#oChatbox_ChoiceCursorPos]
	bl chatbox_set_eFlags2009F38
	ldrb r0, [r5,#oChatbox_ChoiceCursorPos]
	mov r1, #0x80
	ldrb r1, [r5,r1]
	sub r1, #1
	cmp r0, r1
	bne loc_80413C0
	mov r0, #0x10
	bl chatbox_set_eFlags2009F38
	ldrb r0, [r5,#oChatbox_ChoiceCursorPos]
loc_80413C0:
	ldrb r0, [r5,#oChatbox_ChoiceCursorPos]
	add r0, #3
	ldrb r0, [r4,r0]
	cmp r0, #0xff
	bne loc_80413E8
	ldrb r0, [r4,#1]
	ldrb r1, [r4,#2]
	add r4, r4, r0
	mov r2, #0x80
	tst r1, r2
	beq loc_80413EE
	bl chatbox_8045F60
	mov r1, #0
	str r1, [r5,#0x64] // ChatBoxPropreties.unk_64
	mov r1, #1
	str r1, [r5,#oChatbox_Unk_74]
	str r4, [r5,#0x2c] // ChatBoxPropreties.pScriptCursor
	str r4, [r5,#0x34] // ChatBoxPropreties.pCurrScript
	b loc_80413EE
loc_80413E8:
	mov r1, r0
	bl chatbox_config_80408D0 // (int notUsed, u8 scriptID) -> void
loc_80413EE:
	mov r0, #0
	strb r0, [r5,#4]
	mov r0, #4
	str r0, [r5,#0x78] // ChatBoxPropreties.unk_78
	mov r0, #0x20
	bl chatbox_set_eFlags2009F38
	mov r0, #0
	pop {r3,pc}
loc_8041400:
	ldrb r1, [r4,#2]
	mov r2, #0x20
	tst r1, r2
	bne loc_8041468
	mov r2, #0x40
	tst r1, r2
	bne loc_8041448
	ldr r0, off_804147C // =0x110
	bl chatbox_set_eFlags2009F38
	mov r0, #7
	bl chatbox_clear_eFlags2009F38 // (int a1) ->
	mov r0, #0x80 // ChatBoxPropreties.unk_80
	ldr r0, [r5,r0]
	strb r0, [r5,#0x12] // ChatBoxPropreties.unk_12
	sub r0, #1
	strb r0, [r5,#oChatbox_ChoiceCursorPos]
	bl chatbox_set_eFlags2009F38
	mov r0, #0x80
	bl chatbox_maskFlags_3e // (int mask) -> void

	cmp r0, #0
	bne loc_804143A
	mov r1, #0x6a
	ldrh r0, [r5,r1]
	bl sound_play // () -> void
loc_804143A:
	mov r0, #2
	strb r0, [r5,#oChatbox_TextScriptState_04]
	mov r0, #3
	strh r0, [r5,#oChatbox_BoxYX]
	mov r0, #FLAGS_3E_UNK_0010
	bl chatbox_clearFlags_3e // (int mask) -> void
loc_8041448:
	ldrb r0, [r5,#oChatbox_ChoiceCursorPos]
	mov r1, #0xa0
	mov r2, #0x10
	mul r2, r0
	add r0, r1, r2
	add r0, #0xc // ChatBoxPropreties.chatbox_y
	ldrb r0, [r5,r0]
	ldrb r1, [r5,#0xf] // ChatBoxPropreties.amount_of_box_appeared
	strb r0, [r5,#0xf] // ChatBoxPropreties.amount_of_box_appeared
	push {r1}
	bl chatbox_ED_select_8040944
	pop {r1}
	strb r1, [r5,#0xf]
	mov r0, #0
	pop {r3,pc}
loc_8041468:
	ldr r0, off_8041478 // =0x130
	bl chatbox_set_eFlags2009F38
	ldrb r0, [r4,#1]
	ldrb r1, [r4,#2]
	add r4, r4, r0
	mov r0, #1
	pop {r3,pc}
off_8041478: .word 0x130
off_804147C: .word 0x110
off_8041480: .word byte_8041484
byte_8041484: .byte 0x40, 0x0, 0x80, 0x0, 0x20, 0x0, 0x10, 0x0
	.word off_8041490
off_8041490: .word chatbox_ED_select_8040944+1
	.word chatbox_80409E0+1
	.word 0x100
	.word off_80414A0
off_80414A0: .word byte_8070605
	.word 0xC0B0A09
	thumb_func_end chatbox_ED_select

	thumb_local_start
chatbox_EE_pause:
	push {lr}
	ldrb r1, [r4,#1]
	cmp r1, #0xff
	beq loc_8041500
	cmp r1, #2
	beq loc_8041510
	cmp r1, #3
	beq loc_804152A
	cmp r1, #4
	beq loc_8041546
	ldrb r0, [r5,#0x11]
	tst r0, r0
	bne loc_80414C8
	tst r1, r1
	beq loc_80414C8
	b loc_80414F0
loc_80414C8:
	// mask
	mov r0, #FLAGS_3E_UNK_0001
	bl chatbox_setflags_3e // (int mask) -> void
	ldrb r0, [r5,#4]
	cmp r0, #0
	bne loc_80414E2
	ldrb r0, [r4,#2]
	ldrb r1, [r4,#3]
	lsl r1, r1, #8
	orr r0, r1
	strh r0, [r5,#0xc]
	mov r0, #1
	strb r0, [r5,#4]
loc_80414E2:
	ldrh r0, [r5,#0xc]
	cmp r0, #0
	beq loc_80414F0
	sub r0, #1
	strh r0, [r5,#0xc]
	mov r0, #0
	pop {pc}
loc_80414F0:
	mov r0, #FLAGS_3E_UNK_0001
	bl chatbox_clearFlags_3e // (int mask) -> void
	mov r0, #0
	strb r0, [r5,#4]
	add r4, #4
	mov r0, #1
	pop {pc}
loc_8041500:
	// mask
	mov r0, #FLAGS_3E_UNK_0001
	bl chatbox_setflags_3e // (int mask) -> void
	mov r0, #8
	bl chatbox_set_eFlags2009F38
	mov r0, #0
	pop {pc}
loc_8041510:
	ldrb r0, [r4,#2]
	ldrb r1, [r4,#3]
	lsl r1, r1, #8
	orr r0, r1
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne loc_80414F0
	// mask
	mov r0, #FLAGS_3E_UNK_0001
	bl chatbox_setflags_3e // (int mask) -> void
	mov r0, #0
	pop {pc}
loc_804152A:
	ldrb r0, [r4,#2]
	ldrb r1, [r4,#3]
	mov r2, r10
	ldr r2, [r2,#oToolkit_S2011c50_Ptr]
	add r2, #8
	add r2, r2, r0
	ldrb r0, [r2]
	cmp r0, r1
	beq loc_80414F0
	mov r0, #FLAGS_3E_UNK_0001
	bl chatbox_setflags_3e // (int mask) -> void
	mov r0, #0
	pop {pc}
loc_8041546:
	ldrb r0, [r4,#2]
	ldrb r1, [r4,#3]
	lsl r1, r1, #8
	orr r0, r1
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq loc_80414F0
	// mask
	mov r0, #FLAGS_3E_UNK_0001
	bl chatbox_setflags_3e // (int mask) -> void
	mov r0, #0
	pop {pc}
	.word 0x1F2
	.word 0x1F3
	.word 0x1F0
	thumb_func_end chatbox_EE_pause

	thumb_local_start
chatbox_EF_checkflag:
	push {lr}
	ldr r0, off_804157C // =jt_ctrl_8041580
	ldrb r1, [r4,#1]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
off_804157C: .word jt_ctrl_8041580
jt_ctrl_8041580: .word chatbox_804171C+1
	.word chatbox_8041748+1
	.word chatbox_80416C4+1
	.word chatbox_8041774+1
	.word chatbox_80416F0+1
	.word chatbox_80417A4+1
	.word chatbox_80417C0+1
	.word chatbox_80417E4+1
	.word chatbox_8041818+1
	.word chatbox_8041818+1
	.word chatbox_8042A9C+1
	.word chatbox_8042A9C+1
	.word chatbox_8042A9C+1
	.word chatbox_8042A9C+1
	.word chatbox_8042B38+1
	.word chatbox_8042B38+1
	.word chatbox_8042B38+1
	.word chatbox_8042B38+1
	.word chatbox_8042C18+1
	.word chatbox_8042C18+1
	.word chatbox_8042C18+1
	.word chatbox_8042C18+1
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word chatbox_80418CC+1
	.word chatbox_8043A5C+1
	.word chatbox_8043A5C+1
	.word chatbox_8043A5C+1
	.word chatbox_8043A5C+1
	.word 0x0
	.word chatbox_8041904+1
	.word chatbox_8041944+1
	.word chatbox_80419D0+1
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word chatbox_8041694+1
	.word chatbox_8041670+1
	.word chatbox_8041818+1
	.word chatbox_8041964+1
	.word 0x0
	.word 0x0
	.word chatbox_804198C+1
	.word chatbox_80419B4+1
	.word 0x0
	.word chatbox_80419F8+1
	.word chatbox_8041A28+1
	.word chatbox_8041A4C+1
	.word chatbox_8041A7C+1
	.word chatbox_8041A7C+1
	.word chatbox_8041A7C+1
	.word chatbox_8041A7C+1
	.word chatbox_8041A7C+1
	.word chatbox_8041A7C+1
	.word 0x0
	.word chatbox_8041ABC+1
	thumb_func_end chatbox_EF_checkflag

	thumb_local_start
chatbox_8041670:
	push {lr}
	ldr r0, off_8041690 // =off_8043C84
	ldrb r1, [r4,#2]
	lsl r1, r1, #2
	ldr r1, [r0,r1]
	ldrb r1, [r1]
	cmp r1, #0xff
	beq loc_8041688
	bl chatbox_config_80408D0 // (int notUsed, u8 scriptID) -> void
	mov r0, #1
	pop {pc}
loc_8041688:
	add r4, #3
	mov r0, #1
	pop {pc}
	.byte 0, 0
off_8041690: .word off_8043C84
	thumb_func_end chatbox_8041670

	thumb_local_start
chatbox_8041694:
	push {lr}
	ldrb r1, [r4,#2]
	ldrb r0, [r4,#3]
	lsl r0, r0, #8
	orr r0, r1
	ldrb r1, [r4,#4]
	mov r0, r0
	mov r2, r1
	bl TestEventFlagRange // (int a3, int a2) ->
	bne loc_80416AE
	mov r2, #6
	b loc_80416B0
loc_80416AE:
	mov r2, #5
loc_80416B0:
	ldrb r1, [r4,r2]
	cmp r1, #0xff
	beq loc_80416BE
	bl chatbox_config_80408D0 // (int notUsed, u8 scriptID) -> void
	mov r0, #1
	pop {pc}
loc_80416BE:
	add r4, #7
	mov r0, #1
	pop {pc}
	thumb_func_end chatbox_8041694

	thumb_local_start
chatbox_80416C4:
	push {lr}
	ldrb r1, [r4,#2]
	ldrb r2, [r4,#3]
	mov r3, r10
	ldr r3, [r3,#oToolkit_GameStatePtr]
	ldrb r3, [r3,#oGameState_MapNumber]
	mov r0, #5
	cmp r3, r1
	blt loc_80416DC
	cmp r3, r2
	bgt loc_80416DC
	mov r0, #4
loc_80416DC:
	ldrb r1, [r4,r0]
	cmp r1, #0xff
	beq loc_80416EA
	bl chatbox_config_80408D0 // (int notUsed, u8 scriptID) -> void
	mov r0, #1
	pop {pc}
loc_80416EA:
	add r4, #6
	mov r0, #1
	pop {pc}
	thumb_func_end chatbox_80416C4

	thumb_local_start
chatbox_80416F0:
	push {lr}
	ldrb r1, [r4,#2]
	ldrb r2, [r4,#3]
	mov r3, r10
	ldr r3, [r3,#oToolkit_GameStatePtr]
	ldrb r3, [r3,#oGameState_MapGroup]
	mov r0, #5
	cmp r3, r1
	blt loc_8041708
	cmp r3, r2
	bgt loc_8041708
	mov r0, #4
loc_8041708:
	ldrb r1, [r4,r0]
	cmp r1, #0xff
	beq loc_8041716
	bl chatbox_config_80408D0 // (int notUsed, u8 scriptID) -> void
	mov r0, #1
	pop {pc}
loc_8041716:
	add r4, #6
	mov r0, #1
	pop {pc}
	thumb_func_end chatbox_80416F0

	thumb_local_start
chatbox_804171C:
	push {lr}
	ldrb r0, [r4,#2]
	ldrb r2, [r4,#3]
	lsl r2, r2, #8
	orr r0, r2
	mov r2, #0
	mov r0, r0
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne loc_8041732
	mov r2, #1
loc_8041732:
	add r2, #4
	ldrb r1, [r4,r2]
	cmp r1, #0xff
	beq loc_8041742
	bl chatbox_config_80408D0 // (int notUsed, u8 scriptID) -> void
	mov r0, #1
	pop {pc}
loc_8041742:
	add r4, #6
	mov r0, #1
	pop {pc}
	thumb_func_end chatbox_804171C

	thumb_local_start
chatbox_8041748:
	push {lr}
	ldrb r1, [r4,#2]
	ldrb r2, [r4,#3]
	mov r3, r10
	ldr r3, [r3,#oToolkit_GameStatePtr]
	ldrb r3, [r3,#oGameState_GameProgress]
	mov r0, #5
	cmp r3, r1
	blt loc_8041760
	cmp r3, r2
	bgt loc_8041760
	mov r0, #4
loc_8041760:
	ldrb r1, [r4,r0]
	cmp r1, #0xff
	beq loc_804176E
	bl chatbox_config_80408D0 // (int notUsed, u8 scriptID) -> void
	mov r0, #1
	pop {pc}
loc_804176E:
	add r4, #6
	mov r0, #1
	pop {pc}
	thumb_func_end chatbox_8041748

	thumb_local_start
chatbox_8041774:
	push {lr}
	ldr r0, off_80417A0 // =off_8043C64
	ldrb r1, [r4,#2]
	lsl r1, r1, #2
	ldr r1, [r0,r1]
	ldrb r1, [r1]
	ldrb r2, [r4,#3]
	mov r0, #5
	cmp r1, r2
	bne loc_804178A
	mov r0, #4
loc_804178A:
	ldrb r1, [r4,r0]
	cmp r1, #0xff
	beq loc_8041798
	bl chatbox_config_80408D0 // (int notUsed, u8 scriptID) -> void
	mov r0, #1
	pop {pc}
loc_8041798:
	add r4, #6
	mov r0, #1
	pop {pc}
	.byte 0, 0
off_80417A0: .word off_8043C64
	thumb_func_end chatbox_8041774

	thumb_local_start
chatbox_80417A4:
	push {lr}
	mov r0, #2
	mov r0, #3
	ldrb r1, [r4,r0]
	cmp r1, #0xff
	beq loc_80417B8
	bl chatbox_config_80408D0 // (int notUsed, u8 scriptID) -> void
	mov r0, #1
	pop {pc}
loc_80417B8:
	add r4, #4
	mov r0, #1
	pop {pc}
	.byte 0, 0
	thumb_func_end chatbox_80417A4

	thumb_local_start
chatbox_80417C0:
	push {lr}
	bl notZero_eByte200AD04
	bne loc_80417CC
	mov r0, #2
	b loc_80417CE
loc_80417CC:
	mov r0, #3
loc_80417CE:
	ldrb r1, [r4,r0]
	cmp r1, #0xff
	beq loc_80417DC
	bl chatbox_config_80408D0 // (int notUsed, u8 scriptID) -> void
	mov r0, #1
	pop {pc}
loc_80417DC:
	add r4, #4
	mov r0, #1
	pop {pc}
	.balign 4, 0x00
	thumb_func_end chatbox_80417C0

	thumb_local_start
chatbox_80417E4:
	push {lr}
	push {r4,r5}
	ldrb r0, [r4,#2]
	bl sub_803CE28
	pop {r4,r5}
	ldrb r1, [r4,#3]
	mov r2, #0
	cmp r0, r1
	beq loc_8041800
	add r2, #1
	cmp r0, r1
	bgt loc_8041800
	add r2, #1
loc_8041800:
	add r2, #4
	ldrb r1, [r4,r2]
	cmp r1, #0xff
	beq loc_8041810
	bl chatbox_config_80408D0 // (int notUsed, u8 scriptID) -> void
	mov r0, #1
	pop {pc}
loc_8041810:
	add r4, #7
	mov r0, #1
	pop {pc}
	.balign 4, 0x00
	thumb_func_end chatbox_80417E4

	thumb_local_start
chatbox_8041818:
	push {lr}
	ldrb r0, [r4,#1]
	cmp r0, #9
	beq loc_804184C
	cmp r0, #0x2a
	beq loc_804188A
	push {r4,r5}
	ldrb r0, [r4,#2]
	ldrb r1, [r4,#3]
	lsl r1, r1, #8
	orr r0, r1
	ldrb r1, [r4,#4]
	bl GetChipCountOfCode
	pop {r4,r5}
	ldrb r1, [r4,#5]
	mov r2, #0
	cmp r0, r1
	beq loc_8041846
	add r2, #1
	cmp r0, r1
	bgt loc_8041846
	add r2, #1
loc_8041846:
	add r2, #6
	ldrb r1, [r4,r2]
	b loc_80418AE
loc_804184C:
	push {r4,r5}
	ldrb r0, [r4,#2]
	ldrb r1, [r4,#3]
	lsl r1, r1, #8
	orr r0, r1
	ldrb r1, [r4,#4]
	bl GetChipCountOfCode
	pop {r4,r5}
	push {r0,r4,r5}
	ldrb r0, [r4,#2]
	ldrb r1, [r4,#3]
	lsl r1, r1, #8
	orr r0, r1
	ldrb r1, [r4,#4]
	bl sub_8021C02
	mov r1, r0
	pop {r0,r4,r5}
	sub r0, r0, r1
	ldrb r1, [r4,#5]
	mov r2, #0
	cmp r0, r1
	beq loc_8041884
	add r2, #1
	cmp r0, r1
	bgt loc_8041884
	add r2, #1
loc_8041884:
	add r2, #6
	ldrb r1, [r4,r2]
	b loc_80418AE
loc_804188A:
	push {r4,r5}
	ldrb r0, [r4,#2]
	ldrb r1, [r4,#3]
	lsl r1, r1, #8
	orr r0, r1
	bl GetTotalChipCount
	pop {r4,r5}
	ldrb r1, [r4,#4]
	mov r2, #0
	cmp r0, r1
	beq loc_80418AA
	add r2, #1
	cmp r0, r1
	bgt loc_80418AA
	add r2, #1
loc_80418AA:
	add r2, #5
	ldrb r1, [r4,r2]
loc_80418AE:
	cmp r1, #0xff
	beq loc_80418BA
	bl chatbox_config_80408D0 // (int notUsed, u8 scriptID) -> void
	mov r0, #1
	pop {pc}
loc_80418BA:
	ldrb r0, [r4,#1]
	cmp r0, #0x2a
	beq loc_80418C4
	add r4, #9
	b loc_80418C6
loc_80418C4:
	add r4, #8
loc_80418C6:
	mov r0, #1
	pop {pc}
	.balign 4, 0x00
	thumb_func_end chatbox_8041818

	thumb_local_start
chatbox_80418CC:
	push {r6,lr}
	ldrb r6, [r4,#3]
	mov r3, #0
	mov r2, #0
loc_80418D4:
	cmp r3, r6
	beq loc_80418EC
	ldrb r0, [r4,#2]
	add r0, r0, r3
	push {r2-r5}
	bl sub_803CE28
	pop {r2-r5}
	tst r0, r0
	bne loc_80418EE
	add r3, #1
	b loc_80418D4
loc_80418EC:
	mov r2, #1
loc_80418EE:
	add r2, #4
	ldrb r1, [r4,r2]
	cmp r1, #0xff
	beq loc_80418FE
	bl chatbox_config_80408D0 // (int notUsed, u8 scriptID) -> void
	mov r0, #1
	pop {r6,pc}
loc_80418FE:
	add r4, #6
	mov r0, #1
	pop {r6,pc}
	thumb_func_end chatbox_80418CC

	thumb_local_start
chatbox_8041904:
	push {r6,r7,lr}
	mov r7, #0
	ldrb r6, [r4,#3]
	mov r3, #0
	mov r2, #0
loc_804190E:
	cmp r3, r6
	beq loc_8041928
	ldrb r0, [r4,#2]
	add r0, r0, r3
	push {r2-r5}
	bl sub_803CE28
	pop {r2-r5}
	add r3, #1
	tst r0, r0
	beq loc_804190E
	add r7, #1
	b loc_804190E
loc_8041928:
	cmp r7, #2
	beq loc_804192E
	mov r2, #1
loc_804192E:
	add r2, #4
	ldrb r1, [r4,r2]
	cmp r1, #0xff
	beq loc_804193E
	bl chatbox_config_80408D0 // (int notUsed, u8 scriptID) -> void
	mov r0, #1
	pop {r6,r7,pc}
loc_804193E:
	add r4, #6
	mov r0, #1
	pop {r6,r7,pc}
	thumb_func_end chatbox_8041904

	thumb_local_start
chatbox_8041944:
	push {r6,r7,lr}
	bl eStruct200A008_getUnk01
	mov r2, r0
	add r2, #1
	ldrb r1, [r4,r2]
	cmp r1, #0xff
	beq loc_804195C
	bl chatbox_config_80408D0 // (int notUsed, u8 scriptID) -> void
	mov r0, #1
	pop {r6,r7,pc}
loc_804195C:
	add r4, #6
	mov r0, #1
	pop {r6,r7,pc}
	.balign 4, 0x00
	thumb_func_end chatbox_8041944

	thumb_local_start
chatbox_8041964:
	push {lr}
	mov r1, #6
	mov r0, r0
	mov r2, r1
	bl TestEventFlagRange // (int a3, int a2) ->
	bne loc_8041976
	mov r2, #3
	b loc_8041978
loc_8041976:
	mov r2, #2
loc_8041978:
	ldrb r1, [r4,r2]
	cmp r1, #0xff
	beq loc_8041986
	bl chatbox_config_80408D0 // (int notUsed, u8 scriptID) -> void
	mov r0, #1
	pop {pc}
loc_8041986:
	add r4, #4
	mov r0, #1
	pop {pc}
	thumb_func_end chatbox_8041964

	thumb_local_start
chatbox_804198C:
	push {lr}
	ldr r0, off_80419B0 // =off_8043C64
	ldrb r1, [r4,#2]
	lsl r1, r1, #2
	ldr r1, [r0,r1]
	ldrb r0, [r1]
	add r0, #3
	ldrb r1, [r4,r0]
	cmp r1, #0xff
	beq loc_80419A8
	bl chatbox_config_80408D0 // (int notUsed, u8 scriptID) -> void
	mov r0, #1
	pop {pc}
loc_80419A8:
	add r4, #0xf
	mov r0, #1
	pop {pc}
	.byte 0, 0
off_80419B0: .word off_8043C64
	thumb_func_end chatbox_804198C

	thumb_local_start
chatbox_80419B4:
	push {lr}
	bl getPETNaviSelect // () -> u8
	add r0, #2
	ldrb r1, [r4,r0]
	cmp r1, #0xff
	beq loc_80419CA
	bl chatbox_config_80408D0 // (int notUsed, u8 scriptID) -> void
	mov r0, #1
	pop {pc}
loc_80419CA:
	add r4, #0xe
	mov r0, #1
	pop {pc}
	thumb_func_end chatbox_80419B4

	thumb_local_start
chatbox_80419D0:
	push {lr}
	ldrb r0, [r4,#2]
	push {r4,r5}
	bl sub_8048C24
	pop {r4,r5}
	mov r1, #4
	tst r0, r0
	beq loc_80419E4
	mov r1, #3
loc_80419E4:
	ldrb r1, [r4,r1]
	cmp r1, #0xff
	beq loc_80419F2
	bl chatbox_config_80408D0 // (int notUsed, u8 scriptID) -> void
	mov r0, #1
	pop {pc}
loc_80419F2:
	add r4, #5
	mov r0, #1
	pop {pc}
	thumb_func_end chatbox_80419D0

	thumb_local_start
chatbox_80419F8:
	push {lr}
	bl getPETNaviSelect // () -> u8
	mov r1, #0x3e
	bl sub_80137FE
	ldrb r1, [r4,#2]
	ldrb r2, [r4,#3]
	lsl r2, r2, #8
	orr r1, r2
	mov r3, #4
	cmp r0, r1
	bge loc_8041A14
	mov r3, #5
loc_8041A14:
	ldrb r1, [r4,r3]
	cmp r1, #0xff
	beq loc_8041A22
	bl chatbox_config_80408D0 // (int notUsed, u8 scriptID) -> void
	mov r0, #1
	pop {pc}
loc_8041A22:
	add r4, #6
	mov r0, #1
	pop {pc}
	thumb_func_end chatbox_80419F8

	thumb_local_start
chatbox_8041A28:
	push {lr}
	mov r0, #6
	bl sub_81207F8
	cmp r0, #0xc
	bge loc_8041A38
	ldrb r1, [r4,#3]
	b loc_8041A3A
loc_8041A38:
	ldrb r1, [r4,#2]
loc_8041A3A:
	cmp r1, #0xff
	beq loc_8041A46
	bl chatbox_config_80408D0 // (int notUsed, u8 scriptID) -> void
	mov r0, #1
	pop {pc}
loc_8041A46:
	add r4, #4
	mov r0, #1
	pop {pc}
	thumb_func_end chatbox_8041A28

	thumb_local_start
chatbox_8041A4C:
	push {lr}
	ldrb r1, [r4,#2]
	ldr r2, off_8041AB0 // =byte_8041AB4
	ldrb r0, [r2,r1]
	bl sub_81207F8
	ldrb r1, [r4,#3]
	ldrb r2, [r4,#4]
	mov r3, #6
	cmp r0, r1
	blt loc_8041A68
	cmp r0, r2
	bgt loc_8041A68
	mov r3, #5
loc_8041A68:
	ldrb r1, [r4,r3]
	cmp r1, #0xff
	beq loc_8041A76
	bl chatbox_config_80408D0 // (int notUsed, u8 scriptID) -> void
	mov r0, #1
	pop {pc}
loc_8041A76:
	add r4, #7
	mov r0, #1
	pop {pc}
	thumb_func_end chatbox_8041A4C

	thumb_local_start
chatbox_8041A7C:
	push {lr}
	ldrb r1, [r4,#1]
	sub r1, #0x34
	ldr r2, off_8041AB0 // =byte_8041AB4
	ldrb r0, [r2,r1]
	bl sub_81207F8
	ldrb r1, [r4,#2]
	ldrb r2, [r4,#3]
	mov r3, #5
	cmp r0, r1
	blt loc_8041A9A
	cmp r0, r2
	bgt loc_8041A9A
	mov r3, #4
loc_8041A9A:
	ldrb r1, [r4,r3]
	cmp r1, #0xff
	beq loc_8041AA8
	bl chatbox_config_80408D0 // (int notUsed, u8 scriptID) -> void
	mov r0, #1
	pop {pc}
loc_8041AA8:
	add r4, #6
	mov r0, #1
	pop {pc}
	.byte 0, 0
off_8041AB0: .word byte_8041AB4
byte_8041AB4: .byte 0x0, 0x1, 0x2, 0x4, 0x5, 0x6, 0x0, 0x0
	thumb_func_end chatbox_8041A7C

	thumb_local_start
chatbox_8041ABC:
	push {lr}
	bl reqBBS_getTotalPointsIndex // () -> u8
	mov r1, #2
	add r0, r0, r1
	ldrb r1, [r4,r0]
	cmp r1, #0xff
	beq loc_8041AD4
	bl chatbox_config_80408D0 // (int notUsed, u8 scriptID) -> void
	mov r0, #1
	pop {pc}
loc_8041AD4:
	add r4, #7
	mov r0, #1
	pop {pc}
	.balign 4, 0x00
	thumb_func_end chatbox_8041ABC

	thumb_local_start
/*
F0 = jump
Description: execute a different script
F0 00 XX = execute script XX (FF will continue with the current script)
F0 01 = load 8-bit script number from 02009D6C and execute that script (if the number is FF, it will continue with the current script)
F0 02 XX = store XX into 02009D6C (if XX = FFh, nothing happens and the script continues)
F0 XX = ? (this is for XX above 02)
*/
chatbox_F0_jump:
	push {lr}
	ldrb r0, [r4,#1]
	cmp r0, #2
	beq loc_8041B8C
	cmp r0, #1
	beq loc_8041B76
	tst r0, r0
	bne loc_8041AFA
	ldrb r1, [r4,#2]
loc_8041AEE:
	cmp r1, #0xff
	beq loc_8041B9C
	bl chatbox_config_80408D0 // (int notUsed, u8 scriptID) -> void
	mov r0, #1
	pop {pc}
loc_8041AFA:
	ldrb r0, [r4,#1]
	mov r1, #0x40
	b loc_8041B00
loc_8041B00:
	mov r0, r10
	ldr r0, [r0,#oToolkit_CurFramePtr]
	ldrh r0, [r0]
	mov r6, #3
	and r6, r0
	add r6, #2
loc_8041B0C:
	bl GetRNG2 // () -> int
	sub r6, #1
	bgt loc_8041B0C
	lsl r0, r0, #0x16
	lsr r0, r0, #0x16
	b loc_8041B1A
loc_8041B1A:
	ldrb r2, [r4,#1]
	lsr r6, r2, #7
	push {r0,r2}
	// entryIdx
	mov r0, #0x17
	// byteFlagIdx
	mov r1, #9
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	pop {r0,r2}
	bne loc_8041B2E
	mov r6, #0
loc_8041B2E:
	push {r2,r6}
	add r6, #2
	lsl r2, r2, #0x1a
	lsr r2, r2, #0x1a
	add r2, #2
	mov r1, #0
loc_8041B3A:
	ldrb r3, [r4,r2]
	add r1, r1, r3
	sub r2, #1
	cmp r2, r6
	bge loc_8041B3A
	svc 6
	pop {r2,r6}
	lsl r2, r2, #0x1a
	lsr r2, r2, #0x1a
	add r2, #2
	mov r3, #0
	mov r7, #2
	add r7, r7, r6
loc_8041B54:
	ldrb r0, [r4,r7]
	add r3, r3, r0
	cmp r3, r1
	bgt loc_8041B64
	add r7, #1
	cmp r7, r2
	ble loc_8041B54
	mov r7, #2
loc_8041B64:
	ldrb r2, [r4,#1]
	lsl r2, r2, #0x1a
	lsr r2, r2, #0x1a
	add r2, #1
	add r4, r4, r2
	ldrb r1, [r4,r7]
	add r4, r4, r2
	sub r4, #1
	b loc_8041AEE
loc_8041B76:
	mov r2, #0x9c
	ldrb r1, [r5,r2]
	cmp r1, #0xff
	beq loc_8041B86
	bl chatbox_config_80408D0 // (int notUsed, u8 scriptID) -> void
	mov r0, #1
	pop {pc}
loc_8041B86:
	add r4, #2
	mov r0, #1
	pop {pc}
loc_8041B8C:
	ldrb r1, [r4,#2]
	cmp r1, #0xff
	beq loc_8041B9C
	mov r2, #0x9c
	strb r1, [r5,r2]
	add r4, #3
	mov r0, #1
	pop {pc}
loc_8041B9C:
	add r4, #3
	mov r0, #1
	pop {pc}
	.balign 4, 0x00
	thumb_func_end chatbox_F0_jump

	thumb_local_start
chatbox_F1_textspeed:
	push {lr}
	ldrb r0, [r4,#2]
	strb r0, [r5,#8]
	add r1, r0, #1
	ldr r2, dword_8041BD4 // =0x1f3
	strb r1, [r5,r2]
	cmp r0, #0
	bne loc_8041BC2
	mov r0, #1
	ldr r2, dword_8041BD4 // =0x1f3
	strb r0, [r5,r2]
	// mask
	mov r0, #FLAGS_3E_UNK_0040
	bl chatbox_setflags_3e // (int mask) -> void
	b loc_8041BC8
loc_8041BC2:
	ldr r0, Flags8041BD0 // =FLAGS_3E_UNK_0800
	bl chatbox_setflags_3e // (int mask) -> void
loc_8041BC8:
	add r4, #3
	mov r0, #1
	pop {pc}
	.byte 0, 0
Flags8041BD0: .word FLAGS_3E_UNK_0800
dword_8041BD4: .word 0x1F3
	thumb_func_end chatbox_F1_textspeed

	thumb_local_start
chatbox_F2_clearmsgbox:
	push {lr}
	ldr r0, Flags8041C50 // =0x200
	bl chatbox_set_eFlags2009F38
	ldrb r2, [r5,#oChatbox_TextScriptPrintSpeed]
	tst r2, r2
	beq loc_8041BF2
	mov r0, #FLAGS_3E_UNK_0001
	bl chatbox_setflags_3e // (int mask) -> void
	mov r0, #FLAGS_3E_UNK_0040
	bl chatbox_clearFlags_3e // (int mask) -> void
loc_8041BF2:
	ldr r0, Flags8041C3C // =FLAGS_3E_UNK_0400
	ldr r1, Flags8041C40 // =FLAGS_3E_UNK_0800
	orr r0, r1
	bl chatbox_clearFlags_3e // (int mask) -> void
	add r4, #1
	str r4, [r5,#oChatbox_CurrTextScriptPtr]
	mov r0, #0
	strb r0, [r5,#oChatbox_TextScriptState_04]
	str r0, [r5,#oChatbox_Unk_64]
	strb r0, [r5,#oChatbox_Unk_12]
	strb r0, [r5,#oChatbox_CurrLine]
	strb r0, [r5,#oChatbox_Unk_17]
	mov r1, #oChatbox_Unk_3D
	strb r0, [r5,r1]
	mov r1, #oChatbox_Unk_80
	str r0, [r5,r1]
	mov r0, #4
	str r0, [r5,#oChatbox_Unk_78]
	mov r0, #1
	strb r0, [r5,#oChatbox_JumpTableOffset_11]
	str r0, [r5,#oChatbox_Unk_74]
	ldrb r0, [r5,#oChatbox_TextScriptPrintSpeed]
	ldrb r0, [r5,#oChatbox_TextScriptCharIdx]
	mov r1, r5
	add r1, #oChatbox_Unk_94
	strb r0, [r1]
	bl chatbox_8045F60
	mov r0, #0
	ldr r1, off_8041C44 // =off_8041C48
	ldr r2, [r1]
	strh r0, [r5,r2]
	ldr r2, [r1,#0x4] // (dword_8041C4C - 0x8041c48)
	strh r0, [r5,r2]
	mov r0, #1
	pop {pc}
Flags8041C3C: .word FLAGS_3E_UNK_0400
Flags8041C40: .word FLAGS_3E_UNK_0800
off_8041C44: .word off_8041C48
off_8041C48: .word 0x1D4
dword_8041C4C: .word 0x1D6
Flags8041C50: .word 0x200
	thumb_func_end chatbox_F2_clearmsgbox

	thumb_local_start
chatbox_F3_control:
	push {lr}
	ldrb r0, [r4,#1]
	cmp r0, #0
	beq loc_8041C78
	cmp r0, #1
	beq loc_8041C6E
	cmp r0, #2
	beq loc_8041C64
loc_8041C64:
	ldrb r0, [r4,#2]
	bl chatbox_set_eFlags2009F38
	add r4, #3
	b loc_8041C80
loc_8041C6E:
	mov r0, #0x40
	bl chatbox_clear_eFlags2009F38 // (int a1) ->
	add r4, #2
	b loc_8041C80
loc_8041C78:
	mov r0, #0x40
	bl chatbox_set_eFlags2009F38
	add r4, #2
loc_8041C80:
	mov r0, #1
	pop {pc}
	thumb_func_end chatbox_F3_control

// () ->
	thumb_local_start
chatbox_F4_unk:
	push {lr}
	ldrb r0, [r4,#1]
	lsr r1, r0, #4
	lsl r1, r1, #4
	cmp r1, #0x10
	bne loc_8041C94
	bl chatbox_8041DF4
loc_8041C94:
	cmp r0, #0
	beq loc_8041CA0
	cmp r0, #1
	beq loc_8041CC6
	cmp r0, #2
	beq loc_8041CD8
loc_8041CA0:
	push {r4,r5}
	mov r0, #0x73
	bl sound_play // () -> void
	ldrb r0, [r4,#2]
	cmp r0, #0xff
	bne loc_8041CB8
	ldr r0, [r5,#0x54]
	ldr r3, dword_8041CF0 // =0x72
	sub r1, r0, r3
	add r1, #1
	str r1, [r5,#0x4c]
loc_8041CB8:
	ldrb r1, [r4,#3]
	bl sub_803CD98
	pop {r4,r5}
	add r4, #4
	mov r0, #1
	pop {pc}
loc_8041CC6:
	push {r4,r5}
	ldrb r0, [r4,#2]
	ldrb r1, [r4,#3]
	bl sub_803CE08
	pop {r4,r5}
	add r4, #4
	mov r0, #1
	pop {pc}
loc_8041CD8:
	push {r4,r5}
	mov r0, #0x73
	bl sound_play // () -> void
	ldrb r0, [r4,#2]
	ldrb r1, [r4,#3]
	bl sub_803CDF8
	pop {r4,r5}
	add r4, #4
	mov r0, #1
	pop {pc}
dword_8041CF0: .word 0x72
	thumb_func_end chatbox_F4_unk

	thumb_local_start
chatbox_F5_mugshot:
	push {lr}
	ldrb r0, [r4,#1]
	cmp r0, #1
	beq loc_8041D74
	cmp r0, #2
	beq loc_8041D7E
	cmp r0, #3
	beq loc_8041D86
	cmp r0, #4
	beq loc_8041D94
	mov r0, #2
	bl chatbox_maskFlags_3e // (int mask) -> void

	bne loc_8041D28
	mov r0, #FLAGS_3E_MUGSHOT_ACTIVE
	bl chatbox_setflags_3e // (int mask) -> void
	mov r0, #FLAGS_3E_UNK_0004
	bl chatbox_setflags_3e // (int mask) -> void
	ldr r0, dword_8041DB0 // =0x1000
	bl chatbox_maskFlags_3e // (int mask) -> void

	bne loc_8041D28
	ldr r0, dword_8041DA8 // =0x18c6
	str r0, [r5,#0x40]
loc_8041D28:
	ldrb r0, [r4,#2]
	mov r1, #0
	ldr r2, off_8041DA0 // =byte_8044244
loc_8041D2E:
	ldrb r3, [r2]
	cmp r3, #0xff
	beq loc_8041D3E
	cmp r3, r0
	beq loc_8041D3C
	add r2, #2
	b loc_8041D2E
loc_8041D3C:
	ldrb r1, [r2,#1]
loc_8041D3E:
	strb r1, [r5,#7]
	ldr r1, off_8041DB4 // =0x1f0
	ldrb r7, [r5,r1]
	cmp r7, #3
	beq loc_8041D4A
	mov r7, #0
loc_8041D4A:
	mov r1, #1
	ldr r2, off_8041DA4 // =byte_8044260
loc_8041D4E:
	ldrb r3, [r2]
	cmp r3, #0xff
	beq loc_8041D60
	cmp r3, r0
	beq loc_8041D5C
	add r2, #2
	b loc_8041D4E
loc_8041D5C:
	ldrb r7, [r2,#1]
	mov r1, #0
loc_8041D60:
	strb r1, [r5,#0x14]
	strb r7, [r5,#0xa]
	mov r3, #0x98
	strb r7, [r5,r3]
	mov r2, #0xff
	strb r2, [r5,#0xb]
	bl dword_8040B38+2
	add r4, #3
	b loc_8041D9C
loc_8041D74:
	mov r0, #FLAGS_3E_MUGSHOT_ACTIVE
	bl chatbox_clearFlags_3e // (int mask) -> void
	add r4, #2
	b loc_8041D9C
loc_8041D7E:
	ldrb r0, [r4,#2]
	strb r0, [r5,#7]
	add r4, #3
	b loc_8041D9C
loc_8041D86:
	ldrb r0, [r4,#2]
	ldr r1, off_8041DB4 // =0x1f0
	strb r0, [r5,r1]
	ldr r1, off_8041DB8 // =0x1f1
	strb r0, [r5,r1]
	add r4, #3
	b loc_8041D9C
loc_8041D94:
	ldrb r0, [r4,#2]
	mov r2, #0x90
	str r0, [r5,r2]
	add r4, #3
loc_8041D9C:
	mov r0, #1
	pop {pc}
off_8041DA0: .word byte_8044244
off_8041DA4: .word byte_8044260
dword_8041DA8: .word 0x18C6
	.word i_joGameSubsysSel
dword_8041DB0: .word 0x1000
off_8041DB4: .word 0x1F0
off_8041DB8: .word 0x1F1
	thumb_func_end chatbox_F5_mugshot

	thumb_local_start
chatbox_F6_textcolor:
	push {lr}
	ldrb r0, [r4,#1]
	tst r0, r0
	bne loc_8041DD6
	ldrb r0, [r4,#2]
	lsl r0, r0, #5
	ldr r1, off_8041DEC // =dword_86B7AA0
	add r0, r0, r1
	ldr r1, off_8041DF0 // =byte_3001710
	mov r2, #0x20
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
	b loc_8041DE6
loc_8041DD6:
	ldrb r0, [r4,#2]
	lsl r0, r0, #2
	add r0, #0x4c
	ldr r0, [r5,r0]
	ldr r1, off_8041DF0 // =byte_3001710
	mov r2, #0x20
	bl CopyByEightWords // (u32 *src, u32 *dest, int byteCount) -> void
loc_8041DE6:
	add r4, #3
	mov r0, #1
	pop {pc}
off_8041DEC: .word dword_86B7AA0
off_8041DF0: .word byte_3001710
	thumb_func_end chatbox_F6_textcolor

	thumb_local_start
chatbox_8041DF4:
	sub r0, #16
	cmp r0, #0
	beq loc_8041E12
	cmp r0, #1
	beq loc_8041E40
	cmp r0, #2
	beq loc_8041E5A
	mov r0, #0x73
	bl sound_play // () -> void
	bl sub_811FFC0 // () -> void
	add r4, #2
	mov r0, #1
	pop {pc}
loc_8041E12:
	push {r4,r5}
	mov r0, #0x73
	bl sound_play // () -> void
	ldrb r0, [r4,#2]
	ldrb r1, [r4,#3]
	lsl r1, r1, #8
	orr r0, r1
	ldr r1, dword_8041E7C // =0xffff
	cmp r0, r1
	bne loc_8041E2A
	ldr r0, [r5,#0x54]
loc_8041E2A:
	ldrb r1, [r4,#4]
	cmp r1, #0xff
	bne loc_8041E32
	ldr r1, [r5,#0x58]
loc_8041E32:
	ldrb r2, [r4,#5]
	bl sub_8021AEE
	pop {r4,r5}
	add r4, #6
	mov r0, #1
	pop {pc}
loc_8041E40:
	push {r4,r5}
	ldrb r0, [r4,#2]
	ldrb r1, [r4,#3]
	lsl r1, r1, #8
	orr r0, r1
	ldrb r1, [r4,#4]
	ldrb r2, [r4,#5]
	bl sub_8021B92 // (int idx, int searchItem, int off) -> void*
	pop {r4,r5}
	add r4, #6
	mov r0, #1
	pop {pc}
loc_8041E5A:
	push {r4,r5}
	mov r0, #0x73
	bl sound_play // () -> void
	ldrb r0, [r4,#2]
	ldrb r1, [r4,#3]
	lsl r1, r1, #8
	// idx
	orr r0, r1
	// searchItem
	ldrb r1, [r4,#4]
	// off
	ldrb r2, [r4,#5]
	bl sub_8021B78 // (int idx, int searchItem, int off) -> void*
	pop {r4,r5}
	add r4, #6
	mov r0, #1
	pop {pc}
	.balign 4, 0x00
dword_8041E7C: .word 0xFFFF
	thumb_func_end chatbox_8041DF4

	thumb_local_start
chatbox_F8_playeranimation:
	push {lr}
	ldr r0, off_8041E90 // =off_8041E94
	ldrb r1, [r4,#1]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
off_8041E90: .word off_8041E94
off_8041E94: .word chatbox_8041EB0+1
	.word chatbox_8041EE8+1
	.word chatbox_8041F10+1
	.word chatbox_8041F1C+1
	.word chatbox_8041F44+1
	.word chatbox_8041EE8+1
	.word chatbox_8041F44+1
	thumb_func_end chatbox_F8_playeranimation

	thumb_local_start
chatbox_8041EB0:
	push {lr}
	// mask
	mov r0, #FLAGS_3E_UNK_0001
	bl chatbox_setflags_3e // (int mask) -> void
	ldrb r0, [r5,#oChatbox_TextScriptState_04]
	tst r0, r0
	bne loc_8041EC8
	bl updateFlags_809E0B0 // () -> void
	mov r0, #1
	strb r0, [r5,#4]
	b loc_8041EE2
loc_8041EC8:
	bl sub_809E228
	cmp r0, #0
	bne loc_8041EE2
	bl sub_809E2B8
	bl sub_809E13C
	mov r0, #0
	strb r0, [r5,#4]
	add r4, #2
	mov r0, #1
	pop {pc}
loc_8041EE2:
	mov r0, #0
	pop {pc}
	.balign 4, 0x00
	thumb_func_end chatbox_8041EB0

	thumb_local_start
chatbox_8041EE8:
	push {lr}
	// mask
	mov r0, #FLAGS_3E_UNK_0001
	bl chatbox_setflags_3e // (int mask) -> void
	mov r7, r10
	ldr r7, [r7,#oToolkit_GameStatePtr]
	ldr r7, [r7,#oGameState_OverworldPlayerObjectPtr]
	mov r1, r5
	add r1, #0x3c
	ldrb r2, [r7,#0x14]
	strb r2, [r1]
	ldrb r0, [r4,#2]
	cmp r0, #7
	bgt loc_8041F04
loc_8041F04:
	bl sub_809E14C
	add r4, #3
	mov r0, #0
	pop {pc}
	.byte 0, 0
	thumb_func_end chatbox_8041EE8

	thumb_local_start
chatbox_8041F10:
	push {lr}
	bl sub_809E122
	add r4, #2
	mov r0, #1
	pop {pc}
	thumb_func_end chatbox_8041F10

	thumb_local_start
chatbox_8041F1C:
	push {lr}
	// mask
	mov r0, #FLAGS_3E_UNK_0001
	bl chatbox_setflags_3e // (int mask) -> void
	push {r5}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldr r5, [r0,#oGameState_OverworldPlayerObjectPtr]
	bl sprite_getFrameParameters
	pop {r5}
	mov r1, #0x80
	and r1, r0
	bne loc_8041F3C
	mov r0, #0
	pop {pc}
loc_8041F3C:
	add r4, #2
	mov r0, #1
	pop {pc}
	.balign 4, 0x00
	thumb_func_end chatbox_8041F1C

	thumb_local_start
chatbox_8041F44:
	push {lr}
	// mask
	mov r0, #FLAGS_3E_UNK_0001
	bl chatbox_setflags_3e // (int mask) -> void
	mov r1, r5
	add r1, #0x3c
	ldrb r0, [r1]
	cmp r0, #7
	bgt loc_8041F5E
	mov r7, r10
	ldr r7, [r7,#oToolkit_GameStatePtr]
	ldr r7, [r7,#oGameState_OverworldPlayerObjectPtr]
	strb r0, [r7,#0x10]
loc_8041F5E:
	bl sub_809E14C
	add r4, #2
	mov r0, #0
	pop {pc}
	thumb_func_end chatbox_8041F44

	thumb_local_start
chatbox_FA_print:
	push {lr}
	ldr r0, off_8041F78 // =jt_FA_print_8041F7C
	ldrb r1, [r4,#1]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
off_8041F78: .word jt_FA_print_8041F7C
jt_FA_print_8041F7C: .word chatbox_8041FB4+1
	.word chatbox_80420BC+1
	.word chatbox_8042124+1
	.word chatbox_8042128+1
	.word chatbox_8042128+1
	.word 0x0
	.word chatbox_8042184+1
	.word 0x0
	.word 0x0
	.word 0x0
	.word chatbox_80430A0+1
	.word chatbox_80421D8+1
	.word chatbox_804222C+1
	.word chatbox_804228C+1
	thumb_func_end chatbox_FA_print

	thumb_local_start
chatbox_8041FB4:
	push {lr}
	ldrb r0, [r5,#5]
	add r0, #1
	strb r0, [r5,#5]
	ldr r0, off_8042060 // =off_8042064
	ldrb r1, [r4,#2]
	ldrb r2, [r4,#3]
	cmp r2, #4
	bne loc_8041FCA
	mov r3, #0xf
	and r1, r3
loc_8041FCA:
	lsr r3, r2, #4
	tst r3, r3
	beq loc_8042014
	sub r3, #1
	lsl r3, r3, #2
	add r3, #0x4c
	ldr r1, [r5,r3]
	cmp r2, #0x14
	bne loc_8041FE0
	mov r3, #0xf
	and r1, r3
loc_8041FE0:
	mov r3, #0xf
	lsl r3, r3, #8
	and r3, r1
	lsr r3, r3, #8
	add r2, r2, r3
	mov r3, #0xf
	and r3, r2
	cmp r3, #5
	beq loc_8041FFA
	cmp r3, #6
	beq loc_8041FFA
	mov r3, #0xff
	and r1, r3
loc_8041FFA:
	mov r3, #0xf
	mov r7, r2
	and r7, r3
	ldr r3, off_804208C // =byte_8042090
	lsl r6, r7, #2
	ldr r3, [r3,r6]
	sub r1, r1, r3
	cmp r7, #5
	beq loc_8042012
	cmp r7, #6
	beq loc_8042012
	b loc_8042014
loc_8042012:
	lsr r1, r1, #2
loc_8042014:
	mov r3, #0xf
	and r2, r3
	lsl r2, r2, #2
	ldr r0, [r0,r2]
	lsl r1, r1, #1
	ldrh r1, [r0,r1]
	add r0, r0, r1
	mov r7, r5
	add r7, #0x64
	ldrh r2, [r7]
	lsl r2, r2, #6
	ldr r1, off_804217C // =byte_200AFA0
	add r1, r1, r2
	push {r1}
	mov r2, #0x40
	bl CopyBytes // (u8 *src, u8 *dest, int byteCount) -> void
	pop {r0}
	mov r7, r5
	add r7, #0x64
	ldrh r1, [r7]
	add r1, #1
	strh r1, [r7]
	str r0, [r5,#0x2c]
	add r4, #4
	str r4, [r5,#0x44]
	push {r0}
	ldrb r0, [r5,#5]
	sub r0, #1
	ldr r1, off_80420B8 // =0x140
	mov r2, #4
	mul r0, r2
	add r1, r1, r0
	str r4, [r5,r1]
	pop {r0}
	mov r4, r0
	mov r0, #1
	pop {pc}
off_8042060: .word off_8042064
off_8042064: .word byte_873D9FC
	.word dword_86EA94C
	.word TextScriptEnemyNames86EB354
	.word byte_86EF71C
	.word TextScript86CF4AC
	.word byte_873EA50
	.word byte_873EA50
	.word dword_86EA94C
	.word TextScriptNaviNames0
	.word reqBBS_requestNames_textualData
off_804208C: .word byte_8042090
byte_8042090: .byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x90, 0x0, 0x0, 0x0, 0x90, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
off_80420B8: .word 0x140
	thumb_func_end chatbox_8041FB4

	thumb_local_start
chatbox_80420BC:
	push {lr}
	ldrb r0, [r5,#5]
	add r0, #1
	strb r0, [r5,#5]
	bl getPETNaviSelect // () -> u8
	mov r1, r0
	ldr r0, off_8042114 // =off_8042118
	ldrb r2, [r4,#2]
	ldr r0, [r0,r2]
	lsl r1, r1, #1
	ldrh r1, [r0,r1]
	add r0, r0, r1
	mov r7, r5
	add r7, #0x64
	ldrh r2, [r7]
	lsl r2, r2, #6
	ldr r1, off_804217C // =byte_200AFA0
	add r1, r1, r2
	push {r1}
	mov r2, #0x40
	bl CopyBytes // (u8 *src, u8 *dest, int byteCount) -> void
	pop {r0}
	mov r7, r5
	add r7, #0x64
	ldrh r1, [r7]
	add r1, #1
	strh r1, [r7]
	str r0, [r5,#0x2c]
	add r4, #3
	str r4, [r5,#0x44]
	push {r0}
	ldrb r0, [r5,#5]
	sub r0, #1
	ldr r1, off_8042120 // =0x140
	mov r2, #4
	mul r0, r2
	add r1, r1, r0
	str r4, [r5,r1]
	pop {r0}
	mov r4, r0
	mov r0, #1
	pop {pc}
off_8042114: .word off_8042118
off_8042118: .word TextScriptNaviNames0
	.word TextScriptNaviNames1
off_8042120: .word 0x140
	thumb_func_end chatbox_80420BC

	thumb_local_start
chatbox_8042124:
	push {lr}
	pop {pc}
	thumb_func_end chatbox_8042124

	thumb_local_start
chatbox_8042128:
	push {lr}
	ldrb r0, [r5,#5]
	add r0, #1
	strb r0, [r5,#5]
	ldrb r0, [r4,#3]
	tst r0, r0
	beq loc_8042140
	sub r0, #1
	lsl r0, r0, #2
	add r0, #0x4c
	ldr r0, [r5,r0]
	b loc_8042148
loc_8042140:
	push {r1-r3}
	bl sub_803D06C
	pop {r1-r3}
loc_8042148:
	ldr r2, off_804217C // =byte_200AFA0
	ldrb r1, [r4,#3]
	lsl r1, r1, #6
	add r2, r2, r1
	ldrb r1, [r4,#2]
	bl chatbox_8042A14
	ldr r0, off_804217C // =byte_200AFA0
	ldrb r1, [r4,#3]
	lsl r1, r1, #6
	add r0, r0, r1
	str r0, [r5,#0x2c]
	add r4, #4
	str r4, [r5,#0x44]
	push {r0}
	ldrb r0, [r5,#5]
	sub r0, #1
	ldr r1, off_8042180 // =0x140
	mov r2, #4
	mul r0, r2
	add r1, r1, r0
	str r4, [r5,r1]
	pop {r0}
	mov r4, r0
	mov r0, #1
	pop {pc}
off_804217C: .word byte_200AFA0
off_8042180: .word 0x140
	thumb_func_end chatbox_8042128

	thumb_local_start
chatbox_8042184:
	push {lr}
	ldrb r0, [r5,#5]
	add r0, #1
	strb r0, [r5,#5]
	ldr r0, off_80421D4 // =off_8043C8C
	ldrb r1, [r4,#3]
	lsl r1, r1, #2
	ldr r1, [r0,r1]
	ldrh r0, [r1]
	ldr r2, off_80421CC // =byte_200AFA0
	mov r1, #1
	lsl r1, r1, #6
	add r2, r2, r1
	ldrb r1, [r4,#2]
	bl chatbox_8042A14
	ldr r0, off_80421CC // =byte_200AFA0
	mov r1, #1
	lsl r1, r1, #6
	add r0, r0, r1
	str r0, [r5,#0x2c]
	add r4, #4
	str r4, [r5,#0x44]
	push {r0}
	ldrb r0, [r5,#5]
	sub r0, #1
	ldr r1, off_80421D0 // =0x140
	mov r2, #4
	mul r0, r2
	add r1, r1, r0
	str r4, [r5,r1]
	pop {r0}
	mov r4, r0
	mov r0, #1
	pop {pc}
	.balign 4, 0x00
off_80421CC: .word byte_200AFA0
off_80421D0: .word 0x140
off_80421D4: .word off_8043C8C
	thumb_func_end chatbox_8042184

	thumb_local_start
chatbox_80421D8:
	push {r7,lr}
	ldrb r0, [r5,#5]
	add r0, #1
	strb r0, [r5,#5]
	ldrb r3, [r4,#2]
	add r3, #0x4c
	ldr r0, [r5,r3]
	mov r7, r5
	add r7, #0x64
	ldrh r2, [r7]
	lsl r2, r2, #6
	ldr r1, off_8042284 // =byte_200AFA0
	add r1, r1, r2
	push {r1}
	mov r2, #3
	bl CopyBytes // (u8 *src, u8 *dest, int byteCount) -> void
	pop {r0}
	mov r2, #0xe5
	strb r2, [r0,#3]
	mov r7, r5
	add r7, #0x64
	ldrh r1, [r7]
	add r1, #1
	strh r1, [r7]
	str r0, [r5,#0x2c]
	add r4, #3
	str r4, [r5,#0x44]
	push {r0}
	ldrb r0, [r5,#5]
	sub r0, #1
	ldr r1, off_8042228 // =0x140
	mov r2, #4
	mul r0, r2
	add r1, r1, r0
	str r4, [r5,r1]
	pop {r0}
	mov r4, r0
	mov r0, #1
	pop {r7,pc}
off_8042228: .word 0x140
	thumb_func_end chatbox_80421D8

	thumb_local_start
chatbox_804222C:
	push {r7,lr}
	ldrb r0, [r5,#5]
	add r0, #1
	strb r0, [r5,#5]
	ldrb r0, [r4,#2]
	lsl r0, r0, #3
	ldr r1, off_8042288 // =byte_8043B54
	add r0, r0, r1
	ldr r2, [r0,#4]
	push {r2}
	ldr r0, [r0]
	mov r7, r5
	add r7, #0x64
	ldrh r2, [r7]
	lsl r2, r2, #6
	ldr r1, off_8042284 // =byte_200AFA0
	add r1, r1, r2
	pop {r2}
	push {r1}
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	pop {r0}
	mov r7, r5
	add r7, #0x64
	ldrh r1, [r7]
	add r1, #1
	strh r1, [r7]
	str r0, [r5,#0x2c]
	add r4, #3
	str r4, [r5,#0x44]
	push {r0}
	ldrb r0, [r5,#5]
	sub r0, #1
	ldr r1, off_8042280 // =0x140
	mov r2, #4
	mul r0, r2
	add r1, r1, r0
	str r4, [r5,r1]
	pop {r0}
	mov r4, r0
	mov r0, #1
	pop {r7,pc}
off_8042280: .word 0x140
off_8042284: .word byte_200AFA0
off_8042288: .word byte_8043B54
	thumb_func_end chatbox_804222C

	thumb_local_start
chatbox_804228C:
	push {r7,lr}
	pop {r7,pc}
	thumb_func_end chatbox_804228C

	thumb_local_start
chatbox_FD_sound:
	push {lr}
	ldr r0, off_80422A0 // =off_80422A4
	ldrb r1, [r4,#1]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
off_80422A0: .word off_80422A4
off_80422A4: .word chatbox_80422D4+1
	.word chatbox_80422E8+1
	.word chatbox_80422FC+1
	.word chatbox_804230C+1
	.word chatbox_804231C+1
	.word chatbox_8042328+1
	.word chatbox_80422D4+1
	.word chatbox_80422D4+1
	.word chatbox_8042340+1
	.word chatbox_8042350+1
	.word chatbox_8042360+1
	.word chatbox_8042370+1
	thumb_func_end chatbox_FD_sound

	thumb_local_start
chatbox_80422D4:
	push {lr}
	ldrb r0, [r4,#2]
	ldrb r1, [r4,#3]
	lsl r1, r1, #8
	orr r0, r1
	bl sound_play // () -> void
	add r4, #4
	mov r0, #1
	pop {pc}
	thumb_func_end chatbox_80422D4

	thumb_local_start
chatbox_80422E8:
	push {lr}
	ldrb r0, [r4,#2]
	ldrb r1, [r4,#3]
	lsl r1, r1, #8
	orr r0, r1
	bl sound_bgmusic_play // (int a1) -> void
	add r4, #4
	mov r0, #1
	pop {pc}
	thumb_func_end chatbox_80422E8

	thumb_local_start
chatbox_80422FC:
	push {lr}
	mov r0, #FLAGS_3E_UNK_0040
	bl chatbox_clearFlags_3e // (int mask) -> void
	add r4, #2
	mov r0, #1
	pop {pc}
	.balign 4, 0x00
	thumb_func_end chatbox_80422FC

	thumb_local_start
chatbox_804230C:
	push {lr}
	mov r0, #FLAGS_3E_UNK_0040
	bl chatbox_setflags_3e // (int mask) -> void
	add r4, #2
	mov r0, #1
	pop {pc}
	.balign 4, 0x00
	thumb_func_end chatbox_804230C

	thumb_local_start
chatbox_804231C:
	push {lr}
	bl musicGameState_8000784 // () -> void
	add r4, #2
	mov r0, #1
	pop {pc}
	thumb_func_end chatbox_804231C

	thumb_local_start
chatbox_8042328:
	push {lr}
	ldrb r0, [r4,#2]
	ldrb r1, [r4,#3]
	bl sub_800068A
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	mov r0, #0x63
	strb r0, [r1,#oGameState_BGMusicIndicator]
	add r4, #4
	mov r0, #1
	pop {pc}
	thumb_func_end chatbox_8042328

	thumb_local_start
chatbox_8042340:
	push {lr}
	mov r0, #FLAGS_3E_UNK_0080
	bl chatbox_clearFlags_3e // (int mask) -> void
	add r4, #2
	mov r0, #1
	pop {pc}
	.byte 0, 0
	thumb_func_end chatbox_8042340

	thumb_local_start
chatbox_8042350:
	push {lr}
	mov r0, #FLAGS_3E_UNK_0080
	bl chatbox_setflags_3e // (int mask) -> void
	add r4, #2
	mov r0, #1
	pop {pc}
	.byte 0, 0
	thumb_func_end chatbox_8042350

	thumb_local_start
chatbox_8042360:
	push {lr}
	bl sub_8036E44
	bl sub_8036E78
	add r4, #2
	mov r0, #1
	pop {pc}
	thumb_func_end chatbox_8042360

	thumb_local_start
chatbox_8042370:
	push {lr}
	ldrb r0, [r4,#2]
	ldrb r1, [r4,#3]
	mov r2, #0x1f
	push {r0}
	bl sub_80006A2
	pop {r0}
	add r4, #4
	mov r0, #1
	pop {pc}
	.balign 4, 0x00
	thumb_func_end chatbox_8042370

	thumb_local_start
chatbox_FB_special:
	push {lr}
	ldr r0, off_8042398 // =jt_804239C
	ldrb r1, [r4,#1]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
off_8042398: .word jt_804239C
jt_804239C: .word chatbox_80423DC+1
	.word chatbox_8042418+1
	.word chatbox_804244C+1
	.word chatbox_804247C+1
	.word 0x0
	.word chatbox_80424BC+1
	.word chatbox_80424E0+1
	.word 0x0
	.word chatbox_804252C+1
	.word 0x0
	.word chatbox_8042580+1
	.word chatbox_80425A0+1
	.word 0x0
	.word chatbox_80425E0+1
	.word chatbox_80425C0+1
	.word chatbox_80425F0+1
	thumb_func_end chatbox_FB_special

	thumb_local_start
chatbox_80423DC:
	push {lr}
	mov r0, #0x73
	bl sound_play // () -> void
	ldrb r0, [r4,#2]
	lsl r0, r0, #2
	add r0, r0, r4
	add r0, #3
	ldrb r2, [r0]
	ldrb r1, [r0,#1]
	lsl r1, r1, #8
	orr r2, r1
	ldrb r1, [r0,#2]
	lsl r1, r1, #0x10
	orr r2, r1
	ldrb r1, [r0,#3]
	lsl r1, r1, #0x18
	orr r2, r1
	mov r0, r2
	str r0, [r5,#0x4c]
	bl sub_803CFF8
	ldrb r0, [r4,#2]
	add r0, #1
	lsl r0, r0, #2
	add r4, r4, r0
	add r4, #3
	mov r0, #1
	pop {pc}
	.balign 4, 0x00
	thumb_func_end chatbox_80423DC

	thumb_local_start
chatbox_8042418:
	push {lr}
	mov r0, #0x73
	bl sound_play // () -> void
	ldrb r0, [r4,#2]
	lsl r0, r0, #1
	add r0, r0, r4
	add r0, #3
	mov r2, #1
	str r2, [r5,#0x54]
	ldrb r1, [r0,#1]
	str r1, [r5,#0x50]
	ldrb r0, [r0]
	str r0, [r5,#0x4c]
	push {r4}
	bl sub_8021AEE
	pop {r4}
	ldrb r0, [r4,#2]
	add r0, #1
	lsl r0, r0, #1
	add r4, r4, r0
	add r4, #3
	mov r0, #1
	pop {pc}
	.balign 4, 0x00
	thumb_func_end chatbox_8042418

	thumb_local_start
chatbox_804244C:
	push {lr}
	// mask
	mov r0, #FLAGS_3E_UNK_0001
	bl chatbox_setflags_3e // (int mask) -> void
	ldrb r0, [r5,#4]
	cmp r0, #0
	beq loc_804245C
	b loc_8042478
loc_804245C:
	push {r4,r5}
	mov r2, #0x1f
	bl sub_80AA5F4
	mov r1, #1
	bl gameState_8005BC8 // (BattleSettings *r0Bt, bool r1) -> void
	mov r0, #0x2c
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	pop {r4,r5}
	mov r0, #1
	strb r0, [r5,#4]
loc_8042478:
	mov r0, #0
	pop {pc}
	thumb_func_end chatbox_804244C

	thumb_local_start
chatbox_804247C:
	push {lr}
	// mask
	mov r0, #FLAGS_3E_UNK_0001
	bl chatbox_setflags_3e // (int mask) -> void
	ldrb r0, [r5,#4]
	cmp r0, #0
	beq loc_804248C
	b loc_80424B6
loc_804248C:
	push {r4,r5,r7}
	ldrb r0, [r4,#2]
	ldrb r1, [r4,#3]
	lsl r1, r1, #8
	orr r0, r1
	mov r7, r0
	bl getBattleSettingsFromList0 // (int battleSettingsIdx) -> BattleSettings*
	mov r1, #1
	bl gameState_8005BC8 // (BattleSettings *r0Bt, bool r1) -> void
	mov r0, r7
	bl sub_803522E
	mov r0, #0x2c
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	pop {r4,r5,r7}
	mov r0, #1
	strb r0, [r5,#4]
loc_80424B6:
	mov r0, #0
	pop {pc}
	.balign 4, 0x00
	thumb_func_end chatbox_804247C

	thumb_local_start
chatbox_80424BC:
	push {lr}
	// mask
	mov r0, #FLAGS_3E_UNK_0001
	bl chatbox_setflags_3e // (int mask) -> void
	ldrb r0, [r5,#4]
	cmp r0, #0
	beq loc_80424CC
	b loc_80424DA
loc_80424CC:
	push {r4,r5}
	ldrb r0, [r4,#2]
	bl subsystem_launchShop
	pop {r4,r5}
	mov r0, #1
	strb r0, [r5,#4]
loc_80424DA:
	mov r0, #0
	pop {pc}
	.byte 0, 0
	thumb_func_end chatbox_80424BC

	thumb_local_start
chatbox_80424E0:
	push {lr}
	ldrb r0, [r5,#4]
	cmp r0, #0
	beq loc_80424F0
	// mask
	mov r0, #FLAGS_3E_UNK_0001
	bl chatbox_setflags_3e // (int mask) -> void
	b loc_8042526
loc_80424F0:
	ldrb r0, [r4,#2]
	cmp r0, #1
	beq loc_8042508
	bl subsystem_launchChipTrader
	bne loc_8042512
	mov r0, #1
	strb r0, [r5,#4]
	// mask
	mov r0, #FLAGS_3E_UNK_0001
	bl chatbox_setflags_3e // (int mask) -> void
	b loc_8042526
loc_8042508:
	bl sub_803D0F4
	mov r1, #0xff
	cmp r0, #0xa
	bge loc_8042514
loc_8042512:
	ldrb r1, [r4,#3]
loc_8042514:
	cmp r1, #0xff
	beq loc_8042520
	bl chatbox_config_80408D0 // (int notUsed, u8 scriptID) -> void
	mov r0, #1
	pop {pc}
loc_8042520:
	add r4, #4
	mov r0, #1
	pop {pc}
loc_8042526:
	mov r0, #0
	pop {pc}
	.balign 4, 0x00
	thumb_func_end chatbox_80424E0

	thumb_local_start
chatbox_804252C:
	push {lr}
	mov r0, #0x8a
	bl sound_play // () -> void
	ldrb r7, [r4,#2]
	ldrb r0, [r4,#3]
	lsl r0, r0, #8
	orr r7, r0
	bl getPETNaviSelect // () -> u8
	mov r6, r0
	bl sub_80010D4
	add r1, r0, r7
	mov r0, r6
	bl sub_80010EC
	add r4, #4
	mov r0, #0
	pop {pc}
	thumb_func_end chatbox_804252C

	thumb_local_start
sub_8042554:
	push {lr}
	mov r0, #0x73
	bl sound_play // () -> void
	bl GetRNG2 // () -> int
	ldrb r1, [r4,#2]
	and r1, r0
	add r0, r1, r4
	add r0, #3
	ldrb r0, [r0]
	str r0, [r5,#0x4c]
	mov r1, #1
	bl sub_803CD98
	ldrb r0, [r4,#2]
	add r0, #1
	add r4, r4, r0
	add r4, #3
	mov r0, #1
	pop {pc}
	.byte 0, 0
	thumb_func_end sub_8042554

	thumb_local_start
chatbox_8042580:
	push {lr}
	// mask
	mov r0, #FLAGS_3E_UNK_0001
	bl chatbox_setflags_3e // (int mask) -> void
	ldrb r0, [r5,#oChatbox_TextScriptState_04]
	cmp r0, #0
	beq loc_8042590
	b loc_804259A
loc_8042590:
	ldrb r0, [r4,#2]
	bl subsystem_launchBBS
	mov r0, #1
	strb r0, [r5,#4]
loc_804259A:
	mov r0, #0
	pop {pc}
	.byte 0, 0
	thumb_func_end chatbox_8042580

	thumb_local_start
chatbox_80425A0:
	push {lr}
	// mask
	mov r0, #FLAGS_3E_UNK_0001
	bl chatbox_setflags_3e // (int mask) -> void
	ldrb r0, [r5,#oChatbox_TextScriptState_04]
	cmp r0, #0
	beq loc_80425B0
	b loc_80425BA
loc_80425B0:
	ldrb r0, [r4,#oChatbox_CurrLine]
	bl sub_8005EA2
	mov r0, #1
	strb r0, [r5,#oChatbox_TextScriptState_04]
loc_80425BA:
	mov r0, #0
	pop {pc}
	.byte 0, 0
	thumb_func_end chatbox_80425A0

	thumb_local_start
chatbox_80425C0:
	push {lr}
	// mask
	mov r0, #FLAGS_3E_UNK_0001
	bl chatbox_setflags_3e // (int mask) -> void
	ldrb r0, [r5,#4]
	cmp r0, #0
	beq loc_80425D0
	b loc_80425DA
loc_80425D0:
	ldrb r0, [r4,#2]
	bl subsystem_launchReqBBS
	mov r0, #1
	strb r0, [r5,#4]
loc_80425DA:
	mov r0, #0
	pop {pc}
	.byte 0, 0
	thumb_func_end chatbox_80425C0

	thumb_local_start
chatbox_80425E0:
	push {lr}
	ldrb r0, [r4,#2]
	bl sub_8137718
	add r4, #3
	mov r0, #0
	pop {pc}
	.byte 0, 0
	thumb_func_end chatbox_80425E0

	thumb_local_start
chatbox_80425F0:
	push {lr}
	// mask
	mov r0, #FLAGS_3E_UNK_0001
	bl chatbox_setflags_3e // (int mask) -> void
	ldrb r0, [r5,#oChatbox_TextScriptState_04]
	cmp r0, #0
	beq loc_8042600
	b loc_804260A
loc_8042600:
	ldrb r0, [r4,#2]
	bl subsystem_launchMail
	mov r0, #1
	strb r0, [r5,#4]
loc_804260A:
	mov r0, #0
	pop {pc}
	.byte 0, 0
	thumb_func_end chatbox_80425F0

	thumb_local_start
chatbox_FC_interface:
	push {lr}
	ldr r0, off_8042620 // =off_8042624
	ldrb r1, [r4,#1]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
off_8042620: .word off_8042624
off_8042624: .word chatbox_8042678+1
	.word 0
	.byte 0, 0, 0, 0
	.word chatbox_80426A8+1
	.word chatbox_80426C4+1
	.word chatbox_80426D4+1
	.word chatbox_80426E0+1
	.word 0x0
	.word chatbox_80426F4+1
	.word chatbox_804271C+1
	.word 0, 0, 0, 0
	.byte 0, 0, 0, 0
	.word chatbox_sprite_8042770+1
	.word chatbox_80427B4+1
	.word chatbox_80427E4+1
	.word 0x0
	.word chatbox_8042804+1
	.word chatbox_8042820+1
	thumb_func_end chatbox_FC_interface

	thumb_local_start
chatbox_8042678:
	push {lr}
	push {r4}
	bl sub_803F798
	pop {r4}
	push {r0,r4}
	tst r0, r0
	bne loc_804268E
	mov r0, #0x74
	bl sound_play // () -> void
loc_804268E:
	pop {r0,r4}
	add r0, #2
	ldrb r1, [r4,r0]
	cmp r1, #0xff
	beq loc_80426A0
	bl chatbox_config_80408D0 // (int notUsed, u8 scriptID) -> void
	mov r0, #1
	pop {pc}
loc_80426A0:
	add r4, #5
	mov r0, #1
	pop {pc}
	.balign 4, 0x00
	thumb_func_end chatbox_8042678

	thumb_local_start
chatbox_80426A8:
	push {lr}
	ldrb r0, [r4,#2]
	lsl r0, r0, #2
	ldr r1, off_80426C0 // =jt_8043B00
	ldr r1, [r1,r0]
	ldrb r0, [r4,#3]
	mov lr, pc
	bx r1
	add r4, #4
	mov r0, #1
	pop {pc}
	.byte 0, 0
off_80426C0: .word jt_8043B00
	thumb_func_end chatbox_80426A8

	thumb_local_start
chatbox_80426C4:
	push {lr}
	mov r0, #0xc
	mov r1, #0xc
	bl engine_setScreeneffect // (int a1, int a2) -> void
	add r4, #2
	mov r0, #1
	pop {pc}
	thumb_func_end chatbox_80426C4

// () -> int
// .global r4
	thumb_local_start
chatbox_80426D4:
	push {lr}
	bl sub_813C030 // () -> void
	add r4, #2
	mov r0, #1
	pop {pc}
	thumb_func_end chatbox_80426D4

	thumb_local_start
chatbox_80426E0:
	push {lr}
	// mask
	ldr r0, dword_80426F0 // =0x1000
	bl chatbox_setflags_3e // (int mask) -> void
	add r4, #2
	mov r0, #1
	pop {pc}
	.byte 0, 0
dword_80426F0: .word 0x1000
	thumb_func_end chatbox_80426E0

	thumb_local_start
chatbox_80426F4:
	push {lr}
	mov r2, #0
	mov r0, #0
	mov r1, #0x22
	bl sub_8013704
	cmp r0, #1
	beq loc_8042706
	mov r2, #1
loc_8042706:
	add r2, #2
	ldrb r1, [r4,r2]
	cmp r1, #0xff
	beq loc_8042716
	bl chatbox_config_80408D0 // (int notUsed, u8 scriptID) -> void
	mov r0, #1
	pop {pc}
loc_8042716:
	add r4, #4
	mov r0, #1
	pop {pc}
	thumb_func_end chatbox_80426F4

	thumb_local_start
chatbox_804271C:
	push {lr}
	mov r0, #1
	ldr r1, off_8042758 // =off_804275C
	ldr r2, [r1]
	strh r0, [r5,r2]
	ldr r2, [r1,#0x4] // (dword_8042760 - 0x804275c)
	ldrh r0, [r5,r2]
	add r0, #1
	cmp r0, #4
	bgt loc_8042750
	strh r0, [r5,r2]
	sub r0, #1
	ldr r2, [r1,#0xc] // (off_8042768 - 0x804275c)
	add r2, r2, r0
	ldrb r3, [r5,#0xf]
	strb r3, [r5,r2]
	ldr r2, [r1,#0x10] // (off_804276C - 0x804275c)
	add r2, r2, r0
	ldrb r3, [r4,#2]
	strb r3, [r5,r2]
	mov r2, #4
	mul r0, r2
	ldr r2, [r1,#0x8] // (off_8042764 - 0x804275c)
	add r2, r2, r0
	ldr r3, [r5,#0x70]
	str r3, [r5,r2]
loc_8042750:
	add r4, #3
	mov r0, #1
	pop {pc}
	.balign 4, 0x00
off_8042758: .word off_804275C
off_804275C: .word 0x1D4
dword_8042760: .word 0x1D6
off_8042764: .word 0x1D8
off_8042768: .word 0x1E8
off_804276C: .word 0x1EC
	thumb_func_end chatbox_804271C

	thumb_local_start
chatbox_sprite_8042770:
	push {lr}
	ldrb r2, [r4,#2]
	push {r4,r5}
	push {r3}
	mov r3, r10
	ldr r3, [r3,#oToolkit_GameStatePtr]
	strb r2, [r3,#oGameState_PETNaviIndex]
	pop {r3}
	ldr r3, off_80427AC // =dword_80427B0
	ldrb r2, [r3,r2]
	ldr r5, off_80427A8 // =eOWPlayerObject
	mov r0, #0x80
	mov r1, #0x18
	bl sprite_load // (int a1, int a2, int a3) ->
	mov r0, #0
	bl sprite_setAnimation // (u8 a1) -> void
	bl sprite_noShadow // () -> void
	bl sprite_loadAnimationData // () -> void
	bl sprite_update
	pop {r4,r5}
	add r4, #3
	mov r0, #1
	pop {pc}
off_80427A8: .word eOWPlayerObject
off_80427AC: .word dword_80427B0
dword_80427B0: .word 0x37
	thumb_func_end chatbox_sprite_8042770

	thumb_local_start
chatbox_80427B4:
	push {lr}
	ldr r0, off_8042A94 // =eReqBBSGui
	ldr r1, dword_80427DC // =0xf
	ldr r2, off_80427E0 // =byte_813F380
	ldrb r1, [r0,r1]
	ldrb r1, [r2,r1]
	add r1, #1
	ldr r2, dword_80427D8 // =0xd
	ldrb r3, [r0,r2]
	add r1, r1, r3
	cmp r1, #0x4b
	ble loc_80427CE
	mov r1, #0x4b
loc_80427CE:
	strb r1, [r0,r2]
	add r4, #2
	mov r0, #1
	pop {pc}
	.balign 4, 0x00
dword_80427D8: .word 0xD
dword_80427DC: .word 0xF
off_80427E0: .word byte_813F380
	thumb_func_end chatbox_80427B4

	thumb_local_start
chatbox_80427E4:
	push {lr}
	ldr r0, off_8042A98 // =eReqBBSGui
	ldr r1, dword_80427FC // =0xf
	ldr r2, off_8042800 // =byte_813F380
	ldrb r1, [r0,r1]
	ldrb r1, [r2,r1]
	add r1, #1
	mov r2, #0x4c
	str r1, [r5,r2]
	add r4, #2
	mov r0, #1
	pop {pc}
dword_80427FC: .word 0xF
off_8042800: .word byte_813F380
	thumb_func_end chatbox_80427E4

	thumb_local_start
chatbox_8042804:
	push {lr}
	ldr r0, off_8042818 // =eReqBBSGui
	ldr r1, dword_804281C // =0xf
	ldrb r0, [r0,r1]
	bl reqBBS_81408B4
	add r4, #2
	mov r0, #1
	pop {pc}
	.balign 4, 0x00
off_8042818: .word eReqBBSGui
dword_804281C: .word 0xF
	thumb_func_end chatbox_8042804

	thumb_local_start
chatbox_8042820:
	push {lr}
	bl sub_809CA84
	mov r1, #0x4c
	str r0, [r5,r1]
	add r4, #2
	mov r0, #1
	pop {pc}
	thumb_func_end chatbox_8042820

	thumb_local_start
chatbox_F7_movebox:
	push {lr}
	ldr r0, off_8042840 // =off_8042844
	ldrb r1, [r4,#1]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
off_8042840: .word off_8042844
off_8042844: .word byte_804286D
	.word byte_80428B9
	.word byte_80428C1
	.word byte_80428E5
	.word byte_80428ED
	.word byte_80428FD
	.word byte_8042911
	.word byte_804293D
	.word byte_8042991
	.word byte_80429D9
	.byte 0xB
byte_804286D: .byte 0x48, 0x23, 0x79, 0x6B, 0x75, 0xDB, 0x0, 0xC0, 0x18
	.byte 0xA1, 0x78, 0x29, 0x77, 0x2, 0x68, 0xAA, 0x77, 0x89
	.byte 0x18, 0x2, 0x39, 0xC9, 0x0, 0xA9, 0x76, 0xE1, 0x78
	.byte 0x69, 0x77, 0x42, 0x68, 0xEA, 0x77, 0x89, 0x18, 0x2
	.byte 0x39, 0xC9, 0x0, 0xE9, 0x76, 0x5, 0x34, 0x1, 0x20
	.byte 0xF7, 0x46
off_804289C: .word byte_80428A0
byte_80428A0: .byte 0x1E, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x0, 0x14, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0
	.byte 0x0, 0x1E, 0x0, 0x0, 0x0, 0x9, 0x0, 0x0, 0x0, 0x2
byte_80428B9: .byte 0x34, 0x1, 0x20, 0xF7, 0x46, 0x0, 0x0, 0xA1
byte_80428C1: .byte 0x78, 0x29, 0x76, 0xAF, 0x31, 0xA9, 0x76, 0xE1, 0x78
	.byte 0x69, 0x76, 0xC, 0x22, 0x23, 0x79, 0x5A, 0x43, 0x89
	.byte 0x18, 0xE9, 0x76, 0x28, 0x7E, 0x29, 0x1C, 0x94, 0x31
	.byte 0x8, 0x70, 0x5, 0x34, 0x1, 0x20, 0xF7, 0x46, 0x2
byte_80428E5: .byte 0x34, 0x1, 0x20, 0xF7, 0x46, 0x0, 0x0, 0xA1
byte_80428ED: .byte 0x78, 0xA9, 0x76, 0xE1, 0x78, 0xE9, 0x76, 0x4, 0x34
	.byte 0x1, 0x20, 0xF7, 0x46, 0x0, 0x0, 0xA1
byte_80428FD: .byte 0x78, 0x84, 0x20, 0x29, 0x50, 0xE1, 0x78, 0x88, 0x20
	.byte 0x29, 0x50, 0x4, 0x34, 0x1, 0x20, 0xF7, 0x46, 0x0
	.byte 0x0, 0xA1
byte_8042911: .byte 0x78, 0xB, 0x20, 0x48, 0x43, 0xF0, 0x22
off_8042918: .word byte_8521A12
	.byte 0x2A, 0x76, 0x12, 0x18, 0xAA, 0x76, 0xE1, 0x78, 0xE
	.byte 0x20, 0x48, 0x43, 0xA0, 0x22, 0x12, 0x1A, 0x52, 0x8
	.byte 0x6A, 0x76, 0x12, 0x18, 0xEA, 0x76, 0x4, 0x34, 0x1
	.byte 0x20, 0xF7, 0x46, 0x0, 0x0, 0xC0
byte_804293D: .byte 0xB5, 0xF0, 0x26, 0xB0, 0x27, 0xA1, 0x78, 0x1, 0x39
	.byte 0xB, 0x20, 0x48, 0x43, 0x8, 0x21, 0x2, 0x22, 0x51
	.byte 0x43, 0x40, 0x18, 0x32, 0x1C, 0x1, 0xB4, 0x2, 0x20
	.byte 0xFD, 0xF7, 0xEE, 0xFF, 0x0, 0xD0, 0x3A, 0x1C, 0x1
	.byte 0xBC, 0x12, 0x1A, 0x52, 0x8, 0x2, 0x20, 0xFD, 0xF7
	.byte 0xE6, 0xFF, 0x1, 0xD1, 0x29, 0x7E, 0x52, 0x1A, 0x29
	.byte 0x7E, 0x28, 0x1C, 0x94, 0x30, 0x53, 0x18, 0x3, 0x70
	.byte 0x52, 0x8, 0x52, 0x0, 0x92, 0x0, 0xE9, 0x6F, 0x89
	.byte 0x18, 0xE9, 0x67, 0x3, 0x34, 0x1, 0x20, 0xC0, 0xBD
	.byte 0x0, 0x0, 0xC0
byte_8042991: .byte 0xB5, 0xF0, 0x26, 0xB0, 0x27, 0xA1, 0x78, 0xB, 0x20
	.byte 0x48, 0x43, 0x8, 0x30, 0x32, 0x1C, 0x1, 0xB4, 0x2
	.byte 0x20, 0xFD, 0xF7, 0xC8, 0xFF, 0x0, 0xD0, 0x3A, 0x1C
	.byte 0x1, 0xBC, 0x12, 0x1A, 0x52, 0x8, 0x2, 0x20, 0xFD
	.byte 0xF7, 0xC0, 0xFF, 0x1, 0xD1, 0x29, 0x7E, 0x52, 0x1A
	.byte 0x29, 0x7E, 0x28, 0x1C, 0x94, 0x30, 0x53, 0x18, 0x3
	.byte 0x70, 0x92, 0x0, 0xE9, 0x6F, 0x89, 0x18, 0xE9, 0x67
	.byte 0x3, 0x34, 0x1, 0x20, 0xC0, 0xBD, 0x0, 0x0, 0xC0
byte_80429D9: .byte 0xB5, 0x79, 0x27, 0x33, 0x37, 0xA1, 0x78, 0x1, 0x39
	.byte 0xB, 0x20, 0x48, 0x43, 0x8, 0x21, 0x2, 0x22, 0x51
	.byte 0x43, 0x40, 0x18, 0x3A, 0x1C
off_80429F0: .word byte_8521A12
	.byte 0x90, 0x46, 0x29, 0x7E, 0x28, 0x1C, 0x94, 0x30, 0x53
	.byte 0x18, 0x3, 0x70, 0x52, 0x8, 0x52, 0x0, 0x92, 0x0
	.byte 0xE9, 0x6F, 0x89, 0x18, 0xE9, 0x67, 0x3, 0x34, 0x1
	.byte 0x20, 0xC0, 0xBD, 0x0, 0x0
	thumb_func_end chatbox_F7_movebox

	thumb_local_start
chatbox_8042A14:
	push {r4,r5,lr}
	push {r1,r2}
	bl sub_8000C00
	mov r8, r0
	bl sub_8000C5C
	pop {r1,r2}
	mov r6, #0x40
	tst r1, r6
	bne loc_8042A2E
	mov r6, #0
	b loc_8042A30
loc_8042A2E:
	mov r6, #1
loc_8042A30:
	mov r3, #0xf
	and r3, r1
	cmp r3, #0
	bne loc_8042A3A
	mov r3, r0
loc_8042A3A:
	sub r3, r3, r0
	mov r4, #0x80
	tst r1, r4
	bne loc_8042A64
	sub r4, r0, #1
	lsl r4, r4, #2
	mov r0, #0xf
loc_8042A48:
	mov r7, r8
	lsr r7, r4
	and r7, r0
	add r7, #1
	strb r7, [r2]
	add r2, #1
	sub r4, #4
	bge loc_8042A48
loc_8042A58:
	cmp r3, #0
	ble loc_8042A86
	sub r3, #1
	strb r6, [r2]
	add r2, #1
	b loc_8042A58
loc_8042A64:
	sub r4, r0, #1
	lsl r4, r4, #2
loc_8042A68:
	cmp r3, #0
	ble loc_8042A74
	sub r3, #1
	strb r6, [r2]
	add r2, #1
	b loc_8042A68
loc_8042A74:
	mov r0, #0xf
loc_8042A76:
	mov r7, r8
	lsr r7, r4
	and r7, r0
	add r7, #1
	strb r7, [r2]
	add r2, #1
	sub r4, #4
	bge loc_8042A76
loc_8042A86:
	mov r7, #0xe6
	strb r7, [r2]
	mov r7, #0
	strb r7, [r2,#1]
	mov r7, #0
	strb r7, [r2,#2]
	pop {r4,r5,pc}
off_8042A94: .word eReqBBSGui
off_8042A98: .word eReqBBSGui
	thumb_func_end chatbox_8042A14

	thumb_local_start
chatbox_8042A9C:
	push {lr}
	ldrb r0, [r4,#1]
	sub r0, #0xa
	cmp r0, #0
	beq loc_8042AB0
	cmp r0, #1
	beq loc_8042AD6
	cmp r0, #2
	beq loc_8042AE8
	b loc_8042B08
loc_8042AB0:
	push {r4,r5}
	ldrb r0, [r4,#2]
	cmp r0, #0xff
	bne loc_8042ABA
	ldr r0, [r5,#0x54]
loc_8042ABA:
	ldrb r1, [r4,#3]
	bl sub_803CD98
	pop {r4,r5}
	cmp r0, #1
	beq loc_8042AD0
	push {r0}
	mov r0, #0x73
	bl sound_play // () -> void
	pop {r0}
loc_8042AD0:
	add r0, #4
	ldrb r1, [r4,r0]
	b loc_8042B26
loc_8042AD6:
	push {r4,r5}
	ldrb r0, [r4,#2]
	ldrb r1, [r4,#3]
	bl sub_803CE08
	pop {r4,r5}
	add r0, #4
	ldrb r1, [r4,r0]
	b loc_8042B26
loc_8042AE8:
	push {r4,r5}
	ldrb r0, [r4,#2]
	ldrb r1, [r4,#3]
	bl sub_803CDF8
	pop {r4,r5}
	cmp r0, #1
	beq loc_8042B02
	push {r0}
	mov r0, #0x73
	bl sound_play // () -> void
	pop {r0}
loc_8042B02:
	add r4, #4
	mov r0, #1
	pop {pc}
loc_8042B08:
	push {r4,r5}
	ldrb r0, [r4,#2]
	bl sub_803CE28
	pop {r4,r5}
	ldrb r1, [r4,#3]
	mov r2, #0
	cmp r0, r1
	beq loc_8042B22
	add r2, #1
	cmp r0, r1
	bgt loc_8042B22
	add r2, #1
loc_8042B22:
	add r2, #4
	ldrb r1, [r4,r2]
loc_8042B26:
	cmp r1, #0xff
	beq loc_8042B32
	bl chatbox_config_80408D0 // (int notUsed, u8 scriptID) -> void
	mov r0, #1
	pop {pc}
loc_8042B32:
	add r4, #7
	mov r0, #1
	pop {pc}
	thumb_func_end chatbox_8042A9C

	thumb_local_start
chatbox_8042B38:
	push {lr}
	ldrb r0, [r4,#1]
	sub r0, #0xe
	cmp r0, #0
	beq loc_8042B4C
	cmp r0, #1
	beq loc_8042B82
	cmp r0, #2
	beq loc_8042BA4
	b loc_8042BD0
loc_8042B4C:
	push {r4,r5}
	ldrb r0, [r4,#2]
	ldrb r1, [r4,#3]
	ldrb r2, [r4,#4]
	ldrb r3, [r4,#5]
	lsl r1, r1, #8
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	orr r0, r1
	orr r0, r2
	orr r0, r3
	ldr r1, dword_8042C14 // =0xffffffff
	cmp r0, r1
	bne loc_8042B6A
	ldr r0, [r5,#0x54]
loc_8042B6A:
	str r0, [r5,#0x54]
	bl sub_803CFF8
	pop {r4,r5}
	push {r0}
	mov r0, #0x73
	bl sound_play // () -> void
	pop {r0}
	add r0, #6
	ldrb r1, [r4,r0]
	b loc_8042C00
loc_8042B82:
	push {r4,r5}
	ldrb r0, [r4,#2]
	ldrb r1, [r4,#3]
	ldrb r2, [r4,#4]
	ldrb r3, [r4,#5]
	lsl r1, r1, #8
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	orr r0, r1
	orr r0, r2
	orr r0, r3
	bl sub_803D040
	pop {r4,r5}
	add r0, #6
	ldrb r1, [r4,r0]
	b loc_8042C00
loc_8042BA4:
	push {r4,r5}
	ldrb r0, [r4,#2]
	ldrb r1, [r4,#3]
	ldrb r2, [r4,#4]
	ldrb r3, [r4,#5]
	lsl r1, r1, #8
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	orr r0, r1
	orr r0, r2
	orr r0, r3
	bl sub_803D02C
	pop {r4,r5}
	push {r0}
	mov r0, #0x73
	bl sound_play // () -> void
	pop {r0}
	add r4, #6
	mov r0, #1
	pop {pc}
loc_8042BD0:
	ldrb r0, [r4,#2]
	ldrb r1, [r4,#3]
	ldrb r2, [r4,#4]
	ldrb r3, [r4,#5]
	lsl r1, r1, #8
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	orr r0, r1
	orr r0, r2
	orr r0, r3
	push {r0,r2,r3}
	bl sub_803D06C
	mov r1, r0
	pop {r0,r2,r3}
	mov r2, #0
	cmp r1, r0
	beq loc_8042BFC
	add r2, #1
	cmp r1, r0
	bgt loc_8042BFC
	add r2, #1
loc_8042BFC:
	add r2, #6
	ldrb r1, [r4,r2]
loc_8042C00:
	cmp r1, #0xff
	beq loc_8042C0C
	bl chatbox_config_80408D0 // (int notUsed, u8 scriptID) -> void
	mov r0, #1
	pop {pc}
loc_8042C0C:
	add r4, #9
	mov r0, #1
	pop {pc}
	.balign 4, 0x00
dword_8042C14: .word 0xFFFFFFFF
	thumb_func_end chatbox_8042B38

	thumb_local_start
chatbox_8042C18:
	push {lr}
	ldrb r0, [r4,#1]
	sub r0, #0x12
	cmp r0, #0
	beq loc_8042C2C
	cmp r0, #1
	beq loc_8042C62
	cmp r0, #2
	beq loc_8042C84
	b loc_8042CB0
loc_8042C2C:
	push {r4,r5}
	ldrb r0, [r4,#2]
	ldrb r1, [r4,#3]
	ldrb r2, [r4,#4]
	ldrb r3, [r4,#5]
	lsl r1, r1, #8
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	orr r0, r1
	orr r0, r2
	orr r0, r3
	ldr r1, dword_8042CF4 // =0xffffffff
	cmp r0, r1
	bne loc_8042C4A
	ldr r0, [r5,#0x54]
loc_8042C4A:
	str r0, [r5,#0x54]
	bl sub_803D080
	pop {r4,r5}
	push {r0}
	mov r0, #0x73
	bl sound_play // () -> void
	pop {r0}
	add r0, #6
	ldrb r1, [r4,r0]
	b loc_8042CE0
loc_8042C62:
	push {r4,r5}
	ldrb r0, [r4,#2]
	ldrb r1, [r4,#3]
	ldrb r2, [r4,#4]
	ldrb r3, [r4,#5]
	lsl r1, r1, #8
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	orr r0, r1
	orr r0, r2
	orr r0, r3
	bl sub_803D0C8
	pop {r4,r5}
	add r0, #6
	ldrb r1, [r4,r0]
	b loc_8042CE0
loc_8042C84:
	push {r4,r5}
	ldrb r0, [r4,#2]
	ldrb r1, [r4,#3]
	ldrb r2, [r4,#4]
	ldrb r3, [r4,#5]
	lsl r1, r1, #8
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	orr r0, r1
	orr r0, r2
	orr r0, r3
	bl sub_803D0B4
	pop {r4,r5}
	push {r0}
	mov r0, #0x73
	bl sound_play // () -> void
	pop {r0}
	add r4, #6
	mov r0, #1
	pop {pc}
loc_8042CB0:
	ldrb r0, [r4,#2]
	ldrb r1, [r4,#3]
	ldrb r2, [r4,#4]
	ldrb r3, [r4,#5]
	lsl r1, r1, #8
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	orr r0, r1
	orr r0, r2
	orr r0, r3
	push {r0,r2,r3}
	bl sub_803D0F4
	mov r1, r0
	pop {r0,r2,r3}
	mov r2, #0
	cmp r1, r0
	beq loc_8042CDC
	add r2, #1
	cmp r1, r0
	bgt loc_8042CDC
	add r2, #1
loc_8042CDC:
	add r2, #6
	ldrb r1, [r4,r2]
loc_8042CE0:
	cmp r1, #0xff
	beq loc_8042CEC
	bl chatbox_config_80408D0 // (int notUsed, u8 scriptID) -> void
	mov r0, #1
	pop {pc}
loc_8042CEC:
	add r4, #9
	mov r0, #1
	pop {pc}
	.balign 4, 0x00
dword_8042CF4: .word 0xFFFFFFFF
	thumb_func_end chatbox_8042C18

	thumb_local_start
chatbox_FE_numberinput:
	push {lr}
	ldr r0, off_8042D08 // =jt_8042D0C
	ldrb r1, [r4,#1]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
off_8042D08: .word jt_8042D0C
jt_8042D0C: .word sub_804312C+1
	.word chatbox_8043164+1
	.word chatbox_80432C8+1
	.word chatbox_804330C+1
	.word chatbox_80436B0+1
	.word chatbox_80436E8+1
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word 0x0
	.word chatbox_80432C8+1
	.word chatbox_8042F84+1
	.word 0x0
	.word chatbox_80434E0+1
	.word chatbox_80438B4+1
	.word chatbox_80438EC+1
	.word 0x304C78A0
	.word 0x54292100
	.word 0x20013403
	.word 0x46F7
	thumb_func_end chatbox_FE_numberinput

	thumb_local_start
chatbox_8042D68:
	push {lr}
	mov r0, #FLAGS_3E_UNK_0001
	bl chatbox_setflags_3e // (int mask) -> void
	bl chatbox_8040DBC
	ldrh r0, [r5,#0xc]
	cmp r0, #0
	ble loc_8042D80
	sub r0, #1
	strh r0, [r5,#0xc]
	b loc_8042DB6
loc_8042D80:
	ldrb r0, [r5,#4]
	cmp r0, #1
	beq loc_8042D96
	mov r0, #0
	strb r0, [r5,#0x13]
	mov r0, #1
	strb r0, [r5,#4]
	mov r0, #FLAGS_3E_UNK_0010
	bl chatbox_setflags_3e // (int mask) -> void
	b loc_8042DB6
loc_8042D96:
	ldrh r0, [r5,#0x26]
	mov r1, #1
	tst r0, r1
	bne loc_8042DBA
	mov r1, #8
	tst r0, r1
	beq loc_8042DB6
	ldrb r0, [r5,#0x13]
	cmp r0, #8
	beq loc_8042DB6
	mov r1, #0x6c
	ldrh r0, [r5,r1]
	bl sound_play // () -> void
	mov r0, #8
	strb r0, [r5,#0x13]
loc_8042DB6:
	mov r0, #0
	pop {pc}
loc_8042DBA:
	ldrb r0, [r5,#0x13]
	cmp r0, #8
	bne loc_8042DB6
	mov r1, #0x6e
	ldrh r0, [r5,r1]
	bl sound_play // () -> void
	mov r0, #FLAGS_3E_UNK_0010 | FLAGS_3E_UNK_0001
	bl chatbox_clearFlags_3e // (int mask) -> void
	mov r0, #7
	bl chatbox_clear_eFlags2009F38 // (int a1) ->
	ldrb r0, [r5,#0x13]
	bl chatbox_set_eFlags2009F38
	mov r0, #0
	strb r0, [r5,#4]
	strh r0, [r5,#0xc]
	mov r0, #4
	str r0, [r5,#0x78]
	mov r0, #0x20
	bl chatbox_set_eFlags2009F38
	add r4, #2
	mov r0, #0
	pop {pc}
	push {lr}
	mov r0, #FLAGS_3E_UNK_0001
	bl chatbox_setflags_3e // (int mask) -> void
	bl chatbox_8040DBC
	ldrh r0, [r5,#0xc]
	cmp r0, #0
	ble loc_8042E08
	sub r0, #1
	strh r0, [r5,#0xc]
	b loc_8042E62
loc_8042E08:
	ldrb r0, [r5,#4]
	cmp r0, #1
	beq loc_8042E1E
	mov r0, #0
	strb r0, [r5,#0x13]
	mov r0, #1
	strb r0, [r5,#4]
	// mask
	mov r0, #FLAGS_3E_UNK_0010
	bl chatbox_setflags_3e // (int mask) -> void
	b loc_8042E62
loc_8042E1E:
	ldrb r1, [r4,#1]
	cmp r1, #5
	beq loc_8042E38
	ldrh r0, [r5,#0x26]
	mov r1, #2
	tst r0, r1
	beq loc_8042E38
	mov r1, #0x6a
	ldrh r0, [r5,r1]
	bl sound_play // () -> void
	mov r2, #4
	b loc_8042EB2
loc_8042E38:
	ldrh r0, [r5,#0x26]
	mov r1, #1
	tst r0, r1
	bne loc_8042E66
	mov r1, #8
	tst r0, r1
	beq loc_8042E62
	ldrb r0, [r5,#0x13]
	mov r1, #0x80
	ldr r1, [r5,r1]
	sub r1, #1
	cmp r0, r1
	beq loc_8042E62
	mov r1, #0x6c
	ldrh r0, [r5,r1]
	bl sound_play // () -> void
	mov r0, #0x80
	ldr r0, [r5,r0]
	sub r0, #1
	strb r0, [r5,#0x13]
loc_8042E62:
	mov r0, #0
	pop {pc}
loc_8042E66:
	ldrb r0, [r5,#0x13]
	mov r1, #0x80
	ldr r1, [r5,r1]
	sub r1, #1
	cmp r0, r1
	bne loc_8042E62
	mov r0, #FLAGS_3E_UNK_0010 | FLAGS_3E_UNK_0001
	bl chatbox_clearFlags_3e // (int mask) -> void
	mov r0, #0
	strb r0, [r5,#4]
	strh r0, [r5,#0xc]
	mov r0, #4
	str r0, [r5,#0x78]
	mov r0, #0x20
	bl chatbox_set_eFlags2009F38
	mov r2, #1
	ldrb r1, [r4,#1]
	cmp r1, #3
	bne loc_8042E9A
	bl chatbox_8042EC8
	tst r0, r0
	beq loc_8042EB0
	b loc_8042EA2
loc_8042E9A:
	bl chatbox_8042F10
	tst r0, r0
	beq loc_8042EB0
loc_8042EA2:
	push {r0-r3}
	mov r1, #0x6e
	ldrh r0, [r5,r1]
	bl sound_play // () -> void
	pop {r0-r3}
	mov r2, #0
loc_8042EB0:
	add r2, #2
loc_8042EB2:
	ldrb r1, [r4,r2]
	cmp r1, #0xff
	beq loc_8042EC0
	bl chatbox_config_80408D0 // (int notUsed, u8 scriptID) -> void
	mov r0, #1
	pop {pc}
loc_8042EC0:
	add r4, #5
	mov r0, #0
	pop {pc}
	.balign 4, 0x00
	thumb_func_end chatbox_8042D68

	thumb_local_start
chatbox_8042EC8:
	push {r1-r7,lr}
	mov r4, #0
	ldr r0, [r5,#0x4c]
	ldr r1, [r5,#0x54]
	mov r2, #4
	add r4, r4, r0
	ldr r0, [r5,#0x50]
	ldr r1, [r5,#0x58]
	mov r2, #3
	add r4, r4, r0
	str r4, [r5,#0x4c]
	mov r0, #0
	cmp r4, #7
	bne locret_8042EE6
	mov r0, #1
locret_8042EE6:
	pop {r1-r7,pc}
	thumb_func_end chatbox_8042EC8

	thumb_local_start
chatbox_8042EE8:
	push {r1-r7,lr}
	lsl r0, r0, #3
	ldr r2, off_8042F0C // =byte_8045CCC
	add r2, r2, r0
	mov r0, #0x4c
	add r0, r0, r5
loc_8042EF4:
	ldrb r3, [r2]
	ldrb r4, [r0]
	cmp r3, r4
	bne loc_8042F08
	add r0, #1
	add r2, #1
	sub r1, #1
	bgt loc_8042EF4
	mov r0, #1
	b locret_8042F0A
loc_8042F08:
	mov r0, #0
locret_8042F0A:
	pop {r1-r7,pc}
off_8042F0C: .word byte_8045CCC
	thumb_func_end chatbox_8042EE8

	thumb_local_start
chatbox_8042F10:
	push {r2,lr}
	ldr r0, [r5,#0x4c]
	bl chatbox_8042F34
	mov r3, r0
	mov r0, #1
	ldr r2, off_8042F30 // =byte_8044264
loc_8042F1E:
	ldr r1, [r2]
	tst r1, r1
	beq locret_8042F2E
	cmp r3, r1
	beq loc_8042F2C
	add r2, #4
	b loc_8042F1E
loc_8042F2C:
	mov r0, #0
locret_8042F2E:
	pop {r2,pc}
off_8042F30: .word byte_8044264
	thumb_func_end chatbox_8042F10

	thumb_local_start
chatbox_8042F34:
	push {r2}
	mov r1, r0
	mov r3, #0xff
	mov r2, #0
loc_8042F3C:
	and r1, r3
	lsr r1, r2
	tst r1, r1
	beq loc_8042F80
	cmp r1, #0x5e
	bge loc_8042F4C
	add r1, #0x2f
	b loc_8042F70
loc_8042F4C:
	cmp r1, #0x8f
	bne loc_8042F54
	mov r1, #0x2f
	b loc_8042F70
loc_8042F54:
	cmp r1, #0x8a
	bne loc_8042F5C
	mov r1, #0xa5
	b loc_8042F70
loc_8042F5C:
	cmp r1, #0x89
	bne loc_8042F64
	mov r1, #0x2e
	b loc_8042F70
loc_8042F64:
	cmp r1, #0x79
	bne loc_8042F6C
	mov r1, #0x2d
	b loc_8042F70
loc_8042F6C:
	sub r1, #0x1d
	b loc_8042F70
loc_8042F70:
	lsl r1, r2
	bic r0, r3
	orr r0, r1
	add r2, #8
	mov r3, #0xff
	lsl r3, r2
	mov r1, r0
	b loc_8042F3C
loc_8042F80:
	pop {r2}
	mov pc, lr
	thumb_func_end chatbox_8042F34

	thumb_local_start
chatbox_8042F84:
	push {lr}
	pop {pc}
	thumb_func_end chatbox_8042F84

	thumb_local_start
sub_8042F88:
	push {r4-r6,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_ChatboxPtr]
	mov r2, #0x1c
	mov r3, #0xf
	mov r4, #0
	mov r6, #0
loc_8042F96:
	mov r1, r0
	lsr r1, r2
	and r1, r3
	lsl r1, r4
	orr r6, r1
	add r4, #8
	sub r2, #4
	cmp r2, #0x10
	bge loc_8042F96
	str r6, [r5,#0x54]
	mov r4, #0
	mov r6, #0
loc_8042FAE:
	mov r1, r0
	lsr r1, r2
	and r1, r3
	lsl r1, r4
	orr r6, r1
	add r4, #8
	sub r2, #4
	bge loc_8042FAE
	str r6, [r5,#0x58]
	pop {r4-r6,pc}
	thumb_func_end sub_8042F88

	thumb_local_start
sub_8042FC2:
	push {lr}
	ldr r0, dword_8042FD0 // =0x67625e6f
	str r0, [r5,#0x54]
	ldr r0, dword_8042FD4 // =0x687261
	str r0, [r5,#0x58]
	pop {pc}
	.byte 0, 0
dword_8042FD0: .word 0x67625E6F
dword_8042FD4: .word 0x687261
	thumb_func_end sub_8042FC2

	thumb_local_start
chatbox_F9_storebyte:
	push {lr}
	ldr r0, off_8042FE8 // =off_8042FEC
	ldrb r1, [r4,#1]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
off_8042FE8: .word off_8042FEC
off_8042FEC: .word chatbox_8042FF4+1
	.word chatbox_8043008+1
	thumb_func_end chatbox_F9_storebyte

	thumb_local_start
chatbox_8042FF4:
	push {lr}
	mov r2, r10
	ldr r2, [r2,#oToolkit_S2011c50_Ptr]
	add r2, #8
	ldrb r0, [r4,#2]
	ldrb r1, [r4,#3]
	strb r1, [r2,r0]
	add r4, #4
	mov r0, #1
	pop {pc}
	thumb_func_end chatbox_8042FF4

	thumb_local_start
chatbox_8043008:
	ldr r0, off_804301C // =off_8043C64
	ldrb r1, [r4,#2]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	ldrb r1, [r4,#3]
	strb r1, [r0]
	add r4, #4
	mov r0, #1
	mov pc, lr
	.balign 4, 0x00
off_804301C: .word off_8043C64
	thumb_func_end chatbox_8043008

	thumb_local_start
chatbox_FF_copytext:
	push {lr}
	ldr r0, off_8043030 // =off_8043034
	ldrb r1, [r4,#1]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	mov lr, pc
	bx r0
	pop {pc}
off_8043030: .word off_8043034
off_8043034: .word chatbox_80430A0+1
	.word chatbox_80430A0+1
	thumb_func_end chatbox_FF_copytext

	thumb_local_start
dead_804303C:
	push {lr}
	ldrb r0, [r5,#oChatbox_Unk_05]
	add r0, #1
	strb r0, [r5,#oChatbox_Unk_05]
	ldr r0, off_8043084 // =off_8043088
	ldrb r2, [r4,#2]
	ldrb r1, [r4,#1]
	tst r1, r1
	beq loc_8043050
	add r2, #2
loc_8043050:
	mov r1, #0
	lsl r2, r2, #2
	ldr r0, [r0,r2]
	mov r7, r5
	add r7, #0x64
	ldrh r2, [r7]
	lsl r2, r2, #6
	ldr r1, off_8043128 // =byte_200AFA0
	add r1, r1, r2
	push {r1}
	mov r2, #0x40
	bl CopyBytes // (u8 *src, u8 *dest, int byteCount) -> void
	pop {r0}
	mov r7, r5
	add r7, #0x64
	ldrh r1, [r7]
	add r1, #1
	strh r1, [r7]
	str r0, [r5,#0x2c] // ChatBoxPropreties.pScriptCursor
	add r4, #3
	str r4, [r5,#0x44] // ChatBoxPropreties.unk_44
	mov r4, r0
	mov r0, #1
	pop {pc}
	.balign 4, 0x00
off_8043084: .word off_8043088
off_8043088: .word dword_20018F0
	.word dword_200194C
	.word dword_20019A8
	.word dword_2001A04
	.word dword_2001A60
	.word dword_2001ABC
	thumb_func_end dead_804303C

	thumb_local_start
chatbox_80430A0:
	push {lr}
	ldrb r0, [r5,#5]
	add r0, #1
	strb r0, [r5,#5]
	ldr r0, off_80430F8 // =byte_80430FC
	ldrb r2, [r4,#2]
	ldrb r1, [r4,#1]
	tst r1, r1
	beq loc_80430B4
	add r2, #2
loc_80430B4:
	mov r1, #0
	lsl r2, r2, #2
	ldr r0, [r0,r2]
	mov r7, r5
	add r7, #0x64
	ldrh r2, [r7]
	lsl r2, r2, #6
	ldr r1, off_8043128 // =byte_200AFA0
	add r1, r1, r2
	push {r1}
	mov r2, #0x40
	bl CopyBytes // (u8 *src, u8 *dest, int byteCount) -> void
	pop {r0}
	mov r7, r5
	add r7, #0x64
	ldrh r1, [r7]
	add r1, #1
	strh r1, [r7]
	str r0, [r5,#0x2c]
	add r4, #3
	str r4, [r5,#0x44]
	push {r0}
	ldrb r0, [r5,#5]
	sub r0, #1
	ldr r1, off_8043124 // =0x140
	mov r2, #4
	mul r0, r2
	add r1, r1, r0
	str r4, [r5,r1]
	pop {r0}
	mov r4, r0
	mov r0, #1
	pop {pc}
off_80430F8: .word byte_80430FC
byte_80430FC: .byte 0x86, 0x11, 0x0, 0x2, 0x9E, 0x11, 0x0, 0x2, 0xD6, 0x7, 0x0, 0x2
	.byte 0x3A, 0x8, 0x0, 0x2, 0xF4, 0x18, 0x0, 0x2, 0x50, 0x19, 0x0, 0x2
	.byte 0xAC, 0x19, 0x0, 0x2, 0x8, 0x1A, 0x0, 0x2, 0x64, 0x1A, 0x0, 0x2
	.byte 0xC0, 0x1A, 0x0, 0x2
off_8043124: .word 0x140
off_8043128: .word byte_200AFA0
	thumb_func_end chatbox_80430A0

	thumb_local_start
sub_804312C:
	ldrb r0, [r4,#2]
	add r0, #0x4c
	mov r1, #0
	strb r1, [r5,r0]
	ldr r0, off_804315C // =0x1cc
	ldr r1, [r5,r0]
	mov r2, #0xc
	mul r2, r1
	add r1, #1
	str r1, [r5,r0]
	ldr r1, off_8043160 // =0x154
	add r2, r2, r1
	ldrb r0, [r4,#2]
	strb r0, [r5,r2]
	add r2, #4
	ldr r0, [r5,#0x70]
	str r0, [r5,r2]
	add r2, #4
	ldr r0, [r5,#0x7c]
	str r0, [r5,r2]
	add r4, #3
	mov r0, #1
	mov pc, lr
	.balign 4, 0x00
off_804315C: .word 0x1CC
off_8043160: .word 0x154
	thumb_func_end sub_804312C

	thumb_local_start
chatbox_8043164:
	push {lr}
	// mask
	mov r0, #FLAGS_3E_UNK_0010 | FLAGS_3E_UNK_0001
	bl chatbox_setflags_3e // (int mask) -> void
	bl chatbox_8040DBC
	ldrb r0, [r5,#0x13]
	mov r1, #0xa0
	mov r2, #0x10
	mul r2, r0
	add r7, r1, r2
	add r7, #4
	ldrh r0, [r5,r7]
	add r7, #4
	push {r0}
	ldr r1, [r5,r7]
	str r1, [r5,#0x70]
	ldrb r3, [r5,#0xf]
	sub r3, #2
	strb r3, [r5,#0xf]
	bl chatbox_80409E0
	ldrb r3, [r5,#0xf]
	add r3, #2
	strb r3, [r5,#0xf]
	pop {r0}
	ldrh r1, [r5,#0x24]
	ldr r2, off_80432BC // =word_80432C0
	mov r3, #0xc
loc_804319E:
	ldrh r6, [r2]
	tst r6, r1
	bne loc_80431AE
	add r2, #2
	sub r3, #4
	cmp r3, #0
	blt loc_80431CA
	b loc_804319E
loc_80431AE:
	mov r6, #0xf0
	bic r1, r6
	strh r1, [r5,#0x24]
	lsr r0, r3
	mov r1, #0xf
	and r0, r1
	ldrb r1, [r5,#0x13]
	strb r0, [r5,#0x13]
	cmp r0, r1
	beq loc_80431CA
	mov r2, #0x6c
	ldrh r0, [r5,r2]
	bl sound_play // () -> void
loc_80431CA:
	ldrb r0, [r5,#0x13]
	ldrb r0, [r5,#0x13]
	cmp r0, #8
	beq loc_8043208
	add r0, #0x4c
	ldrb r3, [r5,r0]
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_LowSensitivityHeld]
	mov r1, #0x80
	tst r0, r1
	bne loc_80431EA
	mov r1, #0x40
	tst r0, r1
	bne loc_80431F2
	b loc_8043208
loc_80431EA:
	sub r3, #1
	bge loc_80431FA
	mov r3, #9
	b loc_80431FA
loc_80431F2:
	add r3, #1
	cmp r3, #9
	ble loc_80431FA
	mov r3, #0
loc_80431FA:
	mov r1, #0x6c
	ldrh r0, [r5,r1]
	bl sound_play // () -> void
	ldrb r0, [r5,#0x13]
	add r0, #0x4c
	strb r3, [r5,r0]
loc_8043208:
	ldr r0, off_80432B8 // =0x154
	add r0, r0, r5
	mov r2, #0
loc_804320E:
	ldrb r1, [r0]
	add r1, #0x4c
	ldrb r1, [r5,r1]
	add r1, #1
	push {r0-r7}
	ldr r6, [r0,#4]
	lsl r6, r6, #2
	mov r3, #2
	lsl r3, r3, #2
	ldr r0, off_80432AC // =byte_803FCE4
	ldr r0, [r0,r3]
	add r6, r6, r0
	mov r0, #1
	ldr r3, off_80432B0 // =sub_3007038+1
	mov lr, pc
	bx r3
	pop {r0-r7}
	add r0, #0xc
	add r2, #1
	cmp r2, #8
	blt loc_804320E
	ldrb r0, [r5,#4]
	cmp r0, #1
	beq loc_8043244
	mov r0, #1
	strb r0, [r5,#4]
	b loc_8043272
loc_8043244:
	ldrb r0, [r5,#0x11]
	tst r0, r0
	beq loc_8043252
	mov r0, #0
	strb r0, [r5,#2]
	mov r1, #0x3d
	strb r0, [r5,r1]
loc_8043252:
	ldrh r0, [r5,#0x26]
	mov r1, #1
	tst r0, r1
	bne loc_8043276
	mov r1, #8
	tst r0, r1
	beq loc_8043272
	ldrb r0, [r5,#0x13]
	cmp r0, #8
	beq loc_8043272
	mov r1, #0x6c
	ldrh r0, [r5,r1]
	bl sound_play // () -> void
	mov r0, #8
	strb r0, [r5,#0x13]
loc_8043272:
	mov r0, #0
	pop {pc}
loc_8043276:
	ldrb r0, [r5,#0x13]
	cmp r0, #8
	bne loc_8043272
	mov r1, #0x6e
	ldrh r0, [r5,r1]
	bl sound_play // () -> void
	mov r0, #FLAGS_3E_UNK_0010 | FLAGS_3E_UNK_0001
	bl chatbox_clearFlags_3e // (int mask) -> void
	mov r0, #7
	bl chatbox_clear_eFlags2009F38 // (int a1) ->
	ldrb r0, [r5,#0x13]
	bl chatbox_set_eFlags2009F38
	mov r0, #0
	strb r0, [r5,#4]
	strh r0, [r5,#0xc]
	mov r0, #4
	str r0, [r5,#0x78]
	mov r0, #0x20
	bl chatbox_set_eFlags2009F38
	add r4, #2
	mov r0, #0
	pop {pc}
off_80432AC: .word byte_803FCE4
off_80432B0: .word sub_3007038+1
	.word 0x1CC
off_80432B8: .word 0x154
off_80432BC: .word word_80432C0
word_80432C0: .hword 0x40
	.word 0x200080
	.hword 0x10
	thumb_func_end chatbox_8043164

	thumb_local_start
chatbox_80432C8:
	ldrb r0, [r4,#2]
	add r0, #0x4c
	mov r1, #0
	ldrb r2, [r4,#1]
	cmp r2, #2
	beq loc_80432DC
	mov r1, #1
	cmp r2, #4
	beq loc_80432DC
	mov r1, #0
loc_80432DC:
	strb r1, [r5,r0]
	ldr r0, off_8043304 // =0x1cc
	ldr r1, [r5,r0]
	mov r2, #0xc
	mul r2, r1
	add r1, #1
	str r1, [r5,r0]
	ldr r1, off_8043308 // =0x154
	add r2, r2, r1
	ldrb r0, [r4,#2]
	strb r0, [r5,r2]
	add r2, #4
	ldr r0, [r5,#0x70]
	str r0, [r5,r2]
	add r2, #4
	ldr r0, [r5,#0x7c]
	str r0, [r5,r2]
	add r4, #3
	mov r0, #1
	mov pc, lr
off_8043304: .word 0x1CC
off_8043308: .word 0x154
	thumb_func_end chatbox_80432C8

	thumb_local_start
chatbox_804330C:
	push {lr}
	// mask
	mov r0, #FLAGS_3E_UNK_0010 | FLAGS_3E_UNK_0001
	bl chatbox_setflags_3e // (int mask) -> void
	bl chatbox_8040DBC
	ldrb r0, [r5,#0x13]
	mov r1, #0xa0
	mov r2, #0x10
	mul r2, r0
	add r7, r1, r2
	add r7, #4
	ldrh r0, [r5,r7]
	add r7, #4
	push {r0}
	ldr r1, [r5,r7]
	str r1, [r5,#0x70]
	ldrb r3, [r5,#0xf]
	sub r3, #2
	strb r3, [r5,#0xf]
	bl chatbox_80409E0
	ldrb r3, [r5,#0xf]
	add r3, #2
	strb r3, [r5,#0xf]
	pop {r0}
	ldrh r1, [r5,#0x24]
	ldr r2, off_80434D4 // =byte_80434D8
	mov r3, #0xc
loc_8043346:
	ldrh r6, [r2]
	tst r6, r1
	bne loc_8043356
	add r2, #2
	sub r3, #4
	cmp r3, #0
	blt loc_8043372
	b loc_8043346
loc_8043356:
	mov r6, #0xf0
	bic r1, r6
	strh r1, [r5,#0x24]
	lsr r0, r3
	mov r1, #0xf
	and r0, r1
	ldrb r1, [r5,#0x13]
	strb r0, [r5,#0x13]
	cmp r0, r1
	beq loc_8043372
	mov r2, #0x6c
	ldrh r0, [r5,r2]
	bl sound_play // () -> void
loc_8043372:
	mov r0, #0x80
	ldrb r0, [r5,r0]
	sub r0, #1
	ldrb r1, [r5,#0x13]
	cmp r0, r1
	beq loc_80433BA
	ldrb r2, [r5,#0x13]
	mov r1, #0x80
	ldr r1, [r5,r1]
	cmp r2, r1
	beq loc_80433BA
	add r2, #0x4c
	ldrb r3, [r5,r2]
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_LowSensitivityHeld]
	mov r1, #0x80
	tst r0, r1
	bne loc_80433A0
	mov r1, #0x40
	tst r0, r1
	bne loc_80433A8
	b loc_80433BA
loc_80433A0:
	sub r3, #1
	bge loc_80433B0
	mov r3, #9
	b loc_80433B0
loc_80433A8:
	add r3, #1
	cmp r3, #9
	ble loc_80433B0
	mov r3, #0
loc_80433B0:
	mov r1, #0x6c
	ldrh r0, [r5,r1]
	bl sound_play // () -> void
	strb r3, [r5,r2]
loc_80433BA:
	ldr r0, off_80434D0 // =0x154
	add r0, r0, r5
	mov r2, #0x80
	ldrb r2, [r5,r2]
	sub r2, #2
loc_80433C4:
	ldrb r1, [r0]
	add r1, #0x4c
	ldrb r1, [r5,r1]
	add r1, #1
	push {r0-r7}
	ldr r6, [r0,#4]
	lsl r6, r6, #2
	mov r3, #2
	lsl r3, r3, #2
	ldr r0, off_80434C4 // =byte_803FCE4
	ldr r0, [r0,r3]
	add r6, r6, r0
	mov r0, #1
	ldr r3, off_80434C8 // =sub_3007038+1
	mov lr, pc
	bx r3
	pop {r0-r7}
	add r0, #0xc
	sub r2, #1
	bge loc_80433C4
	ldrh r0, [r5,#0xc]
	cmp r0, #0
	ble loc_80433F8
	sub r0, #1
	strh r0, [r5,#0xc]
	b loc_8043456
loc_80433F8:
	ldrb r0, [r5,#4]
	cmp r0, #1
	beq loc_8043404
	mov r0, #1
	strb r0, [r5,#4]
	b loc_8043456
loc_8043404:
	ldrb r0, [r5,#0x11]
	tst r0, r0
	beq loc_8043412
	mov r0, #0
	strb r0, [r5,#2]
	mov r1, #0x3d
	strb r0, [r5,r1]
loc_8043412:
	ldrb r1, [r4,#1]
	cmp r1, #5
	beq loc_804342C
	ldrh r0, [r5,#0x26]
	mov r1, #2
	tst r0, r1
	beq loc_804342C
	mov r1, #0x6a
	ldrh r0, [r5,r1]
	bl sound_play // () -> void
	mov r2, #4
	b loc_80434A6
loc_804342C:
	ldrh r0, [r5,#0x26]
	mov r1, #1
	tst r0, r1
	bne loc_804345A
	mov r1, #8
	tst r0, r1
	beq loc_8043456
	ldrb r0, [r5,#0x13]
	mov r1, #0x80
	ldr r1, [r5,r1]
	sub r1, #1
	cmp r0, r1
	beq loc_8043456
	mov r1, #0x6c
	ldrh r0, [r5,r1]
	bl sound_play // () -> void
	mov r0, #0x80
	ldr r0, [r5,r0]
	sub r0, #1
	strb r0, [r5,#0x13]
loc_8043456:
	mov r0, #0
	pop {pc}
loc_804345A:
	ldrb r0, [r5,#0x13]
	mov r1, #0x80
	ldr r1, [r5,r1]
	sub r1, #1
	cmp r0, r1
	bne loc_8043456
	mov r0, #FLAGS_3E_UNK_0010 | FLAGS_3E_UNK_0001
	bl chatbox_clearFlags_3e // (int mask) -> void
	mov r0, #0
	strb r0, [r5,#4]
	strh r0, [r5,#0xc]
	mov r0, #4
	str r0, [r5,#0x78]
	mov r0, #0x20
	bl chatbox_set_eFlags2009F38
	mov r2, #1
	ldrb r1, [r4,#1]
	cmp r1, #3
	bne loc_804348E
	bl chatbox_8042EC8
	tst r0, r0
	beq loc_80434A4
	b loc_8043496
loc_804348E:
	bl chatbox_8042F10
	tst r0, r0
	beq loc_80434A4
loc_8043496:
	push {r0-r3}
	mov r1, #0x6e
	ldrh r0, [r5,r1]
	bl sound_play // () -> void
	pop {r0-r3}
	mov r2, #0
loc_80434A4:
	add r2, #2
loc_80434A6:
	mov r0, #FLAGS_3E_UNK_0010 | FLAGS_3E_UNK_0001
	bl chatbox_clearFlags_3e // (int mask) -> void
	mov r0, #4
	str r0, [r5,#0x78]
	ldrb r1, [r4,r2]
	cmp r1, #0xff
	beq loc_80434BE
	bl chatbox_config_80408D0 // (int notUsed, u8 scriptID) -> void
	mov r0, #1
	pop {pc}
loc_80434BE:
	add r4, #5
	mov r0, #0
	pop {pc}
off_80434C4: .word byte_803FCE4
off_80434C8: .word sub_3007038+1
	.word 0x1CC
off_80434D0: .word 0x154
off_80434D4: .word byte_80434D8
byte_80434D8: .byte 0x40, 0x0, 0x80, 0x0, 0x20, 0x0, 0x10, 0x0
	thumb_func_end chatbox_804330C

	thumb_local_start
chatbox_80434E0:
	push {lr}
	// mask
	mov r0, #FLAGS_3E_UNK_0010 | FLAGS_3E_UNK_0001
	bl chatbox_setflags_3e // (int mask) -> void
	mov r0, #0x80
	ldrb r0, [r5,r0]
	bl chatbox_8040DDC // (int v3) ->
	ldrb r0, [r5,#0x13]
	mov r1, #0xa0
	mov r2, #0x10
	mul r2, r0
	add r7, r1, r2
	add r7, #4
	ldrh r0, [r5,r7]
	add r7, #4
	push {r0}
	ldr r1, [r5,r7]
	str r1, [r5,#0x70]
	ldrb r3, [r5,#0xf]
	sub r3, #2
	strb r3, [r5,#0xf]
	bl chatbox_80409E0
	ldrb r3, [r5,#0xf]
	add r3, #2
	strb r3, [r5,#0xf]
	pop {r0}
	ldrh r1, [r5,#0x24]
	ldr r2, off_80436A4 // =word_80436A8
	mov r3, #0xc
loc_804351E:
	ldrh r6, [r2]
	tst r6, r1
	bne loc_804352E
	add r2, #2
	sub r3, #4
	cmp r3, #0
	blt loc_804354A
	b loc_804351E
loc_804352E:
	mov r6, #0xf0
	bic r1, r6
	strh r1, [r5,#0x24]
	lsr r0, r3
	mov r1, #0xf
	and r0, r1
	ldrb r1, [r5,#0x13]
	strb r0, [r5,#0x13]
	cmp r0, r1
	beq loc_804354A
	mov r2, #0x6c
	ldrh r0, [r5,r2]
	bl sound_play // () -> void
loc_804354A:
	mov r0, #0x80
	ldrb r0, [r5,r0]
	sub r0, #1
	ldrb r1, [r5,#0x13]
	cmp r0, r1
	beq loc_8043592
	ldrb r2, [r5,#0x13]
	mov r1, #0x80
	ldr r1, [r5,r1]
	cmp r2, r1
	beq loc_8043592
	add r2, #0x4c
	ldrb r3, [r5,r2]
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_LowSensitivityHeld]
	mov r1, #0x80
	tst r0, r1
	bne loc_8043578
	mov r1, #0x40
	tst r0, r1
	bne loc_8043580
	b loc_8043592
loc_8043578:
	sub r3, #1
	bge loc_8043588
	mov r3, #9
	b loc_8043588
loc_8043580:
	add r3, #1
	cmp r3, #9
	ble loc_8043588
	mov r3, #0
loc_8043588:
	mov r1, #0x6c
	ldrh r0, [r5,r1]
	bl sound_play // () -> void
	strb r3, [r5,r2]
loc_8043592:
	ldr r0, off_80436A0 // =0x154
	add r0, r0, r5
	mov r2, #0x80
	ldrb r2, [r5,r2]
	sub r2, #2
loc_804359C:
	ldrb r1, [r0]
	add r1, #0x4c
	ldrb r1, [r5,r1]
	add r1, #1
	push {r0-r7}
	ldr r6, [r0,#4]
	lsl r6, r6, #2
	mov r3, #2
	lsl r3, r3, #2
	ldr r0, off_8043694 // =byte_803FCE4
	ldr r0, [r0,r3]
	add r6, r6, r0
	mov r0, #1
	ldr r3, off_8043698 // =sub_3007038+1
	mov lr, pc
	bx r3
	pop {r0-r7}
	add r0, #0xc
	sub r2, #1
	bge loc_804359C
	ldrh r0, [r5,#0xc]
	cmp r0, #0
	ble loc_80435D0
	sub r0, #1
	strh r0, [r5,#0xc]
	b loc_8043628
loc_80435D0:
	ldrb r0, [r5,#4]
	cmp r0, #1
	beq loc_80435DC
	mov r0, #1
	strb r0, [r5,#4]
	b loc_8043628
loc_80435DC:
	ldrb r0, [r5,#0x11]
	tst r0, r0
	beq loc_80435EA
	mov r0, #0
	strb r0, [r5,#2]
	mov r1, #0x3d
	strb r0, [r5,r1]
loc_80435EA:
	ldrh r0, [r5,#0x26]
	mov r1, #2
	tst r0, r1
	beq loc_80435FE
	mov r1, #0x6a
	ldrh r0, [r5,r1]
	bl sound_play // () -> void
	mov r2, #4
	b loc_8043674
loc_80435FE:
	ldrh r0, [r5,#0x26]
	mov r1, #1
	tst r0, r1
	bne loc_804362C
	mov r1, #8
	tst r0, r1
	beq loc_8043628
	ldrb r0, [r5,#0x13]
	mov r1, #0x80
	ldr r1, [r5,r1]
	sub r1, #1
	cmp r0, r1
	beq loc_8043628
	mov r1, #0x6c
	ldrh r0, [r5,r1]
	bl sound_play // () -> void
	mov r0, #0x80
	ldr r0, [r5,r0]
	sub r0, #1
	strb r0, [r5,#0x13]
loc_8043628:
	mov r0, #0
	pop {pc}
loc_804362C:
	ldrb r0, [r5,#0x13]
	mov r1, #0x80
	ldr r1, [r5,r1]
	sub r1, #1
	cmp r0, r1
	bne loc_8043628
	mov r0, #FLAGS_3E_UNK_0010 | FLAGS_3E_UNK_0001
	bl chatbox_clearFlags_3e // (int mask) -> void
	mov r0, #0
	strb r0, [r5,#4]
	strh r0, [r5,#0xc]
	mov r0, #4
	str r0, [r5,#0x78]
	mov r0, #0x20
	bl chatbox_set_eFlags2009F38
	mov r2, #1
	ldrb r0, [r4,#5]
	mov r1, #0x80
	ldr r1, [r5,r1]
	sub r1, #1
	bl chatbox_8042EE8
	tst r0, r0
	beq loc_8043672
	b loc_8043664
	beq loc_8043672
loc_8043664:
	push {r0-r3}
	mov r1, #0x6e
	ldrh r0, [r5,r1]
	bl sound_play // () -> void
	pop {r0-r3}
	mov r2, #0
loc_8043672:
	add r2, #2
loc_8043674:
	mov r0, #FLAGS_3E_UNK_0010 | FLAGS_3E_UNK_0001
	bl chatbox_clearFlags_3e // (int mask) -> void
	mov r0, #4
	str r0, [r5,#0x78]
	ldrb r1, [r4,r2]
	cmp r1, #0xff
	beq loc_804368C
	bl chatbox_config_80408D0 // (int notUsed, u8 scriptID) -> void
	mov r0, #1
	pop {pc}
loc_804368C:
	add r4, #5
	mov r0, #0
	pop {pc}
	.balign 4, 0x00
off_8043694: .word byte_803FCE4
off_8043698: .word sub_3007038+1
	.word 0x1CC
off_80436A0: .word 0x154
off_80436A4: .word word_80436A8
word_80436A8: .hword 0x40
	.word 0x200080
	.hword 0x10
	thumb_func_end chatbox_80434E0

	thumb_local_start
chatbox_80436B0:
	ldrb r0, [r4,#2]
	lsl r0, r0, #1
	mov r1, #0x5e
	add r0, #0x4c
	strh r1, [r5,r0]
	ldr r0, off_80436E0 // =0x1cc
	ldr r1, [r5,r0]
	mov r2, #0xc
	mul r2, r1
	add r1, #1
	str r1, [r5,r0]
	ldr r1, off_80436E4 // =0x154
	add r2, r2, r1
	ldrb r0, [r4,#2]
	strb r0, [r5,r2]
	add r2, #4
	ldr r0, [r5,#0x70]
	str r0, [r5,r2]
	add r2, #4
	ldr r0, [r5,#0x7c]
	str r0, [r5,r2]
	add r4, #3
	mov r0, #1
	mov pc, lr
off_80436E0: .word 0x1CC
off_80436E4: .word 0x154
	thumb_func_end chatbox_80436B0

	thumb_local_start
chatbox_80436E8:
	push {lr}
	// mask
	mov r0, #FLAGS_3E_UNK_0010 | FLAGS_3E_UNK_0001
	bl chatbox_setflags_3e // (int mask) -> void
	mov r0, #1
	strb r0, [r5,#2]
	mov r1, #0x3d
	strb r0, [r5,r1]
	ldrb r0, [r5,#0x13]
	mov r1, #0xa0
	mov r2, #0x10
	mul r2, r0
	add r7, r1, r2
	add r7, #4
	ldrh r0, [r5,r7]
	add r7, #4
	push {r7}
	ldrh r1, [r5,#0x24]
	ldr r2, off_80438A4 // =byte_80438A8
	mov r3, #0xc
loc_8043710:
	ldrh r6, [r2]
	tst r6, r1
	bne loc_8043720
	add r2, #2
	sub r3, #4
	cmp r3, #0
	blt loc_804373E
	b loc_8043710
loc_8043720:
	mov r6, #0xf0
	bic r1, r6
	strh r1, [r5,#0x24]
	lsr r0, r3
	mov r1, #0xf
	and r0, r1
	ldrb r1, [r5,#0x13]
	strb r0, [r5,#0x13]
	mov r7, r0
	cmp r0, r1
	beq loc_804373E
	mov r2, #0x6c
	ldrh r0, [r5,r2]
	bl sound_play // () -> void
loc_804373E:
	pop {r7}
	ldr r1, [r5,r7]
	str r1, [r5,#0x70]
	ldrb r3, [r5,#0xf]
	sub r3, #1
	strb r3, [r5,#0xf]
	bl chatbox_80409E0
	ldrb r3, [r5,#0xf]
	add r3, #1
	strb r3, [r5,#0xf]
	mov r0, #0x80
	ldrb r0, [r5,r0]
	sub r0, #1
	ldrb r1, [r5,#0x13]
	cmp r0, r1
	beq loc_804379E
	mov r2, #0x80
	ldr r2, [r5,r2]
	sub r2, #1
	cmp r1, r2
	beq loc_804379E
	lsl r1, r1, #1
	add r1, #0x4c
	ldrh r3, [r5,r1]
	mov r2, r1
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_LowSensitivityHeld]
	mov r1, #0x80
	tst r0, r1
	bne loc_8043786
	mov r1, #0x40
	tst r0, r1
	bne loc_8043792
	b loc_804379C
loc_8043786:
	add r3, #1
loc_8043788:
	ldr r0, dword_80438B0 // =0x1b9
	cmp r3, r0
	ble loc_804379C
	mov r3, #1
	b loc_804379C
loc_8043792:
	sub r3, #1
	cmp r3, #1
	bge loc_804379C
	ldr r3, dword_80438B0 // =0x1b9
	b loc_804379C
loc_804379C:
	strh r3, [r5,r2]
loc_804379E:
	ldr r0, dword_80438A0 // =0x154
	add r0, r0, r5
	mov r2, #0x80
	ldrb r2, [r5,r2]
	sub r2, #2
loc_80437A8:
	ldrb r1, [r0]
	lsl r1, r1, #1
	add r1, #0x4c
	ldrh r1, [r5,r1]
	push {r0-r7}
	ldr r6, [r0,#4]
	lsl r6, r6, #2
	ldrb r3, [r5,#0xf]
	sub r3, #2
	lsl r3, r3, #2
	ldr r0, off_8043894 // =byte_803FCE4
	ldr r0, [r0,r3]
	add r6, r6, r0
	mov r0, #1
	ldr r3, byte_8043898 // =0x39
	mov lr, pc
	bx r3
	pop {r0-r7}
	add r0, #0xc
	sub r2, #1
	bge loc_80437A8
	ldrh r0, [r5,#0xc]
	cmp r0, #0
	ble loc_80437DE
	sub r0, #1
	strh r0, [r5,#0xc]
	b loc_804382E
loc_80437DE:
	ldrb r0, [r5,#4]
	cmp r0, #1
	beq loc_80437EA
	mov r0, #1
	strb r0, [r5,#4]
	b loc_804382E
loc_80437EA:
	ldrb r1, [r4,#1]
	cmp r1, #5
	beq loc_8043804
	ldrh r0, [r5,#0x26]
	mov r1, #2
	tst r0, r1
	beq loc_8043804
	mov r1, #0x6a
	ldrh r0, [r5,r1]
	bl sound_play // () -> void
	mov r2, #4
	b loc_804387E
loc_8043804:
	ldrh r0, [r5,#0x26]
	mov r1, #1
	tst r0, r1
	bne loc_8043832
	mov r1, #8
	tst r0, r1
	beq loc_804382E
	ldrb r0, [r5,#0x13]
	mov r1, #0x80
	ldr r1, [r5,r1]
	sub r1, #1
	cmp r0, r1
	beq loc_804382E
	mov r1, #0x6c
	ldrh r0, [r5,r1]
	bl sound_play // () -> void
	mov r0, #0x80
	ldr r0, [r5,r0]
	sub r0, #1
	strb r0, [r5,#0x13]
loc_804382E:
	mov r0, #0
	pop {pc}
loc_8043832:
	ldrb r0, [r5,#0x13]
	mov r1, #0x80
	ldr r1, [r5,r1]
	sub r1, #1
	cmp r0, r1
	bne loc_804382E
	mov r0, #FLAGS_3E_UNK_0010
	bl chatbox_clearFlags_3e // (int mask) -> void
	mov r0, #0
	strb r0, [r5,#4]
	strh r0, [r5,#0xc]
	mov r0, #4
	str r0, [r5,#0x78]
	mov r0, #0x20
	bl chatbox_set_eFlags2009F38
	mov r2, #1
	ldrb r1, [r4,#1]
	cmp r1, #3
	bne loc_8043866
	bl chatbox_8042EC8
	tst r0, r0
	beq loc_804387C
	b loc_804386E
loc_8043866:
	bl chatbox_8042F10
	tst r0, r0
	beq loc_804387C
loc_804386E:
	push {r0-r3}
	mov r1, #0x6e
	ldrh r0, [r5,r1]
	bl sound_play // () -> void
	pop {r0-r3}
	mov r2, #0
loc_804387C:
	add r2, #2
loc_804387E:
	ldrb r1, [r4,r2]
	cmp r1, #0xff
	beq loc_804388C
	bl chatbox_config_80408D0 // (int notUsed, u8 scriptID) -> void
	mov r0, #1
	pop {pc}
loc_804388C:
	add r4, #5
	mov r0, #0
	pop {pc}
	.balign 4, 0x00
off_8043894: .word byte_803FCE4
byte_8043898: .byte 0x39, 0x70, 0x0, 0x3, 0xCC, 0x1, 0x0, 0x0
dword_80438A0: .word 0x154
off_80438A4: .word byte_80438A8
byte_80438A8: .byte 0x40, 0x0, 0x80, 0x0, 0x20, 0x0, 0x10, 0x0
dword_80438B0: .word 0x1B9
	thumb_func_end chatbox_80436E8

	thumb_local_start
chatbox_80438B4:
	ldrb r0, [r4,#2]
	add r0, #0x4c
	mov r1, #0
	strb r1, [r5,r0]
	ldr r0, off_80438E4 // =0x1cc
	ldr r1, [r5,r0]
	mov r2, #0xc
	mul r2, r1
	add r1, #1
	str r1, [r5,r0]
	ldr r1, off_80438E8 // =0x154
	add r2, r2, r1
	ldrb r0, [r4,#2]
	strb r0, [r5,r2]
	add r2, #4
	ldr r0, [r5,#0x70]
	str r0, [r5,r2]
	add r2, #4
	ldr r0, [r5,#0x7c]
	str r0, [r5,r2]
	add r4, #3
	mov r0, #1
	mov pc, lr
	.byte 0x0, 0x0
off_80438E4: .word 0x1CC
off_80438E8: .word 0x154
	thumb_func_end chatbox_80438B4

	thumb_local_start
chatbox_80438EC:
	push {lr}
	// mask
	mov r0, #FLAGS_3E_UNK_0010 | FLAGS_3E_UNK_0001
	bl chatbox_setflags_3e // (int mask) -> void
	bl chatbox_8040DBC
	ldrb r0, [r5,#0x13]
	mov r1, #0xa0
	mov r2, #0x10
	mul r2, r0
	add r7, r1, r2
	add r7, #4
	ldrh r0, [r5,r7]
	add r7, #4
	push {r7}
	ldrh r1, [r5,#0x24]
	ldr r2, off_8043A44 // =word_8043A48
	mov r3, #0xc
loc_8043910:
	ldrh r6, [r2]
	tst r6, r1
	bne loc_8043920
	add r2, #2
	sub r3, #4
	cmp r3, #0
	blt loc_804393C
	b loc_8043910
loc_8043920:
	mov r6, #0xf0
	bic r1, r6
	strh r1, [r5,#0x24]
	lsr r0, r3
	mov r1, #0xf
	and r0, r1
	ldrb r1, [r5,#0x13]
	strb r0, [r5,#0x13]
	cmp r0, r1
	beq loc_804393C
	mov r2, #0x6c
	ldrh r0, [r5,r2]
	bl sound_play // () -> void
loc_804393C:
	ldrb r0, [r5,#0x13]
	pop {r7}
	strb r0, [r5,#0x13]
	ldr r1, [r5,r7]
	str r1, [r5,#0x70]
	ldrb r3, [r5,#0xf]
	sub r3, #2
	strb r3, [r5,#0xf]
	bl chatbox_8040A9A
	ldrb r3, [r5,#0xf]
	add r3, #2
	strb r3, [r5,#0xf]
	ldrb r0, [r5,#0x13]
	add r0, #0x4c
	ldrb r3, [r5,r0]
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_LowSensitivityHeld]
	mov r1, #0x80
	tst r0, r1
	bne loc_8043970
	mov r1, #0x40
	tst r0, r1
	bne loc_8043978
	b loc_804398E
loc_8043970:
	sub r3, #1
	bge loc_8043980
	mov r3, #3
	b loc_8043980
loc_8043978:
	add r3, #1
	cmp r3, #3
	ble loc_8043980
	mov r3, #0
loc_8043980:
	mov r1, #0x6c
	ldrh r0, [r5,r1]
	bl sound_play // () -> void
	ldrb r0, [r5,#0x13]
	add r0, #0x4c
	strb r3, [r5,r0]
loc_804398E:
	ldr r0, off_8043A40 // =0x154
	add r0, r0, r5
	mov r2, #0
loc_8043994:
	ldrb r1, [r0]
	cmp r1, #0
	bne loc_80439A4
	add r1, #0x4c
	ldrb r1, [r5,r1]
	ldr r3, off_8043A50 // =byte_8043A54
	ldrb r1, [r3,r1]
	b loc_80439A8
loc_80439A4:
	add r1, #0x4c
	ldrb r1, [r5,r1]
loc_80439A8:
	add r1, #1
	push {r0-r7}
	ldr r6, [r0,#4]
	lsl r6, r6, #2
	mov r3, #2
	lsl r3, r3, #2
	ldr r0, off_8043A34 // =byte_803FCE4
	ldr r0, [r0,r3]
	add r6, r6, r0
	mov r0, #1
	ldr r3, off_8043A38 // =sub_3007038+1
	mov lr, pc
	bx r3
	pop {r0-r7}
	add r0, #0xc
	add r2, #1
	ldr r3, off_8043A3C // =0x1cc
	ldr r3, [r5,r3]
	cmp r2, r3
	blt loc_8043994
	ldrb r0, [r5,#4]
	cmp r0, #1
	beq loc_80439DC
	mov r0, #1
	strb r0, [r5,#4]
	b loc_8043A00
loc_80439DC:
	ldrb r0, [r5,#0x11]
	tst r0, r0
	beq loc_80439EA
	mov r0, #0
	strb r0, [r5,#2]
	mov r1, #0x3d
	strb r0, [r5,r1]
loc_80439EA:
	ldrh r0, [r5,#0x26]
	mov r1, #1
	tst r0, r1
	bne loc_8043A04
	mov r1, #8
	tst r0, r1
	beq loc_8043A00
	mov r1, #0x6c
	ldrh r0, [r5,r1]
	bl sound_play // () -> void
loc_8043A00:
	mov r0, #0
	pop {pc}
loc_8043A04:
	mov r1, #0x6e
	ldrh r0, [r5,r1]
	bl sound_play // () -> void
	mov r0, #FLAGS_3E_UNK_0010 | FLAGS_3E_UNK_0001
	bl chatbox_clearFlags_3e // (int mask) -> void
	mov r0, #7
	bl chatbox_clear_eFlags2009F38 // (int a1) ->
	ldrb r0, [r5,#0x13]
	bl chatbox_set_eFlags2009F38
	mov r0, #0
	strb r0, [r5,#4]
	strh r0, [r5,#0xc]
	mov r0, #4
	str r0, [r5,#0x78]
	mov r0, #0x20
	bl chatbox_set_eFlags2009F38
	add r4, #2
	mov r0, #0
	pop {pc}
off_8043A34: .word byte_803FCE4
off_8043A38: .word sub_3007038+1
off_8043A3C: .word 0x1CC
off_8043A40: .word 0x154
off_8043A44: .word word_8043A48
word_8043A48: .hword 0x40
	.hword 0x80
	.word 0x100020
off_8043A50: .word byte_8043A54
byte_8043A54: .byte 0x1, 0x2, 0x3, 0x5, 0x0, 0x0, 0x0, 0x0
	thumb_func_end chatbox_80438EC

	thumb_local_start
chatbox_8043A5C:
	push {lr}
	ldrb r0, [r4,#1]
	sub r0, #0x1b
	cmp r0, #0
	beq loc_8043A70
	cmp r0, #1
	beq loc_8043A9A
	cmp r0, #2
	beq loc_8043AB0
	b loc_8043ACC
loc_8043A70:
	push {r4,r5}
	mov r0, #0x73
	bl sound_play // () -> void
	ldrb r0, [r4,#2]
	cmp r0, #0xff
	bne loc_8043A82
	ldr r0, [r5,#0x54]
	sub r0, #0x90
loc_8043A82:
	ldrb r1, [r4,#4]
	cmp r1, #0xff
	bne loc_8043A8A
	ldr r1, [r5,#0x58]
loc_8043A8A:
	ldrb r2, [r4,#3]
	add r0, #0x90
	bl sub_803D108
	pop {r4,r5}
	add r4, #5
	mov r0, #1
	pop {pc}
loc_8043A9A:
	push {r4,r5}
	ldrb r0, [r4,#2]
	ldrb r1, [r4,#4]
	ldrb r2, [r4,#3]
	add r0, #0x90
	bl sub_803D128
	pop {r4,r5}
	add r4, #5
	mov r0, #1
	pop {pc}
loc_8043AB0:
	push {r4,r5}
	mov r0, #0x73
	bl sound_play // () -> void
	ldrb r0, [r4,#2]
	ldrb r1, [r4,#4]
	ldrb r2, [r4,#3]
	add r0, #0x90
	bl sub_803D118
	pop {r4,r5}
	add r4, #5
	mov r0, #1
	pop {pc}
loc_8043ACC:
	push {r4,r5}
	ldrb r0, [r4,#2]
	ldrb r1, [r4,#7]
	add r0, #0x90
	bl sub_803D138
	pop {r4,r5}
	ldrb r1, [r4,#3]
	mov r2, #0
	cmp r0, r1
	beq loc_8043AEA
	add r2, #1
	cmp r0, r1
	bgt loc_8043AEA
	add r2, #1
loc_8043AEA:
	add r2, #4
	ldrb r1, [r4,r2]
	cmp r1, #0xff
	beq loc_8043AFA
	bl chatbox_config_80408D0 // (int notUsed, u8 scriptID) -> void
	mov r0, #1
	pop {pc}
loc_8043AFA:
	add r4, #8
	mov r0, #1
	pop {pc}
jt_8043B00: .word sub_8033FC0+1
	.word 0x0
	.word sub_8003A64+1
	.word sub_8001154+1
	.word sub_8003914+1
	.word sub_814187C+1
	.word sub_8142134+1
	.word sub_8048F88+1
	.word sub_814227A+1
	.word sub_802D15E+1
	.word sub_802D158+1
	.word reqBBS_813E660+1
	.word loc_809E314+1
	.word sub_813FA24+1
	.word sub_809FE5E+1
	.word sub_80351B4+1
	.word npc_getMapSpriteScriptOffsets+1
	.word sub_8120DF0+1
	.word sub_813C3AC+1
	.word sub_803CEB8+1
	.word sub_80AA86E+1
byte_8043B54: .byte 0xE0, 0xA2, 0x0, 0x2, 0x20, 0x0, 0x0, 0x0, 0x40, 0xA3, 0x0, 0x2
	.byte 0x20, 0x0, 0x0, 0x0, 0x0, 0xA3, 0x0, 0x2, 0x20, 0x0, 0x0, 0x0
	.byte 0x60, 0xA3, 0x0, 0x2, 0x20, 0x0, 0x0, 0x0, 0x0, 0xAA, 0x2, 0x2
	.byte 0x20, 0x0, 0x0, 0x0, 0x20, 0xAA, 0x2, 0x2, 0x20, 0x0, 0x0, 0x0
	.byte 0x40, 0xAA, 0x2, 0x2, 0x20, 0x0, 0x0, 0x0, 0x60, 0xAA, 0x2, 0x2
	.byte 0x20, 0x0, 0x0, 0x0, 0x80, 0xAA, 0x2, 0x2, 0x20, 0x0, 0x0, 0x0
	.byte 0xA0, 0xAA, 0x2, 0x2, 0x20, 0x0, 0x0, 0x0, 0xC0, 0xAA, 0x2, 0x2
	.byte 0x20, 0x0, 0x0, 0x0, 0xE0, 0xAA, 0x2, 0x2, 0x20, 0x0, 0x0, 0x0
	.byte 0x0, 0xAE, 0x2, 0x2, 0x20, 0x0, 0x0, 0x0, 0x20, 0xAE, 0x2, 0x2
	.byte 0x20, 0x0, 0x0, 0x0, 0x40, 0xAE, 0x2, 0x2, 0x20, 0x0, 0x0, 0x0
	.byte 0x60, 0xAE, 0x2, 0x2, 0x20, 0x0, 0x0, 0x0, 0x80, 0xAE, 0x2, 0x2
	.byte 0x20, 0x0, 0x0, 0x0, 0xA0, 0xAE, 0x2, 0x2, 0x20, 0x0, 0x0, 0x0
	.byte 0xC0, 0xAE, 0x2, 0x2, 0x20, 0x0, 0x0, 0x0, 0xE0, 0xAE, 0x2, 0x2
	.byte 0x20, 0x0, 0x0, 0x0, 0x0, 0xAB, 0x2, 0x2, 0x20, 0x0, 0x0, 0x0
	.byte 0x0, 0xAF, 0x2, 0x2, 0x20, 0x0, 0x0, 0x0, 0x86, 0x11, 0x0, 0x2
	.byte 0x18, 0x0, 0x0, 0x0, 0x9E, 0x11, 0x0, 0x2, 0x18, 0x0, 0x0, 0x0
	.byte 0xD6, 0x7, 0x0, 0x2, 0x64, 0x0, 0x0, 0x0, 0x3A, 0x8, 0x0, 0x2
	.byte 0x64, 0x0, 0x0, 0x0, 0x60, 0xFD, 0x1, 0x2, 0x20, 0x0, 0x0, 0x0
	.byte 0x80, 0x9A, 0x0, 0x2, 0x4, 0x0, 0x0, 0x0, 0x82, 0x9A, 0x0, 0x2
	.byte 0x4, 0x0, 0x0, 0x0, 0x84, 0x9A, 0x0, 0x2, 0x4, 0x0, 0x0, 0x0
	.byte 0x86, 0x9A, 0x0, 0x2, 0x4, 0x0, 0x0, 0x0, 0x88, 0x9A, 0x0, 0x2
	.byte 0x4, 0x0, 0x0, 0x0, 0x8A, 0x9A, 0x0, 0x2, 0x4, 0x0, 0x0, 0x0
	.byte 0x8C, 0x9A, 0x0, 0x2, 0x4, 0x0, 0x0, 0x0
off_8043C64: .word unk_2011C54
	.word unk_2011C55
	.word unk_2011C56
	.word unk_2011C57
	.word unk_200A293
	.word 0x0
	.word 0x0
	.word sSubmenu+0x20 // sSubmenu.unk_20
off_8043C84: .word byte_2011A9D
	.word 0x0
off_8043C8C: .word unk_2009A80
	.word unk_2009A82
	.word unk_2009A84
	.word unk_2009A86
	.word unk_2009A88
	.word unk_2009A8A
byte_8043CA4: .byte 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8
	.byte 0x8, 0x8, 0x6, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8
	.byte 0x8, 0x8, 0x8, 0x8, 0x8, 0x7, 0x7, 0x7, 0x8, 0x6, 0x7, 0x7, 0x6, 0x6, 0x7, 0x6, 0x8
	.byte 0x7, 0x7, 0x7, 0x7, 0x7, 0x7, 0x7, 0x7, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8
	.byte 0x8, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0x8
	.byte 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8
	.byte 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8
	.byte 0x8, 0x8, 0x8, 0x8
byte_8043E84: .byte 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8
	.byte 0x8, 0x8, 0x6, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8
	.byte 0x8, 0x8, 0x8, 0x8, 0x8, 0x7, 0x7, 0x7, 0x8, 0x6, 0x7, 0x7, 0x6, 0x6, 0x7, 0x6, 0x8
	.byte 0x7, 0x7, 0x7, 0x7, 0x7, 0x7, 0x7, 0x7, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8
	.byte 0x8, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0x8
	.byte 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8
	.byte 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8
	.byte 0x8, 0x8, 0x8, 0x8
byte_8044064: .byte 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8
	.byte 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8
	.byte 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8
	.byte 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8
	.byte 0x8, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0x8
	.byte 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8
	.byte 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB
	.byte 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8
	.byte 0x8, 0x8, 0x8, 0x8
byte_8044244: .byte 0x3D
byte_8044245: .byte 0x3, 0x5C, 0x9, 0x5D, 0xC, 0x5E, 0xF, 0x5F, 0x12, 0x3F
	.byte 0x1, 0x40, 0x2, 0x57, 0x3, 0x44, 0x1, 0x46, 0x1, 0x29
	.byte 0x1, 0x31, 0x1, 0xFF, 0xFF, 0x0, 0x0
byte_8044260: .byte 0xFF
byte_8044261: .byte 0xFF, 0x0, 0x0
byte_8044264: .byte 0x2D, 0x2D, 0x2D, 0x0, 0x41, 0x53, 0x53, 0x0, 0x43, 0x4F
	.byte 0x4B, 0x0, 0x46, 0x55, 0x4B, 0x0, 0x46, 0x56, 0x4B, 0x0
	.byte 0x47, 0x41, 0x59, 0x0, 0x44, 0x52, 0x45, 0x0, 0x4A, 0x41
	.byte 0x50, 0x0, 0x4A, 0x49, 0x5A, 0x0, 0x4B, 0x4F, 0x43, 0x0
	.byte 0x4B, 0x55, 0x4D, 0x0, 0x4C, 0x53, 0x44, 0x0, 0x50, 0x4F
	.byte 0x54, 0x0, 0x53, 0x45, 0x58, 0x0, 0x54, 0x49, 0x54, 0x0
	.byte 0x57, 0x4F, 0x50, 0x0, 0x36, 0x36, 0x36, 0x0, 0x4B, 0x4B
	.byte 0x4B, 0x0, 0x48, 0x49, 0x56, 0x0, 0x41, 0x55, 0x4D, 0x0
	.byte 0x53, 0x49, 0x54, 0x0, 0x41, 0x53, 0x5A, 0x0, 0x43, 0x55
	.byte 0x4D, 0x0, 0x44, 0x49, 0x4B, 0x0, 0x46, 0x41, 0x47, 0x0
	.byte 0x4B, 0x4F, 0x4B, 0x0, 0x4B, 0x56, 0x4D, 0x0, 0x41, 0x56
	.byte 0x4D, 0x0, 0x43, 0x56, 0x4D, 0x0, 0x41, 0x35, 0x35, 0x0
	.byte 0x43, 0x30, 0x4B, 0x0, 0x4A, 0x31, 0x5A, 0x0, 0x4B, 0x30
	.byte 0x43, 0x0, 0x50, 0x30, 0x54, 0x0, 0x35, 0x45, 0x58, 0x0
	.byte 0x54, 0x31, 0x54, 0x0, 0x4C, 0x35, 0x44, 0x0, 0x57, 0x30
	.byte 0x50, 0x0, 0x44, 0x31, 0x4B, 0x0, 0x4B, 0x30, 0x4B, 0x0
	.byte 0x41, 0x35, 0x5A, 0x0, 0x53, 0x31, 0x54, 0x0, 0x48, 0x31
	.byte 0x56, 0x0, 0x0, 0x0, 0x0, 0x0
off_8044314: .word unk_200BEA0
	.byte 0x20, 0x20, 0x20, 0x20, 0xA0, 0xC1, 0x0, 0x2, 0x20, 0x20
	.byte 0x20, 0x20, 0xB0, 0xBE, 0x0, 0x2, 0x20, 0x20, 0x20, 0x20
	.byte 0xB0, 0xC1, 0x0, 0x2, 0x20, 0x20, 0x20, 0x20, 0xC0, 0xBE
	.byte 0x0, 0x2, 0x20, 0x20, 0x20, 0x20, 0xC0, 0xC1, 0x0, 0x2
	.byte 0x20, 0x20, 0x20, 0x20, 0xD0, 0xBE, 0x0, 0x2, 0x20, 0x20
	.byte 0x20, 0x20, 0xD0, 0xC1, 0x0, 0x2, 0x20, 0x20, 0x20, 0x20
	.byte 0xE0, 0xBE, 0x0, 0x2, 0x20, 0x20, 0x20, 0x20, 0xE0, 0xC1
	.byte 0x0, 0x2, 0x20, 0x20, 0x20, 0x20, 0xF0, 0xBE, 0x0, 0x2
	.byte 0x20, 0x20, 0x20, 0x20, 0xF0, 0xC1, 0x0, 0x2, 0x20, 0x20
	.byte 0x20, 0x20, 0x0, 0x0, 0x0, 0x0
off_8044378: .word unk_200C1A0
	.word 0xA0202020
	.word unk_200C1B0
	.byte 0x20, 0x20, 0x20, 0xA0, 0xC0, 0xC1, 0x0, 0x2, 0x20, 0x20
	.byte 0x20, 0xA0, 0xD0, 0xC1, 0x0, 0x2, 0x20, 0x20, 0x20, 0xA0
	.byte 0xE0, 0xC1, 0x0, 0x2, 0x20, 0x20, 0x20, 0xA0, 0xF0, 0xC1
	.byte 0x0, 0x2, 0x20, 0x20, 0x20, 0x20, 0xA0, 0xC4, 0x0, 0x2
	.byte 0x20, 0x20, 0x20, 0x20
	.word byte_200C7A0
	.word 0x20202020
	.word unk_200C4B0
	.byte 0x20, 0x20, 0x20, 0x20, 0xB0, 0xC7, 0x0, 0x2, 0x20, 0x20
	.byte 0x20, 0x20, 0xC0, 0xC4, 0x0, 0x2, 0x20, 0x20, 0x20, 0x20
	.word byte_200C7C0
	.word 0x20202020
	.word unk_200C4D0
	.byte 0x20, 0x20, 0x20, 0x20, 0xD0, 0xC7, 0x0, 0x2, 0x20, 0x20
	.byte 0x20, 0x20, 0xE0, 0xC4, 0x0, 0x2, 0x20, 0x20, 0x20, 0x20
	.word byte_200C7E0
	.word 0x20202020
	.word unk_200C4F0
	.word 0x20202020
	.word byte_200C7F0
	.word 0x20202020
	.word 0x0
off_804440C: .word byte_200C7A0
	.byte 0x20, 0x20, 0x20, 0xA0, 0xB0, 0xC7, 0x0, 0x2, 0x20, 0x20
	.byte 0x20, 0xA0, 0xC0, 0xC7, 0x0, 0x2, 0x20, 0x20, 0x20, 0xA0
	.byte 0xD0, 0xC7, 0x0, 0x2, 0x20, 0x20, 0x20, 0xA0, 0xE0, 0xC7
	.byte 0x0, 0x2, 0x20, 0x20, 0x20, 0xA0, 0xF0, 0xC7, 0x0, 0x2
	.byte 0x20, 0x20, 0x20, 0x20, 0xA0, 0xCA, 0x0, 0x2, 0x20, 0x20
	.byte 0x20, 0x20, 0xB0, 0xCA, 0x0, 0x2, 0x20, 0x20, 0x20, 0x20
	.byte 0xC0, 0xCA, 0x0, 0x2, 0x20, 0x20, 0x20, 0x20, 0xD0, 0xCA
	.byte 0x0, 0x2, 0x20, 0x20, 0x20, 0x20, 0xE0, 0xCA, 0x0, 0x2
	.byte 0x20, 0x20, 0x20, 0x20, 0xF0, 0xCA, 0x0, 0x2, 0x20, 0x20
	.byte 0x20, 0x20, 0x0, 0x0, 0x0, 0x0
off_8044470: .word off_80445D8
	.word off_8044620
	.word off_80446BC
	.word off_8044800
	.word off_804489C
	.word off_8044938
	.word off_80449B8
off_804448C: .word off_8044608
	.word off_8044698
	.word off_80447C4
	.word off_8044878
	.word off_8044914
	.word off_8044998
	.word off_8044A48
off_80444A8: .word off_8044610
	.word off_80446AC
	.word off_80447F0
	.word off_804488C
	.word off_8044928
	.word off_80449A8
	.word off_8044A60
off_80444C4: .word off_8044A70
	.word off_8044AB8
	.word off_8044B1C
	.word off_8044B80
	.word 0x0
	.word off_8044BE4
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.word off_8044C80
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.word off_8044D2C
	.word off_8044EFC
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.word off_80450CC
	.word off_8045130
	.word off_8045194
	.word off_80451DC
	.word off_8045224
	.word off_8045288
	.word off_8045308
off_8044520: .word off_8044AA0
	.word off_8044B00
	.word off_8044B64
	.word off_8044BC8
	.word 0x0
	.word off_8044C5C
	.word 0
	.byte 0, 0, 0, 0
	.word off_8044D00
	.word 0, 0
	.byte 0, 0, 0, 0
	.word off_8044EAC
	.word off_804507C
	.word 0
	.byte 0, 0, 0, 0
	.word off_8045114
	.word off_8045178
	.word off_80451C4
	.word off_804520C
	.word off_804526C
	.word off_80452E8
	.word off_8045350
off_804457C: .word off_8044AA8
	.word off_8044B0C
	.word off_8044B70
	.word off_8044BD4
	.word 0x0
	.word off_8044C70
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.word off_8044D1C
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.word off_8044EEC
	.word off_80450BC
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.word off_8045120
	.word off_8045184
	.word off_80451CC
	.word off_8045214
	.word off_8045278
	.word off_80452F8
	.word off_804535C
off_80445D8: .word off_80445E0
	.word off_80445F4
off_80445E0: .word dword_8762F98
	.word dword_8762FE4
	.word dword_8762FF0
	.word dword_876381C
	.word dword_8763B24
off_80445F4: .word dword_87643A8
	.word dword_87643B4
	.word dword_87643C0
	.word off_87643CC
	.word off_87643D8
off_8044608: .word dword_87558D8
	.word off_8755C0C
off_8044610: .word dword_873F008
	.word dword_873F028
	.word dword_873F048
	.word dword_873F430
off_8044620: .word off_8044634
	.word off_8044648
	.word off_804465C
	.word off_8044670
	.word off_8044684
off_8044634: .word dword_87643E4
	.word dword_8764FAC
	.word byte_87658F0
	.word dword_87666B4
	.word dword_8766BFC
off_8044648: .word dword_87680AC
	.word dword_8768558
	.word dword_8768D28
	.word dword_8768EEC
	.word dword_8769148
off_804465C: .word dword_87691D8
	.word dword_87691E4
	.word dword_8769264
	.word dword_8769270
	.word dword_876927C
off_8044670: .word dword_87692AC
	.word off_87693BC
	.word off_87693C8
	.word off_87693D4
	.word dword_87693E0
off_8044684: .word off_87694B4
	.word dword_87694C0
	.word dword_87698B0
	.word dword_8769BA8
	.word dword_8769DE8
off_8044698: .word dword_8755C18
	.word dword_8756124
	.word byte_87565E8
	.word dword_8756AA4
	.word dword_8756C9C
off_80446AC: .word dword_873F908
	.word dword_873FD64
	.word dword_874041C
	.word dword_8740974
off_80446BC: .word off_80446E8
	.word off_80446FC
	.word off_8044710
	.word off_8044724
	.word off_8044738
	.word off_804474C
	.word off_8044760
	.word off_8044774
	.word off_8044788
	.word off_804479C
	.word off_80447B0
off_80446E8: .word dword_876A5B4
	.word dword_876B0DC
	.word dword_876B29C
	.word dword_876B5A4
	.word dword_876B7C4
off_80446FC: .word dword_876B978
	.word dword_876BD54
	.word dword_876BF64
	.word dword_876C0DC
	.word dword_876C2A8
off_8044710: .word dword_876C880
	.word dword_876CA38
	.word dword_876CBE8
	.word dword_876CD18
	.word dword_876CE60
off_8044724: .word dword_876D154
	.word dword_876D378
	.word dword_876D48C
	.word dword_876D580
	.word dword_876D618
off_8044738: .word dword_876D7E0
	.word dword_876DB88
	.word dword_876DE70
	.word dword_876E078
	.word dword_876E144
off_804474C: .word dword_876E538
	.word dword_876E698
	.word dword_876E73C
	.word dword_876E874
	.word dword_876E900
off_8044760: .word dword_876EE64
	.word dword_876F2EC
	.word dword_876F7E4
	.word dword_876FD30
	.word dword_876FE2C
off_8044774: .word dword_8770084
	.word dword_87707EC
	.word dword_87709CC
	.word dword_8770D20
	.word dword_8770EC0
off_8044788: .word dword_877125C
	.word dword_877125C
	.word dword_8771268
	.word dword_877129C
	.word off_87712BC
off_804479C: .word dword_87712C8
	.word dword_87712C8
	.word dword_8771844
	.word dword_8771850
	.word dword_877185C
off_80447B0: .word dword_8771FAC
	.word dword_8771FAC
	.word dword_8771FB8
	.word dword_8771FC4
	.word dword_8771FD0
off_80447C4: .word dword_875752C
	.word dword_8757B7C
	.word dword_8758018
	.word dword_8758410
	.word dword_8758834
	.word dword_8758AF0
	.word dword_8758D98
	.word dword_875906C
	.word dword_8759480
	.word dword_8759870
	.word dword_8759C10
off_80447F0: .word dword_8740E90
	.word dword_87414AC
	.word dword_8741D04
	.word dword_8742318
off_8044800: .word off_8044814
	.word off_8044828
	.word off_804483C
	.word off_8044850
	.word off_8044864
off_8044814: .word byte_8772974
	.word byte_8773068
	.word byte_8773730
	.word byte_877416C
	.word byte_8774530
off_8044828: .word byte_8774F48
	.word byte_8775208
	.word byte_877567C
	.word byte_8775B60
	.word byte_8775E00
off_804483C: .word byte_8776A20
	.word byte_8776C50
	.word byte_8777078
	.word byte_8777428
	.word byte_877767C
off_8044850: .word byte_8778400
	.word dword_87786EC
	.word dword_8778810
	.word dword_87789F4
	.word dword_8778B40
off_8044864: .word off_87792A8
	.word off_87792B4
	.word off_87792C0
	.word dword_87792CC
	.word dword_87792DC
off_8044878: .word dword_8759EF8
	.word dword_875A2C4
	.word dword_875A918
	.word dword_875B064
	.word byte_875B30C
off_804488C: .word dword_87428D4
	.word dword_8742D64
	.word dword_87433BC
	.word dword_87439D8
off_804489C: .word off_80448B0
	.word off_80448C4
	.word off_80448D8
	.word off_80448EC
	.word off_8044900
off_80448B0: .word dword_8779B1C
	.word dword_8779B1C
	.word dword_8779F28
	.word dword_877A4A8
	.word dword_877A7FC
off_80448C4: .word dword_877C0FC
	.word dword_877C0FC
	.word dword_877C534
	.word dword_877C7A4
	.word dword_877C94C
off_80448D8: .word dword_877CD94
	.word dword_877CD94
	.word dword_877D7D4
	.word byte_877D8CC
	.word dword_877DAB4
off_80448EC: .word dword_877DF6C
	.word dword_877DF6C
	.word dword_877E03C
	.word dword_877E278
	.word dword_877E3DC
off_8044900: .word off_877E554
	.word off_877E554
	.word off_877E560
	.word dword_877E56C
	.word dword_877E620
off_8044914: .word byte_875B4B0
	.word byte_875B934
	.word byte_875BCB4
	.word byte_875BE5C
	.word byte_875BF80
off_8044928: .word byte_8743F6C
	.word byte_8743F6C
	.word byte_87444C8
	.word byte_8744B38
off_8044938: .word off_8044948
	.word off_804495C
	.word off_8044970
	.word off_8044984
off_8044948: .word byte_877EDD8
	.word byte_877EDD8
	.word byte_877EDD8
	.word byte_877F460
	.word dword_877F594
off_804495C: .word dword_8780104
	.word dword_8780104
	.word dword_8780104
	.word dword_8780724
	.word dword_87808D0
off_8044970: .word dword_8781048
	.word dword_8781048
	.word dword_8781048
	.word dword_87813CC
	.word dword_8781564
off_8044984: .word dword_8781784
	.word dword_8781784
	.word dword_8781784
	.word dword_8781B18
	.word dword_8781CB4
off_8044998: .word dword_875BFD8
	.word byte_875C22C
	.word dword_875C4B8
	.word dword_875C83C
off_80449A8: .word dword_8745100
	.word dword_8745100
	.word dword_8745100
	.word dword_874584C
off_80449B8: .word off_80449D0
	.word off_80449E4
	.word off_80449F8
	.word off_8044A0C
	.word off_8044A20
	.word off_8044A34
off_80449D0: .word dword_8781ED4
	.word dword_8781ED4
	.word dword_8781ED4
	.word dword_8781ED4
	.word dword_8781FE4
off_80449E4: .word dword_8782048
	.word dword_8782048
	.word dword_8782048
	.word dword_8782048
	.word dword_878205C
off_80449F8: .word dword_87821B4
	.word dword_87821B4
	.word dword_87821B4
	.word dword_87821B4
	.word off_87822E8
off_8044A0C: .word dword_87822F4
	.word dword_87822F4
	.word dword_87822F4
	.word dword_87822F4
	.word off_8782414
off_8044A20: .word dword_8782420
	.word dword_8782420
	.word dword_8782420
	.word dword_8782420
	.word dword_8782564
off_8044A34: .word dword_87825B4
	.word dword_87825B4
	.word dword_87825B4
	.word dword_87825B4
	.word off_87825C0
off_8044A48: .word dword_875CB68
	.word dword_875CE10
	.word dword_875CFC4
	.word dword_875D1FC
	.word dword_875D5E0
	.word off_875D774
off_8044A60: .word dword_8745DEC
	.word dword_8745DEC
	.word dword_8745DEC
	.word dword_8745DEC
off_8044A70: .word off_8044A78
	.word off_8044A8C
off_8044A78: .word dword_8797310
	.word dword_879748C
	.word dword_8797498
	.word dword_87974A4
	.word dword_87974B0
off_8044A8C: .word dword_87979CC
	.word dword_87979F0
	.word dword_87979FC
	.word dword_8797A08
	.word off_8797A14
off_8044AA0: .word dword_875D780
	.word dword_875D800
off_8044AA8: .word dword_87461A0
	.word byte_87462D0
	.word dword_87463F4
	.word dword_87464AC
off_8044AB8: .word off_8044AC4
	.word off_8044AD8
	.word off_8044AEC
off_8044AC4: .word dword_8797A20
	.word off_8797E70
	.word dword_8797E7C
	.word dword_8797E88
	.word dword_8797E94
off_8044AD8: .word dword_87982AC
	.word off_87982B8
	.word dword_87982C4
	.word dword_87982D0
	.word dword_87982DC
off_8044AEC: .word off_8798474
	.word off_8798480
	.word dword_879848C
	.word dword_8798498
	.word dword_87984A4
off_8044B00: .word dword_875D974
	.word dword_875D9C0
	.word dword_875DA0C
off_8044B0C: .word dword_87466F8
	.word dword_87469C4
	.word dword_8746A34
	.word dword_8746AE8
off_8044B1C: .word off_8044B28
	.word off_8044B3C
	.word off_8044B50
off_8044B28: .word dword_8798660
	.word dword_8798660
	.word dword_879896C
	.word dword_8798978
	.word dword_8798984
off_8044B3C: .word dword_8798990
	.word dword_8798990
	.word dword_879899C
	.word dword_87989A8
	.word dword_87989B4
off_8044B50: .word dword_87989C0
	.word dword_87989C0
	.word dword_87989CC
	.word dword_87989D8
	.word dword_87989E4
off_8044B64: .word dword_875DA58
	.word dword_875DAB8
	.word dword_875DB18
off_8044B70: .word dword_8746D34
	.word dword_8746D34
	.word dword_8746E38
	.word dword_8746EF0
off_8044B80: .word off_8044B8C
	.word off_8044BA0
	.word off_8044BB4
off_8044B8C: .word dword_8798B28
	.word dword_8798B28
	.word dword_8798B28
	.word dword_8798ED8
	.word dword_8798EE4
off_8044BA0: .word off_87994A4
	.word off_87994A4
	.word off_87994A4
	.word dword_87994B0
	.word dword_87994BC
off_8044BB4: .word off_879951C
	.word off_879951C
	.word off_879951C
	.word dword_8799528
	.word dword_8799534
off_8044BC8: .word dword_875DBD8
	.word dword_875DC10
	.word dword_875DC48
off_8044BD4: .word dword_874713C
	.word dword_874713C
	.word dword_874713C
	.word dword_8747228
off_8044BE4: .word off_8044BF8
	.word off_8044C0C
	.word off_8044C20
	.word off_8044C34
	.word off_8044C48
off_8044BF8: .word dword_8799708
	.word dword_8799708
	.word dword_8799708
	.word dword_8799708
	.word dword_8799AD4
off_8044C0C: .word dword_8799AE0
	.word dword_8799AE0
	.word dword_8799AE0
	.word dword_8799AE0
	.word dword_8799E5C
off_8044C20: .word dword_8799E68
	.word dword_8799E68
	.word dword_8799E68
	.word dword_8799E68
	.word dword_879A228
off_8044C34: .word dword_879A28C
	.word dword_879A28C
	.word dword_879A28C
	.word dword_879A28C
	.word dword_879A63C
off_8044C48: .word dword_879A648
	.word dword_879A648
	.word dword_879A648
	.word dword_879A648
	.word dword_879A654
off_8044C5C: .word dword_875DC80
	.word dword_875DD4C
	.word dword_875DDF8
	.word dword_875DE80
	.word off_875DF20
off_8044C70: .word dword_8747474
	.word dword_8747474
	.word dword_8747474
	.word dword_8747474
off_8044C80: .word off_8044C9C
	.word off_8044CB0
	.word 0x0
	.word off_8044CC4
	.word 0x0
	.word off_8044CD8
	.word off_8044CEC
off_8044C9C: .word dword_879A660
	.word dword_879A66C
	.word dword_879A6DC
	.word dword_879A6E8
	.word dword_879A704
off_8044CB0: .word dword_879A764
	.word dword_879A770
	.word dword_879A77C
	.word dword_879AAB0
	.word dword_879AACC
off_8044CC4: .word dword_879AF5C
	.word dword_879AF68
	.word dword_879B28C
	.word dword_879B298
	.word dword_879B2B4
off_8044CD8: .word dword_879BF6C
	.word dword_879BF6C
	.word dword_879C700
	.word dword_879C70C
	.word dword_879C728
off_8044CEC: .word dword_879D130
	.word dword_879D130
	.word dword_879D130
	.word dword_879D13C
	.word dword_879D158
off_8044D00: .word dword_875DF2C
	.word dword_875DF38
	.word 0x0
	.word dword_875DF44
	.word 0x0
	.word dword_875DF50
	.word dword_875DF78
off_8044D1C: .word byte_87477F4
	.word dword_8747D30
	.word dword_8748650
	.word dword_8748F44
off_8044D2C: .word off_8044D6C
	.word off_8044D80
	.word off_8044D94
	.word off_8044DA8
	.word off_8044DBC
	.word off_8044DD0
	.word off_8044DE4
	.word off_8044DF8
	.word off_8044E0C
	.word off_8044E20
	.word off_8044E34
	.word off_8044E48
	.word off_8044E5C
	.word off_8044E70
	.word off_8044E84
	.word off_8044E98
off_8044D6C: .word dword_879DA44
	.word dword_879DA50
	.word dword_879DA5C
	.word dword_879DA68
	.word dword_879DA74
off_8044D80: .word dword_879E3D0
	.word dword_879E3D0
	.word dword_879E3DC
	.word dword_879E3E8
	.word dword_879E3F4
off_8044D94: .word dword_879E4C4
	.word dword_879E574
	.word dword_879E580
	.word dword_879E58C
	.word dword_879E598
off_8044DA8: .word off_879E62C
	.word dword_879E638
	.word dword_879E644
	.word dword_879E650
	.word dword_879E65C
off_8044DBC: .word off_879EB78
	.word off_879EB84
	.word dword_879EB90
	.word dword_879EB9C
	.word dword_879EBA8
off_8044DD0: .word off_879F194
	.word off_879F194
	.word dword_879F1A0
	.word dword_879F1AC
	.word dword_879F1B8
off_8044DE4: .word off_879F5CC
	.word off_879F5D8
	.word dword_879F5E4
	.word dword_879F5F0
	.word dword_879F5FC
off_8044DF8: .word dword_879F6A0
	.word dword_879F6A0
	.word dword_879F6A0
	.word dword_879F734
	.word dword_879F740
off_8044E0C: .word dword_879FB18
	.word dword_879FB24
	.word dword_879FD9C
	.word dword_879FDA8
	.word dword_879FDB4
off_8044E20: .word dword_87A00D8
	.word dword_87A00D8
	.word dword_87A0434
	.word dword_87A0440
	.word dword_87A044C
off_8044E34: .word dword_87A04C0
	.word dword_87A04C0
	.word dword_87A04CC
	.word dword_87A04D8
	.word dword_87A04E4
off_8044E48: .word dword_87A05E0
	.word dword_87A05E0
	.word dword_87A05E0
	.word dword_87A0698
	.word dword_87A06A4
off_8044E5C: .word dword_87A0700
	.word dword_87A0700
	.word dword_87A0700
	.word dword_87A07D0
	.word dword_87A07DC
off_8044E70: .word dword_87A0AA8
	.word dword_87A0AA8
	.word dword_87A0AA8
	.word dword_87A0B14
	.word dword_87A0B20
off_8044E84: .word dword_87A0B88
	.word dword_87A0B88
	.word dword_87A0B88
	.word dword_87A0C18
	.word dword_87A0C24
off_8044E98: .word dword_87A0EF4
	.word dword_87A0EF4
	.word dword_87A0EF4
	.word dword_87A0F00
	.word dword_87A0F0C
off_8044EAC: .word dword_875DFA4
	.word dword_875DFB0
	.word dword_875DFBC
	.word dword_875DFC8
	.word dword_875DFD4
	.word dword_875DFE0
	.word dword_875DFEC
	.word dword_875DFF8
	.word dword_875E0F4
	.word dword_875E100
	.word off_875E36C
	.word dword_875E378
	.word dword_875E414
	.word dword_875E4AC
	.word dword_875E52C
	.word dword_875E5C4
off_8044EEC: .word dword_8749514
	.word dword_8749C38
	.word dword_874A638
	.word dword_874B154
off_8044EFC: .word off_8044F3C
	.word off_8044F50
	.word off_8044F64
	.word off_8044F78
	.word off_8044F8C
	.word off_8044FA0
	.word off_8044FB4
	.word off_8044FC8
	.word off_8044FDC
	.word off_8044FF0
	.word off_8045004
	.word off_8045018
	.word off_804502C
	.word off_8045040
	.word off_8045054
	.word off_8045068
off_8044F3C: .word dword_87A0FB8
	.word dword_87A0FB8
	.word dword_87A0FB8
	.word dword_87A0FC4
	.word dword_87A0FD0
off_8044F50: .word dword_87A1078
	.word dword_87A1078
	.word dword_87A1078
	.word dword_87A1084
	.word dword_87A1090
off_8044F64: .word dword_87A1120
	.word dword_87A1120
	.word dword_87A112C
	.word dword_87A1138
	.word dword_87A1144
off_8044F78: .word dword_87A1570
	.word dword_87A157C
	.word dword_87A1588
	.word dword_87A1594
	.word dword_87A15A0
off_8044F8C: .word dword_87A1CC0
	.word dword_87A1CC0
	.word dword_87A1CCC
	.word dword_87A1CD8
	.word dword_87A1CE4
off_8044FA0: .word dword_87A1EF4
	.word dword_87A1EF4
	.word dword_87A1F00
	.word dword_87A1F0C
	.word dword_87A1F18
off_8044FB4: .word dword_87A243C
	.word dword_87A243C
	.word dword_87A2448
	.word dword_87A2454
	.word dword_87A2460
off_8044FC8: .word dword_87A29B4
	.word dword_87A29B4
	.word dword_87A29C0
	.word dword_87A29CC
	.word dword_87A29D8
off_8044FDC: .word dword_87A2B20
	.word dword_87A2B2C
	.word dword_87A2B38
	.word dword_87A2B44
	.word dword_87A2B50
off_8044FF0: .word dword_87A2BEC
	.word dword_87A2BEC
	.word dword_87A2BEC
	.word dword_87A2BF8
	.word dword_87A2C04
off_8045004: .word off_87A3168
	.word off_87A3168
	.word off_87A3168
	.word off_87A3174
	.word dword_87A3180
off_8045018: .word dword_87A3624
	.word dword_87A3624
	.word dword_87A3624
	.word dword_87A3630
	.word dword_87A363C
off_804502C: .word dword_87A36E8
	.word dword_87A36E8
	.word dword_87A36E8
	.word dword_87A36E8
	.word dword_87A36F4
off_8045040: .word dword_87A377C
	.word dword_87A3788
	.word dword_87A3794
	.word dword_87A37A0
	.word dword_87A37AC
off_8045054: .word dword_87A39FC
	.word dword_87A39FC
	.word dword_87A39FC
	.word dword_87A3A08
	.word dword_87A3A14
off_8045068: .word dword_87A3AFC
	.word dword_87A3AFC
	.word dword_87A3AFC
	.word dword_87A3AFC
	.word dword_87A3B08
off_804507C: .word dword_875E5D0
	.word dword_875E5DC
	.word dword_875E5E8
	.word dword_875E5F4
	.word dword_875E600
	.word dword_875E60C
	.word dword_875E618
	.word dword_875E624
	.word dword_875E630
	.word dword_875E63C
	.word dword_875E648
	.word dword_875E654
	.word dword_875E660
	.word dword_875E66C
	.word dword_875E678
	.word dword_875E684
off_80450BC: .word dword_874B878
	.word dword_874BC34
	.word dword_874C5D0
	.word dword_874D038
off_80450CC: .word off_80450D8
	.word off_80450EC
	.word off_8045100
off_80450D8: .word dword_87825CC
	.word dword_8782FEC
	.word dword_8783ED0
	.word dword_878460C
	.word dword_8784908
off_80450EC: .word dword_87859C0
	.word dword_8785FF4
	.word dword_8786694
	.word dword_8786C04
	.word dword_8786EA0
off_8045100: .word dword_87876E4
	.word dword_8787C6C
	.word dword_8788390
	.word dword_8788F78
	.word dword_87892BC
off_8045114: .word dword_875E690
	.word dword_875E8DC
	.word dword_875EA10
off_8045120: .word dword_874D74C
	.word dword_874DCF0
	.word dword_874E6E0
	.word dword_874EFE0
off_8045130: .word off_804513C
	.word off_8045150
	.word off_8045164
off_804513C: .word dword_8789780
	.word dword_8789A10
	.word dword_878A004
	.word dword_878A4E0
	.word dword_878A898
off_8045150: .word byte_878B46C
	.word byte_878B690
	.word byte_878BC64
	.word byte_878C214
	.word byte_878C5C8
off_8045164: .word dword_878CE18
	.word dword_878D038
	.word dword_878D544
	.word dword_878DAD4
	.word dword_878DE08
off_8045178: .word dword_875F038
	.word dword_875F424
	.word dword_875F838
off_8045184: .word dword_874F5C4
	.word dword_874F980
	.word dword_87502B4
	.word dword_8750B80
off_8045194: .word off_804519C
	.word off_80451B0
off_804519C: .word dword_878E728
	.word dword_878E728
	.word dword_878EA40
	.word dword_878F110
	.word dword_878F364
off_80451B0: .word dword_878FA4C
	.word dword_878FA4C
	.word dword_878FFC8
	.word dword_8790508
	.word dword_879073C
off_80451C4: .word dword_875FAB8
	.word dword_875FF70
off_80451CC: .word dword_8751150
	.word dword_8751150
	.word dword_87517E8
	.word dword_8752174
off_80451DC: .word off_80451E4
	.word off_80451F8
off_80451E4: .word dword_87913C8
	.word dword_87913C8
	.word dword_87913C8
	.word dword_8791604
	.word dword_87917D4
off_80451F8: .word dword_8791878
	.word dword_8791878
	.word dword_8791878
	.word dword_8791A0C
	.word dword_8791A28
off_804520C: .word dword_87601FC
	.word dword_87605E0
off_8045214: .word dword_8752818
	.word dword_8752818
	.word dword_8752818
	.word dword_8752FBC
off_8045224: .word off_8045230
	.word off_8045244
	.word off_8045258
off_8045230: .word dword_8791AA8
	.word dword_8791AA8
	.word dword_8791AA8
	.word dword_87921F4
	.word dword_8792478
off_8045244: .word dword_8793DCC
	.word dword_8793DCC
	.word dword_8793DCC
	.word dword_8794604
	.word dword_87948B8
off_8045258: .word dword_8794EC0
	.word dword_8794EC0
	.word dword_8794EC0
	.word dword_8795234
	.word dword_87956C4
off_804526C: .word dword_8760910
	.word dword_8760D38
	.word dword_8761234
off_8045278: .word dword_875358C
	.word dword_875358C
	.word dword_875358C
	.word dword_8753F78
off_8045288: .word off_8045298
	.word off_80452AC
	.word off_80452C0
	.word off_80452D4
off_8045298: .word dword_8795A38
	.word dword_8795A38
	.word dword_8795A44
	.word dword_8795D58
	.word byte_8795E14
off_80452AC: .word dword_8796494
	.word dword_8796494
	.word dword_87964A0
	.word dword_87964AC
	.word dword_87964C8
off_80452C0: .word dword_8796940
	.word dword_8796940
	.word dword_879694C
	.word dword_87969DC
	.word dword_8796AE4
off_80452D4: .word dword_87A3B84
	.word dword_87A3B84
	.word dword_87A3B84
	.word dword_87A3B84
	.word dword_87A3B84
off_80452E8: .word dword_8761698
	.word dword_87618C0
	.word dword_876210C
	.word dword_87A3B84
off_80452F8: .word dword_8754620
	.word dword_8754620
	.word dword_8754674
	.word dword_87550BC
off_8045308: .word off_8045314
	.word off_8045328
	.word off_804533C
off_8045314: .word dword_87A3B84
	.word dword_87A3B84
	.word dword_87A3B84
	.word dword_87A3B84
	.word dword_87A3B84
off_8045328: .word dword_8797208
	.word dword_8797208
	.word dword_8797208
	.word dword_8797214
	.word dword_8797220
off_804533C: .word dword_87A3B84
	.word dword_87A3B84
	.word dword_87A3B84
	.word dword_87A3B84
	.word dword_87A3B84
off_8045350: .word dword_87A3B84
	.word dword_8762434
	.word dword_87A3B84
off_804535C: .word dword_87557A8
	.word dword_87557A8
	.word dword_87557A8
	.word dword_8755834
	.byte 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0
	.byte 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2
	.byte 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0
	.byte 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2
	.byte 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0
	.byte 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2
	.byte 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0
	.byte 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2
	.byte 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0
	.byte 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2
	.byte 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0
	.byte 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2
	.byte 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0
	.byte 0xF2, 0xC0, 0xF2, 0xB8, 0xF2, 0xB9, 0xF2, 0xB9, 0xF2
	.byte 0xB9, 0xF2, 0xB9, 0xF2, 0xB9, 0xF2, 0xBA, 0xF2, 0xBB
	.byte 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2
	.byte 0xBC, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBC
	.byte 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2
	.byte 0xBC, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBC
	.byte 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBD, 0xF2
	.byte 0xBE, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBE, 0xF6, 0xBE, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBE, 0xF6, 0xBD, 0xFE, 0xBC, 0xFA, 0xBC, 0xFA
	.byte 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC
	.byte 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA
	.byte 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC
	.byte 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA
	.byte 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC
	.byte 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBD, 0xFA
	.byte 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0
	.byte 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2
	.byte 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0
	.byte 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2
	.byte 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0
	.byte 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2
	.byte 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0
	.byte 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2
	.byte 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0
	.byte 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2
	.byte 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0
	.byte 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2
	.byte 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0
	.byte 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2
	.byte 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0
	.byte 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2
	.byte 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0
	.byte 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2
	.byte 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0
	.byte 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2
	.byte 0xB8, 0xF2, 0xB9, 0xF2, 0xB9, 0xF2, 0xB9, 0xF2, 0xB9
	.byte 0xF2, 0xB9, 0xF2, 0xBA, 0xF2, 0xBB, 0xF2, 0xBC, 0xF2
	.byte 0xBC, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBC
	.byte 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2
	.byte 0xBC, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBC
	.byte 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2
	.byte 0xBC, 0xF2, 0xBC, 0xF2, 0xBD, 0xF2, 0xBE, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBE, 0xF6, 0xBE, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBE, 0xF6
	.byte 0xBE, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBE, 0xF6, 0xBE, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBE, 0xF6, 0xBD, 0xFE, 0xBC, 0xFA, 0xBC, 0xFA
	.byte 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC
	.byte 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA
	.byte 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC
	.byte 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA
	.byte 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC
	.byte 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBD, 0xFA
	.byte 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0
	.byte 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2
	.byte 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0
	.byte 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2
	.byte 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0
	.byte 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2
	.byte 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xB8, 0xF2, 0xB9
	.byte 0xF2, 0xB9, 0xF2, 0xB9, 0xF2, 0xB9, 0xF2, 0xB9, 0xF2
	.byte 0xBA, 0xF2, 0xBB, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBC
	.byte 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2
	.byte 0xBC, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBC
	.byte 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2
	.byte 0xBC, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBC
	.byte 0xF2, 0xBD, 0xF2, 0xBE, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBE, 0xF6
	.byte 0xBE, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBE, 0xF6, 0xBE, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBE, 0xF6, 0xBE, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBE, 0xF6
	.byte 0xBE, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBE, 0xF6, 0xBE, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBE, 0xF6, 0xBD, 0xFE, 0xBC, 0xFA, 0xBC, 0xFA
	.byte 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC
	.byte 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA
	.byte 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC
	.byte 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA
	.byte 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC
	.byte 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBD, 0xFA
byte_804590C: .byte 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0
	.byte 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2
	.byte 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0
	.byte 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2
	.byte 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0
	.byte 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2
	.byte 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0
	.byte 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2
	.byte 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xB8
	.byte 0xF2, 0xB9, 0xF2, 0xB9, 0xF2, 0xB9, 0xF2, 0xB9, 0xF2
	.byte 0xB9, 0xF2, 0xBA, 0xF2, 0xBB, 0xF2, 0xBC, 0xF2, 0xBC
	.byte 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2
	.byte 0xBC, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBC
	.byte 0xF2, 0xBD, 0xF2, 0xBE, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBE, 0xF6, 0xBE, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBE, 0xF6, 0xBD, 0xFE, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC
	.byte 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA
	.byte 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC
	.byte 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA
	.byte 0xBC, 0xFA, 0xBC, 0xFA, 0xBD, 0xFA, 0xC0, 0xF2, 0xC0
	.byte 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2
	.byte 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0
	.byte 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2
	.byte 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0
	.byte 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2
	.byte 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0
	.byte 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2
	.byte 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0
	.byte 0xF2, 0xC0, 0xF2, 0xC0, 0xF2
byte_8045A4C: .byte 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0
	.byte 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2
	.byte 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0
	.byte 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2
	.byte 0xC0, 0xF2, 0xC0, 0xF2, 0xB8, 0xF2, 0xB9, 0xF2, 0xB9
	.byte 0xF2, 0xB9, 0xF2, 0xB9, 0xF2, 0xB9, 0xF2, 0xBA, 0xF2
	.byte 0xBB, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBC
	.byte 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2
	.byte 0xBC, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBD, 0xF2, 0xBE
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBE, 0xF6, 0xBE, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBE, 0xF6, 0xBE, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBE, 0xF6, 0xBE, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBE, 0xF6, 0xBD, 0xFE, 0xBC
	.byte 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA
	.byte 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC
	.byte 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA
	.byte 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBD
	.byte 0xFA, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2
	.byte 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0
	.byte 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2
	.byte 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0, 0xF2, 0xC0
	.byte 0xF2, 0xC0, 0xF2, 0xC0, 0xF2
byte_8045B8C: .byte 0xB8, 0xF2, 0xB9, 0xF2, 0xB9, 0xF2, 0xB9, 0xF2, 0xB9
	.byte 0xF2, 0xB9, 0xF2, 0xBA, 0xF2, 0xBB, 0xF2, 0xBC, 0xF2
	.byte 0xBC, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBC
	.byte 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2, 0xBC, 0xF2
	.byte 0xBC, 0xF2, 0xBD, 0xF2, 0xBE, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBE, 0xF6, 0xBE
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBE, 0xF6, 0xBE, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBE, 0xF6, 0xBE, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBE, 0xF6, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBE, 0xF6, 0xBE, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF
	.byte 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2
	.byte 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBF, 0xF2, 0xBE
	.byte 0xF6, 0xBD, 0xFE, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA
	.byte 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC
	.byte 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA
	.byte 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC, 0xFA, 0xBC
	.byte 0xFA, 0xBC, 0xFA, 0xBD, 0xFA
byte_8045CCC: .byte 0x1, 0x5, 0x3, 0x0, 0x0, 0x0, 0x0, 0x0, 0x5, 0x6, 0x4, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x1, 0x2, 0x0, 0x0, 0x0, 0x0, 0x0, 0x7, 0x2, 0x9, 0x0, 0x0, 0x0, 0x0, 0x0
spritePtrArr8045CEC: .word byte_86BECA0
	.word byte_86BEE80
	.word byte_86BF060
	.word byte_86BF240
	.word byte_86BF240
	.word byte_86BF060
	.word byte_86BEE80
	.word byte_86BECA0
	.word byte_86BF420
	.word byte_86BF600
	.word byte_86BF7E0
	.word byte_86BF9C0
	.word byte_86BF9C0
	.word byte_86BF7E0
	.word byte_86BF600
	.word byte_86BF420
	.word byte_86BECA0
	.word byte_86BEE80
	.word byte_86BF060
	.word byte_86BF240
	.word byte_804590C
	.word byte_8045A4C
	.word byte_8045B8C
	.word 0xFF
	.word byte_201F070
	.word byte_201F070
	.word byte_201F070
	.word byte_201F070
	.word byte_201F070
	.word byte_201F070
	.word byte_201F070
	.word byte_201F070
	.word byte_86BFE60
	.word byte_86C0040
	.word byte_86C0220
	.word byte_86C0400
	.word byte_86C0400
	.word byte_86C0220
	.word byte_86C0040
	.word byte_86BFE60
	.word spriteWhiteDot
	.word spriteWhiteDot
	.word spriteWhiteDot
	.word spriteWhiteDot
	.word spriteWhiteDot
	.word spriteWhiteDot
	.word spriteWhiteDot
	.word spriteWhiteDot
	.word byte_86C0940
	.word byte_86C0940
	.word byte_86C0940
	.word byte_86C0940
	.word byte_86C0940
	.word byte_86C0940
	.word byte_86C0940
	.word byte_86C0940
byte_8045DCC: .byte 0xE2, 0x0, 0x8D, 0x0, 0xCA, 0x0, 0x8D, 0x0
off_8045DD4: .word byte_8045DF0
	.word byte_8045E10
	.word byte_8045E30
	.word byte_8045E50
	.word byte_8045E70
	.word byte_8045E90
	.word byte_8045EB0
byte_8045DF0: .byte 0x1, 0x0, 0x0, 0x40, 0x10, 0x80, 0x0, 0x0
off_8045DF8: .word byte_86F2980
	.word 0x6010200
	.word 0x80
	.word byte_86F2960
	.word byte_3001650
	.word 0x20
byte_8045E10: .byte 0x1, 0x0, 0x0, 0x40, 0x14, 0x80, 0x0, 0x0
	.word byte_86F2A00
	.word 0x6010280
	.word 0x80
	.word byte_86F2960
	.word byte_3001650
	.word 0x20
byte_8045E30: .byte 0x1, 0x0, 0x0, 0x40, 0x18, 0x80, 0x0, 0x0
	.word byte_86F2A80
	.word 0x6010300
	.word 0x80
	.word byte_86F2960
	.word byte_3001650
	.word 0x20
byte_8045E50: .byte 0x1, 0x0, 0x0, 0x40, 0x1C, 0x80, 0x0, 0x0
	.word byte_86F2B00
	.word 0x6010380
	.word 0x80
	.word byte_86F2960
	.word byte_3001650
	.word 0x20
byte_8045E70: .byte 0x1, 0x0, 0x0, 0x40, 0x20, 0x80, 0x0, 0x0
	.word byte_86F2B80
	.word 0x6010400
	.word 0x80
	.word byte_86F2960
	.word byte_3001650
	.word 0x20
byte_8045E90: .byte 0x1, 0x0, 0x0, 0x40, 0x24, 0x80, 0x0, 0x0
	.word byte_86F2C00
	.word 0x6010480
	.word 0x80
	.word byte_86F2960
	.word byte_3001650
	.word 0x20
byte_8045EB0: .byte 0x1, 0x0, 0x0, 0x40, 0x28, 0x80, 0x0, 0x0
	.word byte_86F2C80
	.word 0x6010500
	.word 0x80
	.word byte_86F2960
	.word byte_3001650
	.word 0x20
	thumb_func_end chatbox_8043A5C

	thumb_func_start chatbox_8045ED0
chatbox_8045ED0:
	push {r1,lr}
	ldr r1, off_8045ED8 // =byte_8043CA4
	ldrb r0, [r1,r0]
	pop {r1,pc}
off_8045ED8: .word byte_8043CA4
	thumb_func_end chatbox_8045ED0

	thumb_func_start chatbox_8045EDC
chatbox_8045EDC:
	push {r2-r7,lr}
	mov r2, r10
	ldr r2, [r2,#oToolkit_ChatboxPtr]
	mov r3, #0x4c
	lsl r0, r0, #2
	add r3, r3, r0
	str r1, [r2,r3]
	pop {r2-r7,pc}
	thumb_func_end chatbox_8045EDC

	thumb_func_start chatbox_8045EEC
chatbox_8045EEC:
	push {r1-r7,lr}
	mov r1, r10
	ldr r1, [r1,#oToolkit_ChatboxPtr]
	mov r2, #0x4c
	lsl r0, r0, #2
	add r2, r2, r0
	ldr r0, [r1,r2]
	pop {r1-r7,pc}
	thumb_func_end chatbox_8045EEC

	thumb_func_start chatbox_8045EFC
chatbox_8045EFC:
	push {r4-r7,lr}
	mov r4, r10
	ldr r4, [r4,#oToolkit_ChatboxPtr]
	str r0, [r4,#0x4c]
	str r1, [r4,#0x50]
	str r2, [r4,#0x54]
	str r3, [r4,#0x58]
	pop {r4-r7,pc}
	thumb_func_end chatbox_8045EFC

	thumb_local_start
sub_8045F0C:
	push {r4-r7,lr}
	mov r4, r10
	ldr r4, [r4,#oToolkit_ChatboxPtr]
	ldr r0, [r4,#0x4c]
	ldr r1, [r4,#0x50]
	ldr r2, [r4,#0x54]
	ldr r3, [r4,#0x58]
	pop {r4-r7,pc}
	thumb_func_end sub_8045F0C

	thumb_func_start chatbox_set_eFlags2009F38
chatbox_set_eFlags2009F38:
	push {r1,r2}
	ldr r1, off_8045F48 // =eFlags2009F38
	ldr r2, [r1]
	orr r2, r0
	str r2, [r1]
	pop {r1,r2}
	mov pc, lr
	.balign 4, 0x00
	thumb_func_end chatbox_set_eFlags2009F38

// (int a1) ->
	thumb_func_start chatbox_clear_eFlags2009F38
chatbox_clear_eFlags2009F38:
	push {r1,r2}
	ldr r1, off_8045F48 // =eFlags2009F38
	ldr r2, [r1]
	bic r2, r0
	str r2, [r1]
	pop {r1,r2}
	mov pc, lr
	.balign 4, 0x00
	thumb_func_end chatbox_clear_eFlags2009F38

	thumb_func_start chatbox_check_eFlags2009F38
chatbox_check_eFlags2009F38:
	push {r1}
	ldr r1, off_8045F48 // =eFlags2009F38
	ldr r1, [r1]
	and r0, r1
	pop {r1}
	mov pc, lr
off_8045F48: .word eFlags2009F38
	thumb_func_end chatbox_check_eFlags2009F38

	thumb_func_start chatbox_8045F4C
chatbox_8045F4C:
	push {r1}
	ldr r1, off_8045F5C // =eFlags2009F38
	ldr r1, [r1]
	mov r0, #7
	and r0, r1
	pop {r1}
	mov pc, lr
	.balign 4, 0x00
off_8045F5C: .word eFlags2009F38
	thumb_func_end chatbox_8045F4C

	thumb_local_start
chatbox_8045F60:
	push {lr}
	mov r0, #0
	str r0, [r5,#0x70]
	strb r0, [r5,#0xf]
	strb r0, [r5,#0xe]
	str r0, [r5,#0x7c]
	ldr r0, off_8045F7C // =unk_200BEA0
	ldr r1, off_8045F80 // =0xf00
	bl ZeroFillByEightWords // (int a1, int a2) -> void
	ldr r0, off_8045F88 // =dword_200CDA0
	bl ZeroFillByEightWords // (int a1, int a2) -> void
	pop {pc}
off_8045F7C: .word unk_200BEA0
off_8045F80: .word 0xF00
	.word 0x6015700
off_8045F88: .word dword_200CDA0
	thumb_func_end chatbox_8045F60

/*For debugging purposes, connect comment at any range!*/
