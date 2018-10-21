.include "asm/asm01.inc"

.func
.thumb_func
sub_801FE00:
	push {lr}
	ldr R3, off_80200B4 // =byte_203F7D8 
	mov R0, #0
	str R0, [R3]
	ldr R3, off_80200B8 // =word_2036780 
	mov R0, #0
	strh R0, [R3,#0x2] // (word_2036782 - 0x2036780)
	mov R0, #0xFF
	strb R0, [R3,#0x4] // (byte_2036784 - 0x2036780)
	ldr R0, off_80200BC // =dword_203F4A0 
	ldr R1, off_80200C0 // =0x200 
	bl CpuFastSet_8000900 // (int a1, int a2) -> void
	ldr R0, off_80200C4 // =dword_203CBE0 
	ldr R1, off_80200C8 // =0x100 
	bl CpuFastSet_8000900 // (int a1, int a2) -> void
	pop {pc}
.endfunc // sub_801FE00

.func
.thumb_func
sub_801FE24:
	push {r4,lr}
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	bne loc_801FE4A
	bl sub_803F524
	beq locret_801FE5C
	mov R0, #0
	bl sub_803DE88
	mov R0, #0x10
	mov R1, #0
	mov R2, #2
	mov R3, #5
	bl sub_803DCE8
	b loc_801FE56
loc_801FE4A:
	mov R0, #0x10
	mov R1, #0
	mov R2, #2
	mov R3, #0
	bl sub_803DCE8
loc_801FE56:
	ldr R3, off_80200CC // =byte_203F7D8 
	mov R0, #1
	strb R0, [R3]
locret_801FE5C:
	pop {r4,pc}
.endfunc // sub_801FE24

.func
.thumb_func
sub_801FE5E:
	ldr R3, off_80200D0 // =byte_203F7D8 
	ldrb R0, [R3]
	mov PC, LR
.endfunc // sub_801FE5E

.func
.thumb_func
sub_801FE64:
	ldr R1, off_80200D4 // =byte_203F7D8 
	mov R0, #0
	strb R0, [R1]
	mov PC, LR
.endfunc // sub_801FE64

.func
.thumb_func
sub_801FE6C:
	push {r4,r6,lr}
	ldr R4, off_80200D8 // =byte_203F7D8 
	ldrb R6, [R4,#0x1] // (byte_203F7D8+1 - 0x203F7D8)
	mov R0, #2
	strb R0, [R4,#0x1] // (byte_203F7D8+1 - 0x203F7D8)
	ldrb R0, [R4]
	tst R0, R0
	beq loc_801FED2
	// entryIdx
	mov R0, #0x17
	// byteFlagIdx
	mov r1, #0x2d 
	bl isActiveFlag_2001C88_entry // (int entryIdx, int byteFlagIdx) -> zf
	beq loc_801FEB6
	strb R6, [R4,#0x1] // (byte_203F7D8+1 - 0x203F7D8)
	ldrb R0, [R4,#0x1] // (byte_203F7D8+1 - 0x203F7D8)
	cmp R0, #2
	bne locret_801FEE6
	push {r5}
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	pop {r5}
	beq locret_801FEE6
	mov R0, #0
	bl sub_8144D04
	cmp R0, #1
	bne loc_801FEB0
	mov R0, #3
	bl sub_8144D04
	cmp R0, #1
	beq locret_801FEE6
loc_801FEB0:
	mov R0, #4
	strb R0, [R4,#0x1] // (byte_203F7D8+1 - 0x203F7D8)
	b locret_801FEE6
loc_801FEB6:
	push {r5}
	bl get_802D246 // () -> int
	mov R1, #8
	tst R0, R1
	pop {r5}
	bne loc_801FECC
	bl sub_803DEB4
	strb R0, [R4,#0x1] // (byte_203F7D8+1 - 0x203F7D8)
	b locret_801FEE6
loc_801FECC:
	strb R6, [R4,#0x1] // (byte_203F7D8+1 - 0x203F7D8)
	ldrb R0, [R4,#0x1] // (byte_203F7D8+1 - 0x203F7D8)
	b locret_801FEE6
loc_801FED2:
	ldr R0, off_80200DC // =word_2036780 
	ldr R1, off_80200E0 // =unk_20399F0 
	mov R2, #0x10
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
	ldr R0, off_80200E4 // =word_2036780 
	ldr R1, off_80200E8 // =unk_2039A00 
	mov R2, #0x10
	bl CpuSet_copyWords // (u32 *src, u32 *dest, int size) -> void
locret_801FEE6:
	pop {r4,r6,pc}
.endfunc // sub_801FE6C

.func
.thumb_func
sub_801FEE8:
	ldr R0, off_80200EC // =byte_203F7D8 
	ldrb R0, [R0,#0x1] // (byte_203F7D8+1 - 0x203F7D8)
	mov PC, LR
.endfunc // sub_801FEE8

loc_801FEEE:
	push {R4-R7,lr}
	add r7, r0, #0
	bl sub_803EA60
	ldr R1, off_801FF04 // =off_801FF08 
	ldr R2, [R1,R0]
	add r0, r7, #0
	mov LR, PC
	bx r2
	pop {R4-R7,pc}
	.balign 4, 0x00
off_801FF04: .word off_801FF08
off_801FF08: .word sub_801FF18+1
	.word sub_801FFD6+1
	.word sub_801FFD6+1
	.word sub_801FF18+1
.func
.thumb_func
sub_801FF18:
	push {R4-R7,lr}
	sub sp, sp, #4
	cmp R0, #2
	bne loc_801FFD2
	ldr R4, off_80200F0 // =byte_203F7D8 
	ldr R5, off_80200F4 // =unk_20399F0 
	mov R6, R10
	ldr R6, [R6,#0x18]
	ldr R7, off_80200F8 // =dword_203F4A0 
	ldrh R1, [R5,#0x2] // (word_20399F2 - 0x20399F0)
	mov R2, #0xFC
	lsl r2, r2, #8
	and R2, R1
	beq loc_801FF52
	mov R0, #0
	bl sub_800A0D6
	ldrb R1, [R5,#0x6] // (byte_20399F6 - 0x20399F0)
	strb R1, [R6,#0x14]
	ldrh R1, [R5,#0xC] // (word_20399FC - 0x20399F0)
	ldr R0, off_80200FC // =unk_2036120 
	strh R1, [R0,#0x2C] // (word_203614C - 0x2036120)
	mov R0, #0x4 // (byte_20399F4 - 0x20399F0)
	ldrsb R0, [R5,R0]
	tst R0, R0
	blt loc_801FF52
	lsl r0, r0, #2
	ldr R1, [R5,#0x8] // (dword_20399F8 - 0x20399F0)
	str R1, [R7,R0]
loc_801FF52:
	add R5, #0x10
	ldr R7, off_8020100 // =dword_203F5A0 
	ldrb R1, [R4]
	tst R1, R1
	beq loc_801FF66
	ldrh R1, [R5,#0x2] // (word_2039A02 - 0x2039A00)
	mov R2, #0xFC
	lsl r2, r2, #8
	and R2, R1
	beq loc_801FF84
loc_801FF66:
	mov R0, #1
	bl sub_800A0D6
	ldrb R1, [R5,#0x6] // (byte_2039A06 - 0x2039A00)
	strb R1, [R6,#0x15]
	ldrh R1, [R5,#0xC] // (word_2039A0C - 0x2039A00)
	ldr R0, off_8020104 // =unk_20362F0 
	strh R1, [R0,#0x2C] // (word_203631C - 0x20362F0)
	mov R0, #0x4 // (byte_2039A04 - 0x2039A00)
	ldrsb R0, [R5,R0]
	tst R0, R0
	blt loc_801FF84
	lsl r0, r0, #2
	ldr R1, [R5,#0x8] // (dword_2039A08 - 0x2039A00)
	str R1, [R7,R0]
loc_801FF84:
	ldr R5, off_8020108 // =word_2036780 
	mov R0, R10
	ldr R0, [R0,#4]
	ldrh R1, [R0]
	strh R1, [R5,#0x2] // (word_2036782 - 0x2036780)
	str R1, [SP]
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R1, [R0,#0x11]
	strb R1, [R5,#0x6] // (byte_2036786 - 0x2036780)
	mov R0, #4
	bl sub_803F740
	strh R0, [R5,#0xC] // (word_203678C - 0x2036780)
	ldrb R0, [R4,#0x2] // (byte_203F7D8+2 - 0x203F7D8)
	mov R1, #1
	tst R0, R1
	beq loc_801FFC6
	bl sub_803EA2C
	tst R0, R0
	bne loc_801FFD2
	mov R0, #0x3 // (byte_203F7D8+3 - 0x203F7D8)
	ldrsb R0, [R4,R0]
	sub R0, #1
	strb R0, [R4,#0x3] // (byte_203F7D8+3 - 0x203F7D8)
	blt loc_801FFC6
	strb R0, [R5,#0x4] // (byte_2036784 - 0x2036780)
	lsl r0, r0, #2
	ldr R1, off_802010C // =dword_203CBE0 
	ldr R0, [R0,R1]
	str R0, [R5,#0x8] // (dword_2036788 - 0x2036780)
	b loc_801FFD2
loc_801FFC6:
	ldrb R0, [R4,#0x2] // (byte_203F7D8+2 - 0x203F7D8)
	mov R1, #1
	bic R0, R1
	strb R0, [R4,#0x2] // (byte_203F7D8+2 - 0x203F7D8)
	mov R0, #0xFF
	strb R0, [R5,#0x4] // (byte_2036784 - 0x2036780)
loc_801FFD2:
	add sp, sp, #4
	pop {R4-R7,pc}
.endfunc // sub_801FF18

.func
.thumb_func
sub_801FFD6:
	push {R4-R7,lr}
	sub sp, sp, #8
	str R0, [SP,#4]
	cmp R0, #1
	beq loc_80200A0
	mov R1, #8
	tst R0, R1
	beq loc_801FFEA
	nop 
	b loc_802004E
loc_801FFEA:
	ldr R4, off_8020110 // =byte_203F7D8 
	ldr R5, off_8020114 // =unk_20399F0 
	mov R6, R10
	ldr R6, [R6,#0x18]
	ldr R7, off_8020118 // =dword_203F4A0 
	ldrh R1, [R5,#0x2] // (word_20399F2 - 0x20399F0)
	mov R2, #0xFC
	lsl r2, r2, #8
	and R2, R1
	beq loc_802001C
	mov R0, #0
	bl sub_800A0D6
	ldrb R1, [R5,#0x6] // (byte_20399F6 - 0x20399F0)
	strb R1, [R6,#0x14]
	ldrh R1, [R5,#0xC] // (word_20399FC - 0x20399F0)
	ldr R0, off_802011C // =unk_2036120 
	strh R1, [R0,#0x2C] // (word_203614C - 0x2036120)
	mov R0, #0x4 // (byte_20399F4 - 0x20399F0)
	ldrsb R0, [R5,R0]
	tst R0, R0
	blt loc_802001C
	lsl r0, r0, #2
	ldr R1, [R5,#0x8] // (dword_20399F8 - 0x20399F0)
	str R1, [R7,R0]
loc_802001C:
	add R5, #0x10
	ldr R7, off_8020120 // =dword_203F5A0 
	ldrb R1, [R4]
	tst R1, R1
	beq loc_8020030
	ldrh R1, [R5,#0x2] // (word_2039A02 - 0x2039A00)
	mov R2, #0xFC
	lsl r2, r2, #8
	and R2, R1
	beq loc_802004E
loc_8020030:
	mov R0, #1
	bl sub_800A0D6
	ldrb R1, [R5,#0x6] // (byte_2039A06 - 0x2039A00)
	strb R1, [R6,#0x15]
	ldrh R1, [R5,#0xC] // (word_2039A0C - 0x2039A00)
	ldr R0, off_8020124 // =unk_20362F0 
	strh R1, [R0,#0x2C] // (word_203631C - 0x20362F0)
	mov R0, #0x4 // (byte_2039A04 - 0x2039A00)
	ldrsb R0, [R5,R0]
	tst R0, R0
	blt loc_802004E
	lsl r0, r0, #2
	ldr R1, [R5,#0x8] // (dword_2039A08 - 0x2039A00)
	str R1, [R7,R0]
loc_802004E:
	ldr R1, [SP,#4]
	mov R2, #0x10
	tst R1, R2
	beq loc_802005A
	nop 
	b loc_80200A0
loc_802005A:
	ldr R5, off_8020128 // =word_2036780 
	mov R0, R10
	ldr R0, [R0,#4]
	ldrh R1, [R0]
	strh R1, [R5,#0x2] // (word_2036782 - 0x2036780)
	str R1, [SP]
	mov R0, R10
	ldr R0, [R0,#0x18]
	ldrb R1, [R0,#0x11]
	strb R1, [R5,#0x6] // (byte_2036786 - 0x2036780)
	mov R0, #4
	bl sub_803F740
	strh R0, [R5,#0xC] // (word_203678C - 0x2036780)
	ldrb R0, [R4,#2]
	mov R1, #1
	tst R0, R1
	beq loc_8020094
	mov R0, #3
	ldrsb R0, [R4,R0]
	sub R0, #1
	strb R0, [R4,#3]
	blt loc_8020094
	strb R0, [R5,#0x4] // (byte_2036784 - 0x2036780)
	lsl r0, r0, #2
	ldr R1, off_802012C // =dword_203CBE0 
	ldr R0, [R0,R1]
	str R0, [R5,#0x8] // (dword_2036788 - 0x2036780)
	b loc_80200A0
loc_8020094:
	ldrb R0, [R4,#2]
	mov R1, #1
	bic R0, R1
	strb R0, [R4,#2]
	mov R0, #0xFF
	strb R0, [R5,#0x4] // (byte_2036784 - 0x2036780)
loc_80200A0:
	add sp, sp, #8
	pop {R4-R7,pc}
.endfunc // sub_801FFD6

.func
.thumb_func
sub_80200A4:
	ldr R3, off_8020130 // =byte_203F7D8 
	strb R0, [R3,#0x3] // (byte_203F7D8+3 - 0x203F7D8)
	ldrb R0, [R3,#0x2] // (byte_203F7D8+2 - 0x203F7D8)
	mov R1, #1
	orr R0, R1
	strb R0, [R3,#0x2] // (byte_203F7D8+2 - 0x203F7D8)
	mov PC, LR
	.balign 4, 0x00
off_80200B4: .word byte_203F7D8
off_80200B8: .word word_2036780
off_80200BC: .word dword_203F4A0
off_80200C0: .word 0x200
off_80200C4: .word dword_203CBE0
off_80200C8: .word 0x100
off_80200CC: .word byte_203F7D8
off_80200D0: .word byte_203F7D8
off_80200D4: .word byte_203F7D8
off_80200D8: .word byte_203F7D8
off_80200DC: .word word_2036780
off_80200E0: .word unk_20399F0
off_80200E4: .word word_2036780
off_80200E8: .word unk_2039A00
off_80200EC: .word byte_203F7D8
off_80200F0: .word byte_203F7D8
off_80200F4: .word unk_20399F0
off_80200F8: .word dword_203F4A0
off_80200FC: .word unk_2036120
off_8020100: .word dword_203F5A0
off_8020104: .word unk_20362F0
off_8020108: .word word_2036780
off_802010C: .word dword_203CBE0
off_8020110: .word byte_203F7D8
off_8020114: .word unk_20399F0
off_8020118: .word dword_203F4A0
off_802011C: .word unk_2036120
off_8020120: .word dword_203F5A0
off_8020124: .word unk_20362F0
off_8020128: .word word_2036780
off_802012C: .word dword_203CBE0
off_8020130: .word byte_203F7D8
.endfunc // sub_80200A4

.func
.thumb_func
sub_8020134:
	push {lr}
	// memBlock
	ldr R0, off_8020164 // =unk_2038160 
	// size
	mov R1, #4
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	pop {pc}
.endfunc // sub_8020134

.func
.thumb_func
sub_8020140:
	push {r7,lr}
	bl sub_813D60C
	beq locret_802015C
	bl sub_803EA60
	cmp R0, #0xC
	bne locret_802015C
	ldr R7, off_8020168 // =unk_2038160 
	bl sub_813D66C
	bl sub_803C620
	strb R0, [R7,#0x1] // (byte_2038161 - 0x2038160)
locret_802015C:
	pop {r7,pc}
.endfunc // sub_8020140

.func
.thumb_func
sub_802015E:
	ldr R0, off_802016C // =unk_2038160 
	ldrb R0, [R0,#0x1] // (byte_2038161 - 0x2038160)
	// <endpool>
	mov PC, LR
.endfunc // sub_802015E

off_8020164: .word unk_2038160
off_8020168: .word unk_2038160
off_802016C: .word unk_2038160
off_8020170: .word off_8020190
off_8020174: .word off_80201E4
off_8020178: .word off_8020190
off_802017C: .word pt_8020240
off_8020180: .word off_8020190
off_8020184: .word pt_802029C
off_8020188: .word off_8020190
off_802018C: .word off_80202F8
off_8020190: .word off_80B1B7C
	.word off_80B1B7C
	.word off_80B1B7C
	.word off_80B1B7C
	.word off_80B1B7C
	.word off_80B1B7C
	.word off_80B1B7C
	.word off_80B1B7C
	.word off_80B1B7C
	.word off_80B1B7C
	.word off_80B1B7C
	.word off_80B1B7C
	.word off_80B1B7C
	.word off_80B1B7C
	.word off_80B1B7C
	.word off_80B1B7C
	.word off_80B1B7C
	.word off_80B1B7C
	.word off_80B1B7C
	.word off_80B1B7C
	.word off_80B1B7C
off_80201E4: .word off_80B1B7C
	.word off_80B1ED8
	.word off_80B23C8
	.word off_80B29CC
	.word off_80B1B7C
	.word off_80B2EDC
	.word off_80B1B7C
	.word off_80B1B7C
	.word off_80B36BC
	.word off_80B1B7C
	.word off_80B1B7C
	.word off_80B1B7C
	.word off_80B3970
	.word off_80B41E4
	.word off_80B1B7C
	.word off_80B1B7C
	.word off_80B4AB8
	.word off_80B5A0C
	.word off_80B62F8
	.word off_80B66A8
	.word off_80B6C20
	.word off_80B71D4
	.word off_80B79C0
pt_8020240: .word off_80B1B7C
	.word off_80B1ED8
	.word off_80B23C8
	.word off_80B29CC
	.word off_80B1B7C
	.word off_80B2EDC
	.word off_80B1B7C
	.word off_80B1B7C
	.word off_80B36BC
	.word off_80B1B7C
	.word off_80B1B7C
	.word off_80B1B7C
	.word off_80B3970
	.word off_80B41E4
	.word off_80B1B7C
	.word off_80B1B7C
	.word off_80B4AF8
	.word off_80B5A0C
	.word off_80B62F8
	.word off_80B66A8
	.word off_80B6C20
	.word off_80B71D4
	.word off_80B79C0
pt_802029C: .word off_80B1B7C
	.word off_80B1ED8
	.word off_80B23C8
	.word off_80B29CC
	.word off_80B1B7C
	.word off_80B2EDC
	.word off_80B1B7C
	.word off_80B1B7C
	.word off_80B36BC
	.word off_80B1B7C
	.word off_80B1B7C
	.word off_80B1B7C
	.word off_80B3970
	.word off_80B41E4
	.word off_80B1B7C
	.word off_80B1B7C
	.word off_80B4AB8
	.word off_80B5A4C
	.word off_80B62F8
	.word off_80B66A8
	.word off_80B6C20
	.word off_80B71D4
	.word off_80B79C0
off_80202F8: .word off_80B1B7C
	.word off_80B1ED8
	.word off_80B23C8
	.word off_80B29CC
	.word off_80B1B7C
	.word off_80B2EDC
	.word off_80B1B7C
	.word off_80B1B7C
	.word off_80B36BC
	.word off_80B1B7C
	.word off_80B1B7C
	.word off_80B1B7C
	.word off_80B3970
	.word off_80B41E4
	.word off_80B1B7C
	.word off_80B1B7C
	.word off_80B4B38
	.word off_80B5A0C
	.word off_80B62F8
	.word off_80B66A8
	.word off_80B6C20
	.word off_80B71D4
	// <endfile>
	.word off_80B79C0
/*For debugging purposes, connect comment at any range!*/
