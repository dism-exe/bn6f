.include "asm/asm02.inc"

.func
.thumb_func
// (int chip_idx) -> ChipData*
getChip_8021DA8:
	ldr R1, off_8021AB0 // =ChipDataArr_8021DA8 
	mov R2, #44
	mul R0, R2
	add r0, r0, r1
	// return &u8_8021DA8[44*idx]
	mov PC, LR
	.byte 0, 0
off_8021AB0: .word ChipDataArr_8021DA8
.endfunc // getChip_8021DA8

.func
.thumb_func
sub_8021AB4:
	push {r4,r6,r7,lr}
	mov r2, #0x3c 
	mul R1, R2
	mov R3, R10
	ldr R3, [R3,#0x48]
	add r1, r1, r3
	mov r2, #0x3c 
	push {r1}
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	pop {r7}
	mov R6, #0
loc_8021ACC:
	ldrh R0, [R7,R6]
	bl split9BitsFromBitfield_8021AE0 // (int bitfield) -> (int, int)
	mov R2, #1
	bl sub_8021B2A
	add R6, #2
	cmp r6, #0x3c 
	blt loc_8021ACC
	pop {r4,r6,r7,pc}
.endfunc // sub_8021AB4

.func
.thumb_func
// (int bitfield) -> (int, int)
split9BitsFromBitfield_8021AE0:
	// splits bitfield into lower and upper 9 bits, and returns those in r0, r1
	push {lr}
	lsr r1, r0, #9
	ldr R2, word_8021AEC // =0x1FF 
	and R0, R2
	pop {pc}
	.balign 4, 0x00
word_8021AEC: .hword 0x1FF
.endfunc // split9BitsFromBitfield_8021AE0

.func
.thumb_func
sub_8021AEE:
	push {r4,lr}
	push {R0-R2}
	bl modifyToolkit_unk7C_using_2008A0 // (int idx_2008A0) -> void
	pop {R0-R2}
	tst R2, R2
	bne loc_8021B00
	mov R0, #0
	pop {r4,pc}
loc_8021B00:
	push {R0-R2}
	ldr R1, off_8021B74 // =0x1E20 
	add r1, r1, r0
	// bitfield
	add r0, r1, #0
	bl setFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> void
	pop {R0-R2}
	push {r2}
	bl chip_8021C7C // (int chip_idx, int searchItem, int off) -> void*
	add r4, r3, #0
	pop {r2}
	bl sub_8021B5A
	push {r3}
	add r1, r4, #0
	bl sub_81376B8
	pop {r3}
	add r0, r3, #0
	pop {r4,pc}
.endfunc // sub_8021AEE

.func
.thumb_func
sub_8021B2A:
	push {lr}
	push {R0-R2}
	bl modifyToolkit_unk7C_using_2008A0 // (int idx_2008A0) -> void
	pop {R0-R2}
	tst R2, R2
	bne loc_8021B3C
	mov R0, #0
	pop {pc}
loc_8021B3C:
	push {R0-R2}
	ldr R1, off_8021B74 // =0x1E20 
	add r1, r1, r0
	// bitfield
	add r0, r1, #0
	bl setFlag_2001C88_bitfield // (u16 entryFlagBitfield) -> void
	pop {R0-R2}
	push {r2}
	bl chip_8021C7C // (int chip_idx, int searchItem, int off) -> void*
	pop {r2}
	bl sub_8021B5A
	add r0, r3, #0
	pop {pc}
.endfunc // sub_8021B2A

.func
.thumb_func
sub_8021B5A:
	mov R3, #1
	ldrb R1, [R0]
	cmp r1, #0x63 
	beq loc_8021B6E
	mov R3, #0
	add r1, r1, r2
	cmp r1, #0x63 
	ble loc_8021B6E
	mov r1, #0x63 
	mov R3, #2
loc_8021B6E:
	strb R1, [R0]
	mov PC, LR
	.balign 4, 0x00
off_8021B74: .word 0x1E20
.endfunc // sub_8021B5A

.func
.thumb_func
// (int idx, int searchItem, int off) -> void*
// [break (E7FE)]
//   When getting an item; like from mayl, or when loading shops
sub_8021B78:
	push {lr}
	push {R0-R2}
	tst R2, R2
	beq loc_8021B84
	bl modifyToolkit_unk7C_using_2008A0 // (int idx_2008A0) -> void
loc_8021B84:
	pop {R0-R2}
	push {r2}
	bl chip_8021C7C // (int chip_idx, int searchItem, int off) -> void*
	pop {r2}
	strb R2, [R0]
	// return itemRef
	pop {pc}
.endfunc // sub_8021B78

.func
.thumb_func
// (int idx, int searchItem, int off) -> void*
sub_8021B92:
	push {r4,lr}
	push {r2}
	bl chip_8021C7C // (int chip_idx, int searchItem, int off) -> void*
	add r4, r3, #0
	pop {r2}
	mov R3, #1
	ldrb R1, [R0]
	tst R1, R1
	beq loc_8021BB0
	mov R3, #0
	sub r1, r1, r2
	bge loc_8021BB0
	mov R3, #2
	add r1, r1, r2
loc_8021BB0:
	strb R1, [R0]
	tst R1, R1
	bne loc_8021BBC
	push {r3}
	add r1, r4, #0
	pop {r3}
loc_8021BBC:
	add r0, r3, #0
	pop {r4,pc}
.endfunc // sub_8021B92

.func
.thumb_func
sub_8021BC0:
	push {r4,lr}
	push {r0,r1}
	bl sub_8006EA4
	pop {r0,r1}
	bne loc_8021BD4
	bl chip_8021C7C // (int chip_idx, int searchItem, int off) -> void*
	ldrb R0, [R0]
	pop {r4,pc}
loc_8021BD4:
	mov R0, #0
	pop {r4,pc}
.endfunc // sub_8021BC0

.func
.thumb_func
sub_8021BD8:
	push {r7,lr}
	push {r0}
	bl sub_8006E84
	pop {r0}
	bne loc_8021BFE
	mov R7, R10
	ldr R7, [R7,#0x4C]
	mov R1, #0xC
	mul R1, R0
	add r7, r7, r1
	ldrb R0, [R7]
	ldrb R1, [R7,#1]
	add r0, r0, r1
	ldrb R1, [R7,#2]
	add r0, r0, r1
	ldrb R1, [R7,#3]
	add r0, r0, r1
	pop {r7,pc}
loc_8021BFE:
	mov R0, #0
	pop {r7,pc}
.endfunc // sub_8021BD8

.func
.thumb_func
sub_8021C02:
	push {R4-R7,lr}
	sub sp, sp, #4
	push {r0,r1}
	mov R2, R10
	ldr R2, [R2,#0x40]
	pop {r0,r1}
	ldrb R2, [R2,#5]
	str R2, [SP]
	mov R4, #0
	mov R5, #0
loc_8021C16:
	mov R7, R10
	ldr R7, [R7,#0x48]
	ldr R6, off_8021C60 // =unk_20018EC 
	ldrb R3, [R6,R4]
	lsr r2, r3, #4
	mov r3, #0x3c 
	mul R3, R2
	add r3, r3, r7
	mov R2, #0
loc_8021C28:
	ldrh R7, [R3,R2]
	ldr R6, dword_8021C64 // =0x1FF 
	and R6, R7
	lsr r7, r7, #9
	cmp R0, R6
	bne loc_8021C48
	cmp R1, R7
	bne loc_8021C48
	push {r0,r1}
	add r0, r6, #0
	add r1, r7, #0
	bl sub_8006EA4
	pop {r0,r1}
	bne loc_8021C48
	add R5, #1
loc_8021C48:
	add R2, #2
	cmp r2, #0x3c 
	blt loc_8021C28
	add R4, #1
	ldr R2, [SP]
	sub R2, #1
	str R2, [SP]
	bne loc_8021C16
	add sp, sp, #4
	add r0, r5, #0
	pop {R4-R7,pc}
	.byte 0, 0
off_8021C60: .word unk_20018EC
dword_8021C64: .word 0x1FF
.endfunc // sub_8021C02

.func
.thumb_func
sub_8021C68:
	push {lr}
	mov R0, R10
	// memBlock
	ldr R0, [R0,#0x4C]
	// size
	ldr R1, dword_8021C78 // =0xF00 
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	pop {pc}
	.balign 4, 0x00
dword_8021C78: .word 0xF00
.endfunc // sub_8021C68

.func
.thumb_func
// (int chip_idx, int searchItem, int off) -> void*
chip_8021C7C:
	push {r4,r7,lr}
	add r2, r0, #0
	push {r1,r2}
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	pop {r1,r2}
	add R0, #0
	mov R3, #0
loc_8021C8C:
	// index of r1_searchItem in r0_ptr or 0
	ldrb R4, [R0,R3]
	cmp R1, R4
	beq loc_8021C9A
	add R3, #1
	cmp R3, #4
	// for 4 items
	blt loc_8021C8C
	mov R3, #0
loc_8021C9A:
	mov R7, R10
	ldr R7, [R7,#0x4C] // Toolkit.unk_2002230
	mov R1, #12
	mul R1, R2
	add r7, r7, r1
	add r0, r7, r3
	// return Toolkit.unk_4C + (12*r2_off) + r3_itemIdx
	pop {r4,r7,pc}
.endfunc // chip_8021C7C

.func
.thumb_func
sub_8021CA8:
	push {R4-R7,lr}
	mov R4, #0
	mov R5, #0
	mov R2, #0
loc_8021CB0:
	// idx
	add r0, r2, #0
	push {r2}
	bl getChip_8021DA8 // (int chip_idx) -> ChipData*
	pop {r2}
	push {r0,r2}
	add r0, r2, #0
	bl sub_8006E84
	pop {r0,r2}
	bne loc_8021CF4
	mov R3, #0
loc_8021CC8:
	ldrb R6, [R0,R3]
	cmp R6, #0xFF
	beq loc_8021CEE
	ldrb R7, [R0,#9]
	mov r1, #0x20 
	tst R7, R1
	bne loc_8021CEE
	mov R7, R10
	ldr R7, [R7,#0x4C]
	mov R1, #0xC
	mul R1, R2
	add r7, r7, r1
	add r1, r7, r3
	ldrb R1, [R1]
	add r4, r4, r1
	ldrb R7, [R0,#7]
	cmp R7, #2
	bne loc_8021CEE
	add r5, r5, r1
loc_8021CEE:
	add R3, #1
	cmp R3, #4
	blt loc_8021CC8
loc_8021CF4:
	add R2, #1
	ldr R1, off_8021D04 // =0x140 
	cmp R2, R1
	blt loc_8021CB0
	add r0, r4, #0
	add r1, r5, #0
	pop {R4-R7,pc}
	.balign 4, 0x00
off_8021D04: .word 0x140
.endfunc // sub_8021CA8

.func
.thumb_func
sub_8021D08:
	push {lr}
	ldr R0, off_8021D94 // =unk_203A0A0 
	ldr R1, off_8021D98 // =0x2E0 
	bl sub_80008C0
	pop {pc}
.endfunc // sub_8021D08

.func
.thumb_func
sub_8021D14:
	push {lr}
	ldr R2, off_8021D9C // =0x170 
	mul R2, R0
	ldr R0, off_8021DA0 // =unk_203A0A0 
	add r0, r0, r2
	ldrb R2, [R0,R1]
	cmp R2, #0xFF
	bge locret_8021D28
	add R2, #1
	strb R2, [R0,R1]
locret_8021D28:
	pop {pc}
.endfunc // sub_8021D14

.func
.thumb_func
sub_8021D2A:
	ldr R2, off_8021D9C // =0x170 
	mul R2, R0
	ldr R0, off_8021DA4 // =unk_203A0A0 
	add r0, r0, r2
	ldrb R0, [R0,R1]
	mov PC, LR
.endfunc // sub_8021D2A

.func
.thumb_func
sub_8021D36:
	push {lr}
	ldr R0, off_8021D6C // =unk_2000AF0 
	mov r1, #0x40 
	bl sub_80008C0
	ldr R0, off_8021D80 // =script_8021D88 
	ldr R1, off_8021D70 // =unk_2001184 
	mov R2, #8
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	ldr R0, off_8021D80 // =script_8021D88 
	ldr R1, off_8021D74 // =unk_200119C 
	mov R2, #8
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	ldr R0, off_8021D84 // =byte_8021D8A 
	ldr R1, dword_8021D78 // =unk_20007D6 
	mov R2, #8
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	ldr R0, off_8021D84 // =byte_8021D8A 
	ldr R1, dword_8021D7C // =unk_200083A 
	mov R2, #8
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	pop {pc}
	.balign 4, 0x00
off_8021D6C: .word unk_2000AF0
off_8021D70: .word unk_2001184
off_8021D74: .word unk_200119C
dword_8021D78: .word 0x20007D6
dword_8021D7C: .word 0x200083A
off_8021D80: .word script_8021D88
off_8021D84: .word byte_8021D8A
script_8021D88:
	// <endpool>
	.byte 0x2, 0x0
.endfunc // sub_8021D36

byte_8021D8A: .byte 0x7E, 0x7E, 0x7E, 0x7E, 0xE6, 0x0, 0x0, 0x0, 0x0, 0x0
off_8021D94: .word unk_203A0A0
off_8021D98: .word 0x2E0
off_8021D9C: .word 0x170
off_8021DA0: .word unk_203A0A0
off_8021DA4:
	// <endfile>
	.word unk_203A0A0
/*For debugging purposes, connect comment at any range!*/
