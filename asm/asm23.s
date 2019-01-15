	.include "asm/asm23.inc"

	thumb_local_start
sub_8088CA0:
	push {lr}
	bl sub_8005D88
	mov r0, #0
	pop {pc}
	.balign 4, 0x00
	.byte 0x0, 0x0, 0x1, 0x40, 0x2, 0x0, 0x0, 0x8, 0x3F, 0x0, 0x6, 0x2, 0xFF, 0x1E
	.byte 0x27, 0xFF, 0xC, 0x8, 0x7, 0x3E, 0xC, 0x33, 0x7B, 0x88, 0x54, 0x0, 0xAC, 0x8C
	.byte 0x8, 0x8, 0x4A, 0x2, 0x10, 0x91, 0x5, 0x8, 0x3F, 0x34, 0x3F, 0x1C, 0x2, 0xFF
	.byte 0x1E, 0x27, 0xFF, 0x8, 0x8, 0x7, 0x14, 0x2F, 0x8D, 0x8, 0x8, 0x2, 0xFF, 0x1E
	.byte 0x3A, 0xFF, 0x0, 0x4, 0x80, 0x2, 0xFF, 0x3C, 0x14, 0x0, 0x0, 0x0, 0x0, 0x27
	.byte 0xFF, 0xC, 0x8, 0x7, 0x52, 0x0, 0x60, 0x1, 0x2A, 0xFF, 0x15, 0x17, 0x29, 0xFF
	.byte 0x82, 0x6, 0x4A, 0x3, 0x54, 0x1, 0x3B, 0x40, 0x4, 0xFF, 0x1, 0x47, 0x0, 0xFF
	.byte 0x1, 0x41, 0x0, 0xFF, 0x1, 0x40, 0x0, 0x40, 0x2, 0x0, 0x0, 0x3F, 0x30, 0x29
	.byte 0xFF, 0x6C, 0x6, 0x2, 0xFF, 0x3C, 0x4E, 0xFF, 0xFF, 0x27, 0xFF, 0x8, 0x8, 0x7
	.byte 0x3F, 0x18, 0x3F, 0x4, 0x0, 0x3C, 0x0, 0x40, 0x15, 0xEC, 0x8C, 0x8, 0x8, 0x0
	.byte 0x0, 0xC0, 0xF9, 0x40, 0xFF, 0x0, 0x0, 0x8, 0x3F, 0x0, 0x6, 0x3E, 0xEC, 0x36
	.byte 0x7B, 0x88, 0x2, 0xFF, 0x1, 0x54, 0x0, 0x38, 0x8D, 0x8, 0x8, 0x4A, 0x2, 0xF4
	.byte 0xEC, 0x6, 0x8, 0x3F, 0x34, 0x3F, 0x1C, 0x2, 0xFF, 0x1E, 0x27, 0xFF, 0x0, 0x8
	.byte 0x7, 0x14
	.word dword_8088DAC
	.byte 0x2, 0xFF, 0x1E, 0x3A, 0xFF, 0x0, 0x4, 0x80, 0x2, 0xFF, 0x3C
byte_8088D73: .byte 0x14, 0x0, 0x0, 0x0, 0x0, 0x27, 0xFF, 0xC, 0x8, 0x7, 0x6A, 0x6, 0x4A
	.byte 0x3, 0x54, 0x1, 0x3B, 0x40, 0x4, 0xFF, 0x4, 0x47, 0x0, 0xFF, 0x4, 0x41
	.byte 0x0, 0xFF, 0x1, 0xC0, 0xF9, 0x40, 0xFF, 0x0, 0x0, 0x3F, 0x30, 0x29, 0xFF
	.byte 0x6E, 0x6, 0x2, 0xFF, 0x3C, 0x4E, 0xFF, 0xFF, 0x27, 0xFF, 0x8, 0x8, 0x7
	.byte 0x3F, 0x18, 0x3F, 0x4, 0x0
dword_8088DAC: .word 0x1540003C
	.word byte_8088D73
	.byte 0x0, 0x20, 0x5, 0x20, 0x5, 0x0, 0x0, 0x8, 0x4, 0x18, 0x0, 0x80, 0xFF
	.byte 0x0, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x3F, 0x0, 0x6, 0x2, 0xFF, 0x1E
	.byte 0x27, 0xFF, 0xC, 0x8, 0x7, 0x3E, 0x4, 0x3A, 0x7B, 0x88, 0x54, 0x0, 0xB4
	.byte 0x8D, 0x8, 0x8, 0x4A, 0x2, 0x5C, 0xD1, 0x6, 0x8, 0x3F, 0x34, 0x3F, 0x1C
	.byte 0x2, 0xFF, 0x1E, 0x27, 0xFF, 0x8, 0x8, 0x7, 0x14, 0xDD, 0x8E, 0x8, 0x8
	.byte 0x2, 0xFF, 0x1E, 0x3A, 0xFF, 0x0, 0x4, 0x80, 0x2, 0xFF, 0x1E, 0x12, 0x20
	.byte 0xE5, 0x8E, 0x8, 0x8, 0x2, 0xFF, 0x1E, 0x3A, 0xFF, 0x3, 0x4, 0x80, 0x14
	.byte 0x0, 0x0, 0x0, 0x0, 0x27, 0xFF, 0x4, 0x2, 0x7, 0x13, 0x20, 0x5A, 0x0
	.byte 0x0, 0x0, 0x58, 0xA5, 0xCB, 0x4, 0x8, 0xC1, 0xCB, 0x4, 0x8, 0x3, 0x0
	.byte 0x0, 0x0, 0x35, 0x8, 0x1, 0x2, 0xFF, 0x5A, 0x27, 0xFF, 0x0, 0x2, 0x7
	.byte 0x14, 0xDD, 0x8E, 0x8, 0x8, 0x2, 0xFF, 0x1E, 0x3A, 0xFF, 0x4, 0x4, 0x80
	.byte 0x2, 0xFF, 0x1E, 0x35, 0x8, 0x2, 0x9, 0x8, 0x4, 0x2, 0xFF, 0x1E, 0x54
	.byte 0x0, 0xBC, 0x8D, 0x8, 0x8, 0x8, 0x2, 0xFF, 0x1E, 0x3A, 0xFF, 0x5, 0x4
	.byte 0x80, 0x2, 0xFF, 0x1E, 0x35, 0x8, 0x5, 0x9, 0x8, 0x6, 0x2, 0xFF, 0x1E
	.byte 0x3A, 0xFF, 0x6, 0x4, 0x80, 0x2, 0xFF, 0x3C, 0x14, 0x0, 0x0, 0x0, 0x0
	.byte 0x27, 0xFF, 0xC, 0x8, 0x7, 0x2A, 0xFF, 0x15, 0x17, 0x13, 0x20, 0x5A, 0x0
	.byte 0x0, 0x0, 0x29, 0xFF, 0x80, 0x6, 0x59, 0x58, 0xA5, 0xCB, 0x4, 0x8, 0xC1
	.byte 0xCB, 0x4, 0x8, 0x3, 0x0, 0x0, 0x0, 0x4A, 0x3, 0x54, 0x1, 0x3B, 0x40
	.byte 0x4, 0xFF, 0x4, 0x47, 0x0, 0xFF, 0x4, 0x41, 0x0, 0xFF, 0x1, 0x60, 0x4
	.byte 0x20, 0x5, 0x0, 0x0, 0x3F, 0x30, 0x29, 0xFF, 0x70, 0x6, 0x29, 0xFF, 0x72
	.byte 0x6, 0x29, 0xFF, 0x74, 0x6, 0x29, 0xFF, 0x76, 0x6, 0x62, 0x0, 0x4B, 0x7D
	.byte 0x18, 0x14, 0x8, 0x4B, 0x73, 0x20, 0x14, 0x8, 0x2, 0xFF, 0x3C, 0x4E, 0xFF
	.byte 0xFF, 0x27, 0xFF, 0x8, 0x8, 0x7, 0x3F, 0x18, 0x3F, 0x4, 0x0, 0x3C, 0x0
	.byte 0x40, 0x15, 0x72, 0x8E, 0x8, 0x8, 0x4D, 0xE3, 0x0, 0x5A, 0x2, 0x4, 0x0
	.byte 0x2, 0xFF, 0xA, 0x5A, 0x1, 0x4, 0x0, 0x2, 0xFF, 0xA, 0x5A, 0x0, 0x20
	.byte 0x0, 0x4D, 0xE3, 0x0, 0x2, 0xFF, 0x20, 0x15, 0xF6, 0x8E, 0x8, 0x8, 0x0
	.byte 0x0, 0x0, 0x0, 0x20, 0x5, 0x20, 0x5, 0x0, 0x0, 0x8, 0x4, 0x18, 0x0
	.byte 0x80, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x8, 0x0, 0x0, 0x3F, 0x0, 0x6, 0x2
	.byte 0xFF, 0x1E, 0x27, 0xFF, 0xC, 0x8, 0x7, 0x3E, 0x70, 0x3E, 0x7B, 0x88, 0x54
	.byte 0x0, 0x8, 0x8F, 0x8, 0x8, 0x4A, 0x2, 0xCC, 0xD1, 0x6, 0x8, 0x3F, 0x34
	.byte 0x3F, 0x1C, 0x2, 0xFF, 0x1E, 0x27, 0xFF, 0x8, 0x8, 0x7, 0x14, 0xD4, 0x8F
	.byte 0x8, 0x8, 0x2, 0xFF, 0x1E, 0x3A, 0xFF, 0x0, 0x4, 0x80, 0x2, 0xFF, 0x3C
	.byte 0x4D, 0x5C, 0x1, 0x14, 0x0, 0x0, 0x0, 0x0, 0x27, 0xFF, 0x4, 0x2, 0x7
	.byte 0x2A, 0xFF, 0x80, 0x6, 0x59, 0x38, 0x63, 0x2, 0xFF, 0x5A, 0x3E, 0x70, 0x3E
	.byte 0x7B, 0x88, 0x27, 0xFF, 0x0, 0x2, 0x7, 0x14, 0xD4, 0x8F, 0x8, 0x8, 0x2
	.byte 0xFF, 0x1E, 0x3A, 0xFF, 0x1, 0x4, 0x80, 0x2, 0xFF, 0x1E, 0x54, 0x0, 0x10
	.byte 0x8F, 0x8, 0x8, 0x8, 0x2, 0xFF, 0x1E, 0x35, 0x8, 0x1, 0x9, 0x8, 0x2
	.byte 0x2, 0xFF, 0x1E, 0x3A, 0xFF, 0x7, 0x4, 0x80, 0x2, 0xFF, 0x1E, 0x35, 0x8
	.byte 0x3, 0x9, 0x8, 0x4
byte_8088FA6: .byte 0x14, 0x0, 0x0, 0x0, 0x0, 0x27, 0xFF, 0x4, 0x10, 0x7, 0x2A, 0xFF
	.byte 0x15, 0x17, 0x2A, 0xFF, 0x80, 0x6, 0x29, 0xFF, 0x1F, 0x1, 0x59, 0x63
	.byte 0x29, 0xFF, 0x7A, 0x6, 0x53, 0xFF, 0x1, 0x2, 0xFF, 0x3C, 0x4C, 0x1
	.byte 0x1, 0xDC, 0x8F, 0x8, 0x8, 0x3F, 0x18, 0x3F, 0x4, 0x0, 0x3C, 0x0
	.byte 0x40, 0x15
	.word byte_8088FA6
	.byte 0x0, 0x0, 0x0, 0x4, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x1, 0x40, 0x2, 0x0, 0x0, 0x8, 0x3F, 0x0, 0x6, 0x3E, 0xAC, 0x41, 0x7B, 0x88, 0x2, 0xFF
	.byte 0x1, 0x54, 0x0, 0xEC, 0x8F, 0x8, 0x8, 0x4A, 0x2, 0x58, 0x91, 0x5, 0x8, 0x3F, 0x34, 0x3F, 0x1C
	.byte 0x2, 0xFF, 0x1E, 0x27, 0xFF, 0x8, 0x8, 0x7, 0x14
	.word dword_8089058
	.byte 0x2, 0xFF, 0x1E, 0x3A, 0xFF, 0x0, 0x4, 0x80
byte_8089024: .byte 0x14, 0x0, 0x0, 0x0, 0x0, 0x29, 0xFF, 0x9, 0x6, 0x2A, 0xFF, 0x82
	.byte 0x6, 0x29, 0xFF, 0x83, 0x6, 0x2A, 0xFF, 0x1F, 0x1, 0x2A, 0xFF, 0x15
	.byte 0x17, 0x29, 0xFF, 0xE7, 0x0, 0x6C, 0x14, 0x2, 0x13, 0x0, 0x3, 0x0
	.byte 0x0, 0x0, 0x2, 0xFF, 0x14, 0x55, 0x3F, 0x0, 0x3F, 0x18, 0x3F, 0x4
	.byte 0x2, 0xFF, 0x1, 0x0
dword_8089058: .word 0x1540003C
	.word byte_8089024
byte_8089060: .byte 0x0, 0xA0, 0x1, 0xA0, 0xEC, 0x0, 0x1, 0x8
byte_8089068: .byte 0x4, 0x20, 0x0, 0x0, 0x0, 0x80, 0x0, 0x0, 0x0, 0x8, 0x4, 0x20, 0x0, 0x0
	.byte 0x0, 0x80, 0xFF, 0x0, 0x0, 0x8, 0x3F, 0x0, 0x6, 0x3E, 0xA4, 0x45, 0x7B, 0x88
	.byte 0x2, 0xFF, 0x1, 0x53, 0xFF, 0x0, 0x54, 0x0
	.word byte_8089060
	.byte 0x4A, 0x2, 0x78, 0x4E, 0x7, 0x8, 0x3F, 0x34, 0x3F, 0x1C
	.byte 0x27, 0xFF, 0x8, 0x4, 0x7, 0x14
	.word byte_808910F
	.byte 0x2, 0xFF, 0x3C, 0x35, 0x8, 0x1, 0x54, 0x0
	.word byte_8089068
	.byte 0x8, 0x9, 0x8, 0x2, 0x2, 0xFF, 0x1E, 0x3A, 0xFF, 0x0, 0x4, 0x80
	.byte 0x2, 0xFF, 0x1E, 0x54, 0x0, 0x72, 0x90, 0x8, 0x8, 0x8, 0x2, 0xFF
	.byte 0x1E, 0x35, 0x8, 0x3, 0x9, 0x8, 0x4, 0x2, 0xFF, 0x1E, 0x3A, 0xFF
	.byte 0x4, 0x4, 0x80, 0x2, 0xFF, 0x3C, 0x14, 0x0, 0x0, 0x0, 0x0, 0x27
	.byte 0xFF, 0xC, 0x4, 0x7, 0x2, 0xFF, 0x5A, 0x40, 0x4, 0xFF, 0x4, 0x47
	.byte 0x0, 0xFF, 0x4, 0x41, 0x0, 0xFF, 0x1, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x3F, 0x30, 0x29, 0xFF, 0xB, 0x6, 0x28, 0xFF, 0xFF, 0x4C, 0x0
	.byte 0x0, 0x18, 0x91, 0x8, 0x8, 0x3B, 0x3F, 0x18, 0x3F, 0x4, 0x0
byte_808910F: .byte 0x3C, 0x0, 0x40, 0x15, 0xDA, 0x90, 0x8, 0x8, 0x0, 0x1, 0x2, 0x0
	.byte 0x4, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	.byte 0x0
dword_8089128: .word 0x4B06003F
	.word byte_8089130+0x11
byte_8089130: .byte 0x2A, 0xFF, 0x47, 0x7, 0x3F, 0x4, 0x0, 0x3C, 0x0, 0x40, 0x15
	.byte 0x30, 0x91, 0x8, 0x8, 0x0, 0xF0, 0xB5, 0x3, 0x48, 0x29, 0x78
	.byte 0x40, 0x58, 0xFE, 0x46, 0x0, 0x47, 0x0, 0x42, 0xF0, 0xBD
	.word off_8089154
off_8089154: .word sub_8089160+1
	.word sub_808917C+1
	.word sub_8089234+1
	thumb_func_end sub_8088CA0

	thumb_local_start
sub_8089160:
	push {r4-r7,lr}
	mov r0, #0
	bl sub_80301B2
	mov r0, #0
	bl sub_8033FC0
	mov r0, #0
	bl sub_8089244
	mov r0, #4
	strb r0, [r5]
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089160

	thumb_local_start
sub_808917C:
	push {r4-r7,lr}
	mov r7, r10
	ldr r7, [r7,#4]
	ldrh r0, [r7,#2]
	mov r1, #0x20
	lsl r1, r1, #4
	tst r1, r0
	bne loc_80891F4
	ldrh r0, [r7]
	ldr r3, off_8089204 // =byte_8089208
	mov r4, #0
loc_8089192:
	ldrb r2, [r3,r4]
	mov r1, r2
	and r1, r0
	cmp r1, r2
	beq loc_80891A4
	add r4, #1
	cmp r4, #8
	blt loc_8089192
	b loc_80891EE
loc_80891A4:
	mov r7, #0
	mov r1, #2
	tst r0, r1
	beq loc_80891AE
	mov r7, #0x10
loc_80891AE:
	bl sub_80301D0
	sub sp, sp, #0xc
	ldr r3, off_8089210 // =off_8089214
	lsl r6, r4, #1
	add r3, r3, r6
	add r3, r3, r7
	mov r6, #0
	ldrsb r6, [r3,r6]
	lsl r6, r6, #0x10
	mov r7, #1
	ldrsb r7, [r3,r7]
	lsl r7, r7, #0x10
	add r0, r0, r6
	add r1, r1, r7
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	mov r0, sp
	bl sub_80303FC
	bne loc_80891E6
	ldr r0, [sp]
	ldr r1, [sp,#4]
	ldr r2, [sp,#8]
	bl sub_80301DC
	b loc_80891EC
loc_80891E6:
	mov r0, r4
	bl sub_8089370
loc_80891EC:
	add sp, sp, #0xc
loc_80891EE:
	bl sub_8089280
	b loc_80891FE
loc_80891F4:
	mov r0, #0x83
	bl sound_play // () -> void
	mov r0, #8
	strb r0, [r5]
loc_80891FE:
	mov r0, #1
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8089204: .word byte_8089208
byte_8089208: .byte 0x50, 0x90, 0xA0, 0x60, 0x40, 0x10, 0x80, 0x20
off_8089210: .word off_8089214
off_8089214: .word GeneralLCDStatus_STAT_LYC_
	.byte 0xFC, 0x0, 0x0, 0xFC, 0x4, 0xFC, 0x2, 0x2, 0xFC, 0x4, 0xFE, 0xFE
	.byte 0x8, 0x0, 0x0, 0x8, 0xF8, 0x0, 0x0, 0xF8, 0x8, 0xF8, 0x4, 0x4
	.byte 0xF8, 0x8, 0xFC, 0xFC
	thumb_func_end sub_808917C

	thumb_local_start
sub_8089234:
	push {r4-r7,lr}
	bl sub_80301BC
	mov r0, #1
	bl sub_8033FC0
	mov r0, #0
	pop {r4-r7,pc}
	thumb_func_end sub_8089234

	thumb_local_start
sub_8089244:
	push {r4-r7,lr}
	ldr r1, off_8089278 // =dword_87DE44C
	lsl r0, r0, #5
	add r0, r0, r1
	ldr r1, off_808927C // =byte_30016F0
	mov r2, #0x20
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	// initRefs
	ldr r0, off_8089264 // =byte_8089268
	bl decompAndCopyData_8000B30 // (u32 *initRefs) -> void
	mov r0, #0x7f
	bl sound_play // () -> void
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8089264: .word byte_8089268
byte_8089268: .byte 0x4C, 0xDD, 0x7D, 0x8, 0x0, 0x48, 0x1, 0x6, 0x0, 0x7, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x0
off_8089278: .word dword_87DE44C
off_808927C: .word byte_30016F0
	thumb_func_end sub_8089244

	thumb_local_start
sub_8089280:
	push {r4-r7,lr}
	ldr r0, off_80892A0 // =byte_80892A4
	mov r1, r10
	ldr r1, [r1,#oToolkit_CurFramePtr]
	ldrh r1, [r1]
	mov r2, #0x1f
	and r1, r2
	cmp r1, #8
	bge loc_8089294
	ldr r0, off_80892F0 // =byte_80892F4
loc_8089294:
	bl sub_8001158 // () -> void
	ldr r0, off_8089340 // =byte_8089344
	bl sub_8001158 // () -> void
	pop {r4-r7,pc}
off_80892A0: .word byte_80892A4
byte_80892A4: .byte 0x8, 0x0, 0x8, 0x0, 0x47, 0xD2, 0x0, 0x0, 0x4, 0x0, 0x74, 0x0, 0x40
	.byte 0xD2, 0x0, 0x0, 0x8, 0x0, 0xE0, 0x0, 0x41, 0xD2, 0x0, 0x0, 0x4D, 0x0
	.byte 0xE4, 0x0, 0x42, 0xD2, 0x0, 0x0, 0x4D, 0x0, 0x4, 0x0, 0x46, 0xD2, 0x0
	.byte 0x0, 0x90, 0x0, 0xE0, 0x0, 0x43, 0xD2, 0x0, 0x0, 0x94, 0x0, 0x74, 0x0
	.byte 0x44, 0xD2, 0x0, 0x0, 0x90, 0x0, 0x8, 0x0, 0x45, 0xD2, 0x0, 0x0, 0x48
	.byte 0x0, 0x70, 0x40, 0x54, 0xD2, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
off_80892F0: .word byte_80892F4
byte_80892F4: .byte 0x8, 0x0, 0x8, 0x0, 0x4F, 0xD2, 0x0, 0x0, 0x4, 0x0, 0x74, 0x0, 0x48
	.byte 0xD2, 0x0, 0x0, 0x8, 0x0, 0xE0, 0x0, 0x49, 0xD2, 0x0, 0x0, 0x4D, 0x0
	.byte 0xE4, 0x0, 0x4A, 0xD2, 0x0, 0x0, 0x4D, 0x0, 0x4, 0x0, 0x4E, 0xD2, 0x0
	.byte 0x0, 0x90, 0x0, 0xE0, 0x0, 0x4B, 0xD2, 0x0, 0x0, 0x94, 0x0, 0x74, 0x0
	.byte 0x4C, 0xD2, 0x0, 0x0, 0x90, 0x0, 0x8, 0x0, 0x4D, 0xD2, 0x0, 0x0, 0x48
	.byte 0x0, 0x70, 0x40, 0x54, 0xD2, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
off_8089340: .word byte_8089344
byte_8089344: .byte 0x78, 0x40, 0x14, 0x80, 0x58, 0xD2, 0x0, 0x0, 0x78, 0x40
	.byte 0x34, 0x80, 0x60, 0xD2, 0x0, 0x0, 0x78, 0x40, 0x54, 0x80
	.byte 0x68, 0xD2, 0x0, 0x0, 0x88, 0x40, 0x14, 0x40, 0x70, 0xD2
	.byte 0x0, 0x0, 0x88, 0x40, 0x34, 0x40, 0x74, 0xD2, 0x0, 0x0
	.byte 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_8089280

	thumb_local_start
sub_8089370:
	push {r4-r7,lr}
	ldr r1, off_8089388 // =byte_808938C
	lsl r0, r0, #3
	add r1, r1, r0
	ldr r0, [r1]
	ldr r1, [r1,#4]
	mov r2, #0
	mov r3, #1
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8089388: .word byte_808938C
byte_808938C: .byte 0x4, 0x0, 0xDC, 0x40, 0x50, 0xD2, 0x0, 0x0, 0x8C, 0x0, 0xDC
	.byte 0x40, 0x50, 0xD2, 0x0, 0x0, 0x8C, 0x0, 0x4, 0x40, 0x50, 0xD2
	.byte 0x0, 0x0, 0x4, 0x0, 0x4, 0x40, 0x50, 0xD2, 0x0, 0x0, 0x0
	.byte 0x0, 0x70, 0x40, 0x50, 0xD2, 0x0, 0x0, 0x49, 0x0, 0xE0, 0x40
	.byte 0x50, 0xD2, 0x0, 0x0, 0x90, 0x0, 0x70, 0x40, 0x50, 0xD2, 0x0
	.byte 0x0, 0x49, 0x0, 0x0, 0x40, 0x50, 0xD2, 0x0, 0x0
byte_80893CC: .byte 0x3F, 0x0, 0x6, 0x2, 0xFF, 0x1E, 0x27, 0xFF, 0xC, 0x8, 0x7, 0x4B
	.word byte_80893DC+0x19
byte_80893DC: .byte 0x2, 0xFF, 0x3C, 0x27, 0xFF, 0x8, 0x8, 0x7, 0x2A, 0xFF, 0x46
	.byte 0x7, 0x3F, 0x4, 0x0, 0x3C, 0x0, 0x40, 0x15, 0xE4, 0x93, 0x8
	.byte 0x8, 0x0, 0xF0, 0xB5, 0x20, 0x20, 0x7A, 0xF7, 0xD3, 0xF8, 0xAB
	.byte 0xF7, 0xB6, 0xFE, 0x53, 0x46, 0xDB, 0x6B, 0x98, 0x88, 0xF, 0x49
	.byte 0x88, 0x42, 0x13, 0xD1, 0x98, 0x79, 0x23, 0x28, 0x10, 0xD1, 0x6
	.byte 0x20, 0x16, 0x21, 0xA5, 0xF7, 0xA5, 0xFE, 0x3, 0xD1, 0x0, 0x20
	.byte 0xAC, 0xF7, 0x17, 0xF8, 0x7, 0xE0, 0x6, 0x20, 0x1A, 0x21, 0xA5
	.byte 0xF7, 0x9C, 0xFE, 0x2, 0xD1, 0x1, 0x20, 0xAC, 0xF7, 0xE, 0xF8
	.byte 0x7, 0x20, 0x40, 0x21, 0xA5, 0xF7, 0x6A, 0xFE, 0xB9, 0xF0, 0x68
	.byte 0xF8, 0x0, 0x20, 0xF0, 0xBD, 0x90, 0x2, 0x0, 0x0
byte_8089448: .byte 0x3F, 0x0, 0x6, 0x3E, 0x8C, 0xE4, 0x7D, 0x8, 0x29, 0xFF
	.byte 0x31, 0x17, 0x2, 0xFF, 0x1, 0x40, 0x4, 0xFF, 0x4, 0x47
	.byte 0x0, 0xFF, 0x4, 0x2, 0xFF, 0x1E, 0x27, 0xFF, 0x8, 0x8
	.byte 0x7, 0x2, 0xFF, 0x14, 0x3A, 0xFF, 0xA, 0x4, 0x80, 0x2
	.byte 0xFF, 0x1E, 0x2A, 0xFF, 0x44, 0x7, 0x2A, 0xFF, 0x45, 0x7
	.byte 0x3F, 0x4, 0x0, 0x0, 0x0, 0x0
byte_8089480: .byte 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x18, 0x0, 0x8
byte_808948A: .byte 0x1C, 0x0, 0x0, 0x0, 0x0, 0x0
	.word off_8001800
byte_8089494: .byte 0x0, 0xC0, 0x18, 0xC0, 0xF8, 0x0, 0x0, 0x8
byte_808949C: .byte 0x0, 0xC0, 0xFC, 0x60, 0xE6, 0x0, 0x0, 0x8
byte_80894A4: .byte 0x0, 0x40, 0xF, 0x80, 0x6, 0x0, 0x0, 0x8
byte_80894AC: .byte 0x0, 0xC0, 0xF8, 0xE0, 0x15, 0x80, 0x3, 0x8
byte_80894B4: .byte 0x0, 0x0, 0xEF, 0x80, 0x16, 0x0, 0x0, 0x8
byte_80894BC: .byte 0x0, 0x80, 0xED, 0xC0, 0x2, 0x80, 0xFF, 0x8
byte_80894C4: .byte 0x0, 0x60, 0xD, 0x20, 0xE2, 0xE0, 0xFE, 0x8
byte_80894CC: .byte 0x0, 0xE0, 0x1, 0x80, 0x0, 0xE0, 0xFE, 0x8
byte_80894D4: .byte 0x90, 0x0, 0x0, 0x1, 0x0, 0x0, 0xA8, 0xFE, 0x0, 0x0, 0xCC, 0xFF
	.byte 0x0, 0x0, 0x0, 0x0, 0x90, 0x1, 0x0, 0x1, 0x0, 0x0, 0xAC, 0xFE
	.byte 0x0, 0x0, 0xF4, 0x0, 0x0, 0x0, 0x0, 0x0, 0x90, 0x2, 0x0, 0x7
	.byte 0x0, 0x0, 0xFA, 0xFF, 0x0, 0x0, 0x66, 0x1, 0x0, 0x0, 0xE0, 0xFF
	.byte 0x91, 0x0, 0x0, 0x3, 0x0, 0x0, 0xCC, 0x0, 0x0, 0x0, 0xC2, 0xFE
	.byte 0x0, 0x0, 0x40, 0x0, 0x91, 0x1, 0x0, 0x1, 0x0, 0x0, 0x8, 0xFF
	.byte 0x0, 0x0, 0xC8, 0xFF, 0x0, 0x0, 0x0, 0x0, 0x91, 0x2, 0x0, 0x5
	.byte 0x0, 0x0, 0xC0, 0x1, 0x0, 0x0, 0xE, 0xFF, 0x0, 0x0, 0x0, 0x0
	.byte 0x93, 0x0, 0x0, 0x3, 0x0, 0x0, 0x4, 0x0, 0x0, 0x0, 0x1E, 0x0
	.byte 0x0, 0x0, 0x40, 0x0, 0x93, 0x1, 0x0, 0x7, 0x0, 0x0, 0xE, 0x0
	.byte 0x0, 0x0, 0xF4, 0x1, 0x0, 0x0, 0x0, 0x0
byte_8089554: .byte 0x3F, 0x0, 0x6, 0x3E, 0x8C, 0xE4, 0x7D, 0x8, 0x2, 0xFF, 0x1
	.byte 0x4B
	.word sub_80895A8+1
	.byte 0x1C, 0x8, 0x0, 0x6E, 0x95, 0x8, 0x8, 0x3F, 0x4, 0x0, 0x14, 0x0
	.byte 0x0, 0x0, 0x0, 0x27, 0xFF, 0xC, 0x8, 0x7, 0x2, 0xFF, 0x3C, 0x3F
	.byte 0x44, 0x40, 0x4, 0xFF, 0x4, 0x47, 0x0, 0xFF, 0x4, 0x41, 0x0, 0xFF
	.byte 0x1, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x29, 0xFF, 0x44, 0x7, 0x29
	.byte 0xFF, 0x40, 0x7, 0x28, 0xFF, 0xFF, 0x4C, 0x80, 0x0, 0x0, 0x0, 0x0
	.byte 0x0, 0x3B, 0x3F, 0x4, 0x0, 0x0, 0x0, 0x0
	thumb_func_end sub_8089370

	thumb_local_start
sub_80895A8:
	push {r4-r7,lr}
	mov r7, #0x70 
	add r7, r7, r5
	ldrb r0, [r5]
	ldr r1, off_80895BC // =jt_80895C0 
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
loc_80895B8:
	tst r0, r0
	pop {r4-r7,pc}
off_80895BC: .word jt_80895C0
jt_80895C0: .word sub_808964C+1
	.word sub_80896B0+1
	.word sub_80896C4+1
	.word sub_80896D4+1
	.word sub_8089792+1
	.word sub_80897A6+1
	.word sub_8089C16+1
	.word sub_8089C78+1
	.word sub_80897E8+1
	.word sub_8089808+1
	.word sub_8089826+1
	.word sub_808983A+1
	.word sub_808985A+1
	.word sub_808989C+1
	.word sub_80898B2+1
	.word sub_80898E8+1
	.word sub_80898FC+1
	.word sub_808991C+1
	.word sub_8089960+1
	.word sub_808997E+1
	.word sub_808999C+1
	.word sub_80899D8+1
	.word sub_80899F2+1
	.word sub_8089A10+1
	.word sub_8089A60+1
	.word sub_8089ACA+1
	.word sub_8089AE8+1
	.word sub_8089B2E+1
	.word sub_8089B54+1
	.word sub_8089B7E+1
	.word sub_8089B94+1
	.word sub_8089BAA+1
	.word sub_8089BC0+1
	.word sub_8089BE4+1
	.word sub_8089BFA+1
	thumb_func_end sub_80895A8

	thumb_local_start
sub_808964C:
	push {r4-r7,lr}
	bl sub_814219C
	bne loc_808966E
	mov r0, #4
	bl sub_809E2AE
	bl sub_809E2B8
	bl sub_809E13C
	mov r0, #0
	bl sub_8089CB0
	mov r0, #0x74 
	strb r0, [r5]
	b loc_80896A0
loc_808966E:
	bl sub_81428D4
	mov r4, r0
	bl sub_8142990
	mov r1, r4
	bl sub_8142896
	bl sub_809E2AE
	bl sub_809E2B8
	ldr r1, off_80896A4 // =byte_80896A8 
	ldrb r0, [r1,r0]
	bl sub_809E13C
	bl sub_8089D26
	mov r0, #0
	bl sub_81421C8
	bl sub_8089CC4
	mov r0, #4
	strb r0, [r5]
loc_80896A0:
	mov r0, #1
	pop {r4-r7,pc}
off_80896A4: .word byte_80896A8
byte_80896A8: .byte 0xFF, 0x29, 0xFF, 0x2A, 0xFF, 0x2B, 0xFF, 0x2C
	thumb_func_end sub_808964C

	thumb_local_start
sub_80896B0:
	push {r4-r7,lr}
	ldrb r0, [r5,#0x13]
	tst r0, r0
	bne loc_80896C0
	bl sub_8089CF8
	mov r0, #0xc
	strb r0, [r5]
loc_80896C0:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_80896B0

	thumb_local_start
sub_80896C4:
	push {r4-r7,lr}
	ldrb r0, [r5,#0x13]
	tst r0, r0
	bne loc_80896D0
	mov r0, #0xc
	strb r0, [r5]
loc_80896D0:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_80896C4

	thumb_local_start
sub_80896D4:
	push {r4-r7,lr}
	bl sub_8089704
	beq loc_8089700
	cmp r0, #1
	beq loc_80896FA
	cmp r0, #2
	beq loc_80896F4
	bl sub_8089CDC
	mov r0, #1
	bl sub_80468EC
	mov r0, #0x18
	strb r0, [r5]
	b loc_8089700
loc_80896F4:
	mov r0, #0x10
	strb r0, [r5]
	b loc_8089700
loc_80896FA:
	bl sub_8089CC4
	b loc_8089700
loc_8089700:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_80896D4

	thumb_local_start
sub_8089704:
	push {r4-r7,lr}
	mov r7, r10
	ldr r7, [r7,#oToolkit_JoypadPtr]
	ldrh r7, [r7,#2]
	mov r4, #0
	mov r0, #1
	tst r0, r7
	beq loc_8089738
	bl sub_81421D0
	bl sub_8142190
	beq loc_8089730
	bl sub_8142A84
	beq loc_808972E
	mov r0, #0x67 
	bl sound_play // () -> void
	mov r4, #2
	b loc_808978C
loc_808972E:
	b loc_808978C
loc_8089730:
	mov r0, #0x69 
	bl sound_play // () -> void
	b loc_808978C
loc_8089738:
	mov r0, #2
	tst r0, r7
	beq loc_8089748
	mov r0, #0x68 
	bl sound_play // () -> void
	mov r4, #3
	b loc_808978C
loc_8089748:
	mov r7, r10
	ldr r7, [r7,#oToolkit_JoypadPtr]
	ldrh r7, [r7,#4]
	mov r0, #0x40 
	tst r0, r7
	beq loc_808976C
	mov r0, #0x66 
loc_8089756:
	bl sound_play // () -> void
	bl sub_81421D0
	sub r0, #1
	bge loc_8089764
	mov r0, #3
loc_8089764:
	bl sub_81421C8
	mov r4, #1
	b loc_808978C
loc_808976C:
	mov r0, #0x80
	tst r0, r7
	beq loc_808978C
	mov r0, #0x66 
	bl sound_play // () -> void
	bl sub_81421D0
	add r0, #1
	cmp r0, #4
	blt loc_8089784
	mov r0, #0
loc_8089784:
	bl sub_81421C8
	mov r4, #1
	b loc_808978C
loc_808978C:
	mov r0, r4
	tst r0, r0
	pop {r4-r7,pc}
	thumb_func_end sub_8089704

	thumb_local_start
sub_8089792:
	push {r4-r7,lr}
	bl sub_81421D0
	add r0, #2
	bl sub_8089CA4
	mov r0, #0x14
	strb r0, [r5]
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089792

	thumb_local_start
sub_80897A6:
	push {r4-r7,lr}
	ldrb r0, [r5,#0x13]
	tst r0, r0
	bne loc_80897E4
	mov r0, #0x80
	bl chatbox_8045F3C
	bne loc_80897E4
	bl chatbox_8045F4C
	cmp r0, #0
	beq loc_80897C8
	bl sub_8089D26
	mov r0, #0xc
	strb r0, [r5]
	b loc_80897E4
loc_80897C8:
	bl sub_8089D0E
	bl sub_81421D0
	bl sub_81421B2
	mov r0, #1
	bl sub_80468EC
	mov r0, #0xa
	bl sub_8089CB0
	mov r0, #0x20 
	strb r0, [r5]
loc_80897E4:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_80897A6

	thumb_local_start
sub_80897E8:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_8045F3C
	bne loc_8089804
	bl sub_8089CB4
	beq loc_8089804
	mov r0, #4
	mov r1, #0xff
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0x24 
	strb r0, [r5]
loc_8089804:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_80897E8

	thumb_local_start
sub_8089808:
	push {r4-r7,lr}
	bl engine_isScreeneffectAnimating // () -> zf
	beq loc_8089822
	mov r0, #0
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #5
	bl sub_8089CB0
	mov r0, #0x28 
	strb r0, [r5]
loc_8089822:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089808

	thumb_local_start
sub_8089826:
	push {r4-r7,lr}
	bl sub_8089CB4
	beq loc_8089836
	bl sub_8142BB6
	mov r0, #0x2c 
	strb r0, [r5]
loc_8089836:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089826

	thumb_local_start
sub_808983A:
	push {r4-r7,lr}
	bl engine_isScreeneffectAnimating // () -> zf
	beq loc_8089856
	bl sub_8089D44
	bl sub_814216E
	str r0, [r7,#0xc]
	mov r0, #0x1e
	bl sub_8089CB0
	mov r0, #0x30 
	strb r0, [r5]
loc_8089856:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_808983A

	thumb_local_start
sub_808985A:
	push {r4-r7,lr}
	mov r0, #0
	bl sub_8142C20
	mov r4, r0
	bl sub_814216E
	cmp r0, r4
	bne loc_8089898
	bl sub_8089CB4
	beq loc_8089898
	bl sub_814216E
	ldr r1, [r7,#0xc]
	cmp r0, r1
	beq loc_8089882
	mov r0, #0x34 
	strb r0, [r5]
	b loc_8089898
loc_8089882:
	bl sub_8142ADA
	bne loc_8089892
	bl sub_8089CDC
	mov r0, #0x18
	strb r0, [r5]
	b loc_8089898
loc_8089892:
	mov r0, #0x3c 
	strb r0, [r5]
	b loc_8089898
loc_8089898:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_808985A

	thumb_local_start
sub_808989C:
	push {r4-r7,lr}
	bl sub_8089CB4
	beq loc_80898AE
	mov r0, #7
	bl sub_8089CA4
	mov r0, #0x38 
	strb r0, [r5]
loc_80898AE:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_808989C

	thumb_local_start
sub_80898B2:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_8045F3C
	bne loc_80898E4
	bl sub_814216E
	bne loc_80898CE
	mov r0, #0x1e
	bl sub_8089CB0
	mov r0, #0x5c 
	strb r0, [r5]
	b loc_80898E4
loc_80898CE:
	bl sub_8142ADA
	bne loc_80898DE
	bl sub_8089CDC
	mov r0, #0x18
	strb r0, [r5]
	b loc_80898E4
loc_80898DE:
	mov r0, #0x3c 
	strb r0, [r5]
	b loc_80898E4
loc_80898E4:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_80898B2

	thumb_local_start
sub_80898E8:
	push {r4-r7,lr}
	bl sub_8089CB4
	beq loc_80898F8
	bl sub_8142BFA
	mov r0, #0x40 
	strb r0, [r5]
loc_80898F8:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_80898E8

	thumb_local_start
sub_80898FC:
	push {r4-r7,lr}
	mov r0, #0x10
	bl sub_8142C20
	tst r0, r0
	beq loc_8089918
	mov r0, #8
	bl sub_8089CA4
	mov r0, #0x1e
	bl sub_8089CB0
	mov r0, #0x44 
	strb r0, [r5]
loc_8089918:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_80898FC

	thumb_local_start
sub_808991C:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_8045F3C
	bne loc_808994E
	bl sub_8089CB4
	beq loc_808994E
	bl sub_8142B58
	bl sub_809E2AE
	bl sub_809E2B8
	ldr r1, off_8089954 // =byte_8089958 
	ldrb r0, [r1,r0]
	bl sub_809E13C
	bl sub_8089CDC
	mov r0, #0x1e
	bl sub_8089CB0
	mov r0, #0x48 
	strb r0, [r5]
loc_808994E:
	mov r0, #1
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8089954: .word byte_8089958
byte_8089958: .byte 0xFF, 0x2E, 0xFF, 0x2F, 0xFF, 0x30, 0xFF, 0x31
	thumb_func_end sub_808991C

	thumb_local_start
sub_8089960:
	push {r4-r7,lr}
	ldrb r0, [r5,#0x13]
	tst r0, r0
	bne loc_808997A
	bl sub_8089CB4
	beq loc_808997A
	mov r0, #4
	mov r1, #0xff
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0x4c 
	strb r0, [r5]
loc_808997A:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089960

	thumb_local_start
sub_808997E:
	push {r4-r7,lr}
	bl engine_isScreeneffectAnimating // () -> zf
	beq loc_8089998
	mov r0, #0
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #5
	bl sub_8089CB0
	mov r0, #0x50 
	strb r0, [r5]
loc_8089998:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_808997E

	thumb_local_start
sub_808999C:
	push {r4-r7,lr}
	bl sub_8089CB4
	beq loc_80899D4
	bl sub_8142224
	tst r0, r0
	beq loc_80899B2
	bl sub_8142C46
	b loc_80899C2
loc_80899B2:
	bl sub_814223E
	mov r0, #0x1e
	bl sub_8089CB0
	mov r0, #0x54 
	strb r0, [r5]
	b loc_80899D4
loc_80899C2:
	bl getPETNaviSelect // () -> u8
	bl sub_80010D4
	tst r0, r0
	beq loc_80899B2
	mov r0, #0x1e
	bl sub_8089CB0
loc_80899D4:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_808999C

	thumb_local_start
sub_80899D8:
	push {r4-r7,lr}
	bl engine_isScreeneffectAnimating // () -> zf
	beq loc_80899EE
	bl sub_8089CB4
	beq loc_80899EE
	bl sub_8142BF4
	mov r0, #0x58 
	strb r0, [r5]
loc_80899EE:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_80899D8

	thumb_local_start
sub_80899F2:
	push {r4-r7,lr}
	mov r0, #0
	bl sub_8142C20
	mov r4, r0
	bl sub_814216E
	cmp r0, r4
	bne loc_8089A0C
	bl sub_8089CDC
	mov r0, #0x18
	strb r0, [r5]
loc_8089A0C:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_80899F2

	thumb_local_start
sub_8089A10:
	push {r4-r7,lr}
	bl sub_8089CB4
	beq loc_8089A36
	bl sub_81426CE
	ldr r1, off_8089A3C // =off_8089A40 
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	str r0, [r5,#0x3c]
	bl sub_8036F98
	mov r0, #1
	strb r0, [r5,#0x13]
	mov r0, #0x3c 
	bl sub_8089CB0
	mov r0, #0x60 
	strb r0, [r5]
loc_8089A36:
	mov r0, #1
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8089A3C: .word off_8089A40
off_8089A40: .word byte_8089494
	.word byte_808949C
	.word byte_80894A4
	.word byte_80894AC
	.word byte_80894B4
	.word byte_80894BC
	.word byte_80894C4
	.word byte_80894CC
	thumb_func_end sub_8089A10

	thumb_local_start
sub_8089A60:
	push {r4-r7,lr}
	bl sub_8089CB4
	beq loc_8089AC6
	bl sub_81427CE
	mov r0, r0
	bl ClearEventFlag // (u16 entryFlagBitfield) -> void
	bl sub_814219C
	str r0, [r7,#0x10]
	bl sub_81422B4
	// entryIdx
	mov r0, #7
	// byteFlagIdx
	mov r1, #0x40 
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #2
	mov r1, #0x25 
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	mov r1, #0
	strb r1, [r0,#oGameState_Unk_15]
	// entryIdx
	mov r0, #0
	// byteFlagIdx
	mov r1, #0x28 
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_8089ABA
	bl sub_81426CE
	cmp r0, #6
	bge loc_8089ABA
	bl sub_8035408
	mov r0, #0x65 
	add r0, #0xff
	bl sound_play // () -> void
	bl sub_8036E44
	bl sub_8036E78
loc_8089ABA:
	mov r0, #0x1e
	bl sub_8089CB0
	mov r0, #0x64 
	strb r0, [r5]
	b loc_8089AC6
loc_8089AC6:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089A60

	thumb_local_start
sub_8089ACA:
	push {r4-r7,lr}
	bl sub_8089CB4
	beq loc_8089AE4
	mov r0, #0xc
	bl sub_8089CA4
	mov r0, #0x1e
	bl sub_8089CB0
	mov r0, #0x68 
	strb r0, [r5]
	b loc_8089AE4
loc_8089AE4:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089ACA

	thumb_local_start
sub_8089AE8:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_8045F3C
	bne loc_8089B2A
	bl sub_8089CB4
	beq loc_8089B2A
	bl sub_8036FAA
	mov r0, #0
	strb r0, [r5,#0x13]
	mov r0, #4
	bl sub_809E2AE
	bl sub_809E2B8
	bl sub_809E13C
	ldr r0, [r7,#0x10]
	tst r0, r0
	bne loc_8089B20
	mov r0, #0
	bl sub_8089CB0
	mov r0, #0x70 
	strb r0, [r5]
	b loc_8089B2A
loc_8089B20:
	mov r0, #0x1e
	bl sub_8089CB0
	mov r0, #0x6c 
	strb r0, [r5]
loc_8089B2A:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089AE8

	thumb_local_start
sub_8089B2E:
	push {r4-r7,lr}
	bl sub_8089CB4
	beq loc_8089B50
	mov r0, #2
	ldr r1, [r7,#0x10]
	bl chatbox_8045EDC
	mov r0, #0x11
	bl sub_8089CA4
	mov r0, #0x1e
	bl sub_8089CB0
	mov r0, #0x70 
	strb r0, [r5]
	b loc_8089B50
loc_8089B50:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089B2E

	thumb_local_start
sub_8089B54:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_8045F3C
	bne loc_8089B7A
	bl sub_8089CB4
	beq loc_8089B7A
	mov r0, #4
	bl sub_809E2AE
	bl sub_809E2B8
	bl sub_809E13C
	bl reqBBS_clearFlag_8140A0C
	mov r0, #0x18
	strb r0, [r5]
loc_8089B7A:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089B54

	thumb_local_start
sub_8089B7E:
	push {r4-r7,lr}
	bl sub_8089CB4
	beq loc_8089B90
	mov r0, #0
	bl sub_8089CA4
	mov r0, #0x78 
	strb r0, [r5]
loc_8089B90:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089B7E

	thumb_local_start
sub_8089B94:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_8045F3C
	bne loc_8089BA6
	mov r0, #1
	strb r0, [r5,#8]
	mov r0, #0
	pop {r4-r7,pc}
loc_8089BA6:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089B94

	thumb_local_start
sub_8089BAA:
	push {r4-r7,lr}
	bl sub_8089CB4
	beq loc_8089BBC
	mov r0, #0xd
	bl sub_8089CA4
	mov r0, #0x80
	strb r0, [r5]
loc_8089BBC:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089BAA

	thumb_local_start
sub_8089BC0:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_8045F3C
	bne loc_8089BE0
	// entryIdx
	mov r0, #7
	// byteFlagIdx
	mov r1, #0x45 
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #0
	strb r0, [r5,#8]
	mov r0, #0x1e
	bl sub_8089CB0
	mov r0, #0x1c
	strb r0, [r5]
loc_8089BE0:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089BC0

	thumb_local_start
sub_8089BE4:
	push {r4-r7,lr}
	bl sub_8089CB4
	beq loc_8089BF6
	mov r0, #0xe
	bl sub_8089CA4
	mov r0, #0x88
	strb r0, [r5]
loc_8089BF6:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089BE4

	thumb_local_start
sub_8089BFA:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_8045F3C
	bne loc_8089C12
	mov r0, #0
	strb r0, [r5,#8]
	mov r0, #0x1e
	bl sub_8089CB0
	mov r0, #0x1c
	strb r0, [r5]
loc_8089C12:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089BFA

	thumb_local_start
sub_8089C16:
	push {r4-r7,lr}
	ldrb r0, [r5,#0x13]
	tst r0, r0
	bne loc_8089C74
	mov r0, #1
	strb r0, [r5,#8]
	bl getPETNaviSelect // () -> u8
	bl sub_80010D4
	tst r0, r0
	bne loc_8089C4A
	strb r0, [r5,#8]
	bl getPETNaviSelect // () -> u8
	cmp r0, #0
	bne loc_8089C3E
	mov r0, #0x3a 
	bl sub_809E13C
loc_8089C3E:
	mov r0, #0x1e
	bl sub_8089CB0
	mov r0, #0x84
	strb r0, [r5]
	b loc_8089C74
loc_8089C4A:
	bl sub_809E2B8
	bl sub_809E13C
	mov r0, #0x1e
	bl sub_8089CB0
	bl sub_814216E
	beq loc_8089C6A
	bl sub_814219C
	bne loc_8089C6A
	mov r0, #0x7c 
	strb r0, [r5]
	b loc_8089C74
loc_8089C6A:
	mov r0, #0
	bl sub_8089CB0
	mov r0, #0x1c
	strb r0, [r5]
loc_8089C74:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089C16

	thumb_local_start
sub_8089C78:
	push {r4-r7,lr}
	bl sub_8089CB4
	beq loc_8089C9A
	bl sub_8036FAA
	mov r0, #0
	strb r0, [r5,#0x13]
	bl sub_81426CE
	ldr r1, off_8089CA0 // =byte_80894D4
	mov r2, #0x10
	mul r2, r0
	add r1, r1, r2
	str r1, [r5,#0x34]
	mov r0, #0
	pop {r4-r7,pc}
loc_8089C9A:
	mov r0, #1
	pop {r4-r7,pc}
	.byte 0, 0
off_8089CA0: .word byte_80894D4
	thumb_func_end sub_8089C78

	thumb_local_start
sub_8089CA4:
	push {r4-r7,lr}
	mov r1, r0
	ldr r0, [r5,#0x30]
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	pop {r4-r7,pc}
	thumb_func_end sub_8089CA4

	thumb_local_start
sub_8089CB0:
	strh r0, [r5,#0x18]
	mov pc, lr
	thumb_func_end sub_8089CB0

	thumb_local_start
sub_8089CB4:
	ldrh r0, [r5,#0x18]
	sub r0, #1
	blt loc_8089CC0
	strh r0, [r5,#0x18]
	mov r0, #0
	mov pc, lr
loc_8089CC0:
	mov r0, #1
	mov pc, lr
	thumb_func_end sub_8089CB4

	thumb_local_start
sub_8089CC4:
	push {r4-r7,lr}
	bl sub_81429CA
	ldr r0, off_8089CD8 // =byte_8089480
	str r0, [r5,#0x3c]
	bl sub_8036F98
	mov r0, #1
	strb r0, [r5,#0x13]
	pop {r4-r7,pc}
off_8089CD8: .word byte_8089480
	thumb_func_end sub_8089CC4

	thumb_local_start
sub_8089CDC:
	push {r4-r7,lr}
	ldr r0, off_8089CF4 // =byte_808948A
	str r0, [r5,#0x3c]
	bl sub_8036F98
	mov r0, #1
	strb r0, [r5,#0x13]
	bl sub_8089D0E
	bl sub_8089D44
	pop {r4-r7,pc}
off_8089CF4: .word byte_808948A
	thumb_func_end sub_8089CDC

	thumb_local_start
sub_8089CF8:
	push {r4-r7,lr}
	mov r4, #0
loc_8089CFC:
	mov r0, #0x12
	bl sub_8004822
	str r5, [r7]
	add r7, #4
	add r4, #1
	cmp r4, #3
	blt loc_8089CFC
	pop {r4-r7,pc}
	thumb_func_end sub_8089CF8

	thumb_local_start
sub_8089D0E:
	push {r4-r7,lr}
	mov r4, #0
loc_8089D12:
	ldr r5, [r7]
	tst r5, r5
	beq loc_8089D1C
	bl FreeOverworldMapObject
loc_8089D1C:
	add r7, #4
	add r4, #1
	cmp r4, #3
	blt loc_8089D12
	pop {r4-r7,pc}
	thumb_func_end sub_8089D0E

	thumb_local_start
sub_8089D26:
	push {r4-r7,lr}
	mov r0, #4
	mov r1, #1
	mov r2, #0
	bl sub_80468C6
	mov r0, #0
	bl sub_80468EC
	mov r0, #3
	mov r1, #0
	mov r2, #1
	bl sub_80468C6
	pop {r4-r7,pc}
	thumb_func_end sub_8089D26

	thumb_local_start
sub_8089D44:
	push {r4-r7,lr}
	mov r0, #0
	bl sub_80468EC
	mov r0, #3
	mov r1, #0
	mov r2, #0
	bl sub_80468C6
	// <endpool> <endfile>
	pop {r4-r7,pc}
	thumb_func_end sub_8089D44

/*For debugging purposes, connect comment at any range!*/
