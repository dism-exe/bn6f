	.include "asm/asm02.inc"

// (int chip_idx) -> ChipData*
	thumb_func_start getChip_8021DA8
getChip_8021DA8:
	ldr r1, off_8021AB0 // =ChipDataArr_8021DA8 
	mov r2, #44
	mul r0, r2
	add r0, r0, r1
	// return &u8_8021DA8[44*idx]
	mov pc, lr
	.byte 0, 0
off_8021AB0: .word ChipDataArr_8021DA8
	thumb_func_end getChip_8021DA8

	thumb_func_start sub_8021AB4
sub_8021AB4:
	push {r4,r6,r7,lr}
	mov r2, #0x3c 
	mul r1, r2
	mov r3, r10
	ldr r3, [r3,#oToolkit_S_Chip_2002178_Ptr]
	add r1, r1, r3
	mov r2, #0x3c 
	push {r1}
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	pop {r7}
	mov r6, #0
loc_8021ACC:
	ldrh r0, [r7,r6]
	bl split9BitsFromBitfield_8021AE0 // (int bitfield) -> (int, int)
	mov r2, #1
	bl sub_8021B2A
	add r6, #2
	cmp r6, #0x3c 
	blt loc_8021ACC
	pop {r4,r6,r7,pc}
	thumb_func_end sub_8021AB4

/* (r0:u16 bitfield) -> r0:u16 upper9Bits, r1:u16 lower9Bits
   preserves: lr
   clobbers: r2
   ignores: r3-r12*/
	thumb_func_start split9BitsFromBitfield_8021AE0
split9BitsFromBitfield_8021AE0: // 8021AE0
	// splits bitfield into lower and upper 9 bits, and returns those in r0, r1
	push {lr}
	lsr r1, r0, #9
	ldr r2, .Mask9Bits // =0x01ff 
	and r0, r2 // r0 assumed to have bits 16-31 unset
	pop {pc}
	.balign 4, 0x00
.Mask9Bits: .hword 0x01FF
	thumb_func_end split9BitsFromBitfield_8021AE0

	thumb_func_start sub_8021AEE
sub_8021AEE:
	push {r4,lr}
	push {r0-r2}
	bl modifyToolkit_unk7C_using_2008A0 // (int idx_2008A0) -> void
	pop {r0-r2}
	tst r2, r2
	bne loc_8021B00
	mov r0, #0
	pop {r4,pc}
loc_8021B00:
	push {r0-r2}
	ldr r1, off_8021B74 // =0x1e20 
	add r1, r1, r0
	// bitfield
	mov r0, r1
	bl SetEventFlag
	pop {r0-r2}
	push {r2}
	bl chip_8021C7C // (int chip_idx, int searchItem, int off) -> void*
	mov r4, r3
	pop {r2}
	bl sub_8021B5A
	push {r3}
	mov r1, r4
	bl sub_81376B8
	pop {r3}
	mov r0, r3
	pop {r4,pc}
	thumb_func_start sub_8021B2A
sub_8021B2A:
	push {lr}
	push {r0-r2}
	bl modifyToolkit_unk7C_using_2008A0 // (int idx_2008A0) -> void
	pop {r0-r2}
	tst r2, r2
	bne loc_8021B3C
	mov r0, #0
	pop {pc}
loc_8021B3C:
	push {r0-r2}
	ldr r1, off_8021B74 // =0x1e20 
	add r1, r1, r0
	// bitfield
	mov r0, r1
	bl SetEventFlag
	pop {r0-r2}
	push {r2}
	bl chip_8021C7C // (int chip_idx, int searchItem, int off) -> void*
	pop {r2}
	bl sub_8021B5A
	mov r0, r3
	pop {pc}
	thumb_func_end sub_8021B2A

	thumb_local_start
sub_8021B5A:
	mov r3, #1
	ldrb r1, [r0]
	cmp r1, #0x63 
	beq loc_8021B6E
	mov r3, #0
	add r1, r1, r2
	cmp r1, #0x63 
	ble loc_8021B6E
	mov r1, #0x63 
	mov r3, #2
loc_8021B6E:
	strb r1, [r0]
	mov pc, lr
	.balign 4, 0x00
off_8021B74: .word 0x1E20
	thumb_func_end sub_8021B5A

// (int idx, int searchItem, int off) -> void*
// [break (E7FE)]
//   When getting an item; like from mayl, or when loading shops
	thumb_func_start sub_8021B78
sub_8021B78:
	push {lr}
	push {r0-r2}
	tst r2, r2
	beq loc_8021B84
	bl modifyToolkit_unk7C_using_2008A0 // (int idx_2008A0) -> void
loc_8021B84:
	pop {r0-r2}
	push {r2}
	bl chip_8021C7C // (int chip_idx, int searchItem, int off) -> void*
	pop {r2}
	strb r2, [r0]
	// return itemRef
	pop {pc}
	thumb_func_end sub_8021B78

// (int idx, int searchItem, int off) -> void*
	thumb_func_start sub_8021B92
sub_8021B92:
	push {r4,lr}
	push {r2}
	bl chip_8021C7C // (int chip_idx, int searchItem, int off) -> void*
	mov r4, r3
	pop {r2}
	mov r3, #1
	ldrb r1, [r0]
	tst r1, r1
	beq loc_8021BB0
	mov r3, #0
	sub r1, r1, r2
	bge loc_8021BB0
	mov r3, #2
	add r1, r1, r2
loc_8021BB0:
	strb r1, [r0]
	tst r1, r1
	bne loc_8021BBC
	push {r3}
	mov r1, r4
	pop {r3}
loc_8021BBC:
	mov r0, r3
	pop {r4,pc}
	thumb_func_end sub_8021B92

	thumb_func_start GetChipCountOfCode
GetChipCountOfCode:
	push {r4,lr}
	push {r0,r1}
	bl sub_8006EA4
	pop {r0,r1}
	bne loc_8021BD4
	bl chip_8021C7C // (int chip_idx, int searchItem, int off) -> void*
	ldrb r0, [r0]
	pop {r4,pc}
loc_8021BD4:
	mov r0, #0
	pop {r4,pc}
	thumb_func_end GetChipCountOfCode

	thumb_func_start GetTotalChipCount
GetTotalChipCount:
	push {r7,lr}
	push {r0}
	bl sub_8006E84
	pop {r0}
	bne loc_8021BFE
	mov r7, r10
	ldr r7, [r7,#oToolkit_Unk2002230_Ptr]
	mov r1, #0xc
	mul r1, r0
	add r7, r7, r1
	ldrb r0, [r7]
	ldrb r1, [r7,#1]
	add r0, r0, r1
	ldrb r1, [r7,#2]
	add r0, r0, r1
	ldrb r1, [r7,#3]
	add r0, r0, r1
	pop {r7,pc}
loc_8021BFE:
	mov r0, #0
	pop {r7,pc}
	thumb_func_end GetTotalChipCount

	thumb_func_start sub_8021C02
sub_8021C02:
	push {r4-r7,lr}
	sub sp, sp, #4
	push {r0,r1}
	mov r2, r10
	ldr r2, [r2,#oToolkit_S2001c04_Ptr]
	pop {r0,r1}
	ldrb r2, [r2,#5]
	str r2, [sp]
	mov r4, #0
	mov r5, #0
loc_8021C16:
	mov r7, r10
	ldr r7, [r7,#oToolkit_S_Chip_2002178_Ptr]
	ldr r6, off_8021C60 // =unk_20018EC 
	ldrb r3, [r6,r4]
	lsr r2, r3, #4
	mov r3, #0x3c 
	mul r3, r2
	add r3, r3, r7
	mov r2, #0
loc_8021C28:
	ldrh r7, [r3,r2]
	ldr r6, dword_8021C64 // =0x1ff 
	and r6, r7
	lsr r7, r7, #9
	cmp r0, r6
	bne loc_8021C48
	cmp r1, r7
	bne loc_8021C48
	push {r0,r1}
	mov r0, r6
	mov r1, r7
	bl sub_8006EA4
	pop {r0,r1}
	bne loc_8021C48
	add r5, #1
loc_8021C48:
	add r2, #2
	cmp r2, #0x3c 
	blt loc_8021C28
	add r4, #1
	ldr r2, [sp]
	sub r2, #1
	str r2, [sp]
	bne loc_8021C16
	add sp, sp, #4
	mov r0, r5
	pop {r4-r7,pc}
	.byte 0, 0
off_8021C60: .word unk_20018EC
dword_8021C64: .word 0x1FF
	thumb_func_end sub_8021C02

	thumb_func_start sub_8021C68
sub_8021C68:
	push {lr}
	mov r0, r10
	// memBlock
	ldr r0, [r0,#oToolkit_Unk2002230_Ptr]
	// size
	ldr r1, dword_8021C78 // =0xf00 
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	pop {pc}
	.balign 4, 0x00
dword_8021C78: .word 0xF00
	thumb_func_end sub_8021C68

// (int chip_idx, int searchItem, int off) -> void*
	thumb_func_start chip_8021C7C
chip_8021C7C:
	push {r4,r7,lr}
	mov r2, r0
	push {r1,r2}
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	pop {r1,r2}
	add r0, #0
	mov r3, #0
loc_8021C8C:
	// index of r1_searchItem in r0_ptr or 0
	ldrb r4, [r0,r3]
	cmp r1, r4
	beq loc_8021C9A
	add r3, #1
	cmp r3, #4
	// for 4 items
	blt loc_8021C8C
	mov r3, #0
loc_8021C9A:
	mov r7, r10
	ldr r7, [r7,#oToolkit_Unk2002230_Ptr]
	mov r1, #12
	mul r1, r2
	add r7, r7, r1
	add r0, r7, r3
	// return Toolkit.unk_4C + (12*r2_off) + r3_itemIdx
	pop {r4,r7,pc}
	thumb_func_end chip_8021C7C

	thumb_func_start sub_8021CA8
sub_8021CA8:
	push {r4-r7,lr}
	mov r4, #0
	mov r5, #0
	mov r2, #0
loc_8021CB0:
	// idx
	mov r0, r2
	push {r2}
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	pop {r2}
	push {r0,r2}
	mov r0, r2
	bl sub_8006E84
	pop {r0,r2}
	bne loc_8021CF4
	mov r3, #0
loc_8021CC8:
	ldrb r6, [r0,r3]
	cmp r6, #0xff
	beq loc_8021CEE
	ldrb r7, [r0,#9]
	mov r1, #0x20 
	tst r7, r1
	bne loc_8021CEE
	mov r7, r10
	ldr r7, [r7,#oToolkit_Unk2002230_Ptr]
	mov r1, #0xc
	mul r1, r2
	add r7, r7, r1
	add r1, r7, r3
	ldrb r1, [r1]
	add r4, r4, r1
	ldrb r7, [r0,#7]
	cmp r7, #2
	bne loc_8021CEE
	add r5, r5, r1
loc_8021CEE:
	add r3, #1
	cmp r3, #4
	blt loc_8021CC8
loc_8021CF4:
	add r2, #1
	ldr r1, off_8021D04 // =0x140 
	cmp r2, r1
	blt loc_8021CB0
	mov r0, r4
	mov r1, r5
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8021D04: .word 0x140
	thumb_func_end sub_8021CA8

	thumb_func_start sub_8021D08
sub_8021D08:
	push {lr}
	ldr r0, off_8021D94 // =unk_203A0A0 
	ldr r1, off_8021D98 // =0x2e0 
	bl ZeroFillByHalfword
	pop {pc}
	thumb_func_end sub_8021D08

	thumb_func_start sub_8021D14
sub_8021D14:
	push {lr}
	ldr r2, off_8021D9C // =0x170 
	mul r2, r0
	ldr r0, off_8021DA0 // =unk_203A0A0 
	add r0, r0, r2
	ldrb r2, [r0,r1]
	cmp r2, #0xff
	bge locret_8021D28
	add r2, #1
	strb r2, [r0,r1]
locret_8021D28:
	pop {pc}
	thumb_func_end sub_8021D14

	thumb_local_start
sub_8021D2A:
	ldr r2, off_8021D9C // =0x170 
	mul r2, r0
	ldr r0, off_8021DA4 // =unk_203A0A0 
	add r0, r0, r2
	ldrb r0, [r0,r1]
	mov pc, lr
	thumb_func_end sub_8021D2A

	thumb_func_start sub_8021D36
sub_8021D36:
	push {lr}
	ldr r0, off_8021D6C // =unk_2000AF0 
	mov r1, #0x40 
	bl ZeroFillByHalfword
	ldr r0, off_8021D80 // =script_8021D88 
	ldr r1, off_8021D70 // =unk_2001184 
	mov r2, #8
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	ldr r0, off_8021D80 // =script_8021D88 
	ldr r1, off_8021D74 // =unk_200119C 
	mov r2, #8
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	ldr r0, off_8021D84 // =byte_8021D8A 
	ldr r1, off_8021D78 // =byte_20007D6 
	mov r2, #8
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	ldr r0, off_8021D84 // =byte_8021D8A 
	ldr r1, off_8021D7C // =byte_200083A 
	mov r2, #8
	bl CopyWords // (u32 *src, u32 *dest, int size) -> void
	pop {pc}
	.balign 4, 0x00
off_8021D6C: .word unk_2000AF0
off_8021D70: .word unk_2001184
off_8021D74: .word unk_200119C
off_8021D78: .word byte_20007D6
off_8021D7C: .word byte_200083A
off_8021D80: .word script_8021D88
off_8021D84: .word byte_8021D8A
script_8021D88:
	// <endpool>
	.byte 0x2, 0x0
	thumb_func_end sub_8021D36

byte_8021D8A: .byte 0x7E, 0x7E, 0x7E, 0x7E, 0xE6, 0x0, 0x0, 0x0, 0x0, 0x0
off_8021D94: .word unk_203A0A0
off_8021D98: .word 0x2E0
off_8021D9C: .word 0x170
off_8021DA0: .word unk_203A0A0
off_8021DA4:
	// <endfile>
	.word unk_203A0A0
/*For debugging purposes, connect comment at any range!*/
