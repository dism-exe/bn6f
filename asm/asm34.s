.include "asm/asm34.inc"

.func
.thumb_func
sub_812D378:
	push {R4-R7,lr}
	// j
	mov R0, #0
	// i
	mov R1, #0
	// cpyOff
	mov R2, #1
	// tileRefs
	ldr R3, off_812D3A0 // =unk_201D620 
	mov R4, #0x1E
	mov R5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	mov R0, #0x1E
	neg R0, R0
	// i
	mov R1, #2
	// cpyOff
	mov R2, #1
	// tileRefs
	ldr R3, off_812D3A4 // =unk_201DB20 
	mov r4, #0x3c 
	mov R5, #0x11
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {R4-R7,pc}
	.byte 0, 0
off_812D3A0: .word unk_201D620
off_812D3A4: .word unk_201DB20
.endfunc // sub_812D378

	push {lr}
	ldr R0, off_812D3DC // =word_2023FA0 
	mov r1, #0x20 
	bl CpuFastSet_8000900 // (int a1, int a2) -> void
	bl sub_8120A88
	ldr R0, off_812D3E0 // =unk_2023FC0 
	mov R1, #1
	bl sub_811FE7C
	add R0, #1
	strh R0, [R7,#0x28]
	add r1, r0, #0
	ldr R0, off_812D3E0 // =unk_2023FC0 
	mov R2, #5
	mov R3, #4
	bl loc_8120018
	mov R1, R10
	ldr R1, [R1,#0x40]
	mov R0, #5
	strb R0, [R1,#2]
	mov R0, #4
	strb R0, [R1,#3]
	pop {pc}
off_812D3DC: .word word_2023FA0
off_812D3E0: .word unk_2023FC0
	push {R4-R7,lr}
	bl sub_812D6F8
	add r7, r0, #0
	ldrh R0, [R7,#0x2E]
	ldr R1, off_812D4C4 // =word_2023FA0 
	ldr R2, off_812D4C8 // =unk_202DFA0 
	mov R3, #0xA
	mov R5, #7
	bl sub_8120194
	mov R0, #3
	mov R1, #4
	mov R2, #2
	ldr R3, off_812D4C8 // =unk_202DFA0 
	mov R4, #8
	mov R5, #0xE
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	ldrh R0, [R7,#0x2E]
	ldr R1, off_812D4C4 // =word_2023FA0 
	ldr R2, off_812D4CC // =unk_202E080 
	ldr R3, off_812D4D0 // =dword_812C258+48 
	ldr R4, dword_812D4D4 // =0x6007600 
	mov R5, #7
	bl sub_8120390
	mov R0, #1
	mov R1, #4
	mov R2, #2
	ldr R3, off_812D4CC // =unk_202E080 
	mov R4, #2
	mov R5, #0xE
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	ldrh R0, [R7,#0x2E]
	ldr R1, off_812D4C4 // =word_2023FA0 
	ldr R2, off_812D4D8 // =unk_202E0B8 
	mov R3, #9
	lsl r3, r3, #0xc
	ldr R4, off_812D4DC // =0x35C 
	orr R3, R4
	ldr R4, dword_812D4E0 // =0x6006B80 
	mov R5, #7
	bl sub_81203E4
	mov R0, #0xB
	mov R1, #4
	mov R2, #2
	ldr R3, off_812D4D8 // =unk_202E0B8 
	mov R4, #2
	mov R5, #0xE
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	ldrh R0, [R7,#0x2E]
	ldr R1, off_812D4C4 // =word_2023FA0 
	ldr R2, off_812D4E4 // =unk_202E0F0 
	mov R3, #0xA
	lsl r3, r3, #0xc
	ldr R4, dword_812D4E8 // =0x216 
	orr R3, R4
	mov R5, #7
	bl sub_8120458
	mov R0, #0xD
	mov R1, #4
	mov R2, #2
	ldr R3, off_812D4E4 // =unk_202E0F0 
	mov R4, #1
	mov R5, #0xE
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	ldrh R0, [R7,#0x2E]
	ldr R1, off_812D4C4 // =word_2023FA0 
	ldr R2, off_812D4EC // =byte_202E10C 
	mov R3, #8
	lsl r3, r3, #0xc
	ldr R4, dword_812D4F0 // =0x34F 
	orr R3, R4
	mov R5, #7
	bl sub_81204C4
	mov R0, #0xE
	mov R1, #4
	mov R2, #2
	ldr R3, off_812D4EC // =byte_202E10C 
	mov R4, #2
	mov R5, #0xE
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	ldrh R0, [R7,#0x2E]
	ldr R1, off_812D4C4 // =word_2023FA0 
	ldr R2, off_812D4F4 // =byte_202E144 
	mov R3, #0xA
	lsl r3, r3, #0xc
	ldr R4, byte_812D4F8 // =0x0 
	orr R3, R4
	mov R5, #7
	bl sub_8120618
	mov R0, #0x10
	mov R1, #4
	mov R2, #2
	ldr R3, off_812D4F4 // =byte_202E144 
	mov R4, #2
	mov R5, #0xE
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	bl sub_812D5EC
	pop {R4-R7,pc}
	.balign 4, 0x00
off_812D4C4: .word word_2023FA0
off_812D4C8: .word unk_202DFA0
off_812D4CC: .word unk_202E080
off_812D4D0: .word dword_812C258+0x30
dword_812D4D4: .word 0x6007600
off_812D4D8: .word unk_202E0B8
off_812D4DC: .word 0x35C
dword_812D4E0: .word 0x6006B80
off_812D4E4: .word unk_202E0F0
dword_812D4E8: .word 0x216
off_812D4EC: .word byte_202E10C
dword_812D4F0: .word 0x34F
off_812D4F4: .word byte_202E144
byte_812D4F8: .byte 0x0, 0x2, 0x0, 0x0
.func
.thumb_func
sub_812D4FC:
	push {R4-R7,lr}
	bl sub_812D6F8
	add r5, r0, #0
	mov R0, #2
	mov r1, #0x20 
	mov r2, #0x2a 
	mov R3, #0x13
	ldr R4, off_812D51C // =dword_8129178 
	ldr R6, dword_812D524 // =0x40000000 
	ldr R7, dword_812D520 // =0x20002 
	bl sub_812D600
	bl sub_812D9F0
	pop {R4-R7,pc}
off_812D51C: .word dword_8129178
dword_812D520: .word 0x20002
dword_812D524: .word 0x40000000
.endfunc // sub_812D4FC

	push {R4-R7,lr}
	mov R2, #0xC6
	b loc_812D532
.func
.thumb_func
sub_812D52E:
	push {R4-R7,lr}
	mov r2, #0x30 
loc_812D532:
	mov R1, #0
	push {r1,r2}
	add r0, r1, #0
	bl sub_80466C4
	pop {r1,r2}
	bne locret_812D546
	ldr R0, off_812D548 // =dword_812C258 
	bl sub_812D56C
locret_812D546:
	pop {R4-R7,pc}
off_812D548: .word dword_812C258
.endfunc // sub_812D52E

.func
.thumb_func
sub_812D54C:
	push {R4-R7,lr}
	mov R1, #3
	push {r1}
	add r0, r1, #0
	bl sub_80466C4
	pop {r1}
	bne locret_812D564
	mov R2, #0xC0
	ldr R0, off_812D568 // =dword_812C258+16 
	bl sub_812D56C
locret_812D564:
	pop {R4-R7,pc}
	.balign 4, 0x00
off_812D568: .word dword_812C258+0x10
.endfunc // sub_812D54C

.func
.thumb_func
sub_812D56C:
	push {R4-R7,lr}
	sub sp, sp, #4
	str R2, [SP]
	add r6, r1, #0
	add r4, r6, #2
	bl sub_80465A0 // (void *a1) -> void
loc_812D57A:
	add r0, r6, #0
	bl sub_80466C4
	beq loc_812D594
	tst R6, R6
	bne loc_812D588
	add r7, r1, #0
loc_812D588:
	add r5, r1, #0
	ldr R0, [SP]
	mov r1, #0x58 
	bl sub_800307C
	str R7, [R5,#0x14]
loc_812D594:
	add R6, #1
	cmp R6, R4
	ble loc_812D57A
	add sp, sp, #4
	pop {R4-R7,pc}
	.byte 0, 0
.endfunc // sub_812D56C

.func
.thumb_func
sub_812D5A0:
	push {R4-R7,lr}
	bl sub_812D6F8
	add r5, r0, #0
	ldr R0, off_812D5CC // =word_2023FA0 
	ldrh R4, [R5,#0x2A]
	ldrh R1, [R5,#0x2E]
	add r4, r4, r1
	mov r1, #0x20 
	mul R1, R4
	add r0, r0, r1
	ldr R2, [R0,#0x1C]
	lsl r0, r2, #0x10
	lsr r0, r0, #0x17
	mov R1, #0x7F
	and R1, R2
	mov R2, #0
	add r3, r4, #0
	bl sub_811980C
	pop {R4-R7,pc}
	.balign 4, 0x00
off_812D5CC: .word word_2023FA0
.endfunc // sub_812D5A0

.func
.thumb_func
sub_812D5D0:
	push {R4-R7,lr}
	add r3, r2, #0
	add r2, r1, #0
	add r1, r0, #0
	lsl r0, r0, #0x17
	lsr r0, r0, #0x17
	add r4, r0, #0
	lsl r1, r1, #0x11
	lsr r1, r1, #0x1a
	bl sub_811980C
	add r0, r4, #0
	pop {R4-R7,pc}
	.balign 4, 0x00
.endfunc // sub_812D5D0

.func
.thumb_func
sub_812D5EC:
	push {R4-R7,lr}
	bl sub_812D6F8
	add r7, r0, #0
	mov R0, #0xC6
	mov r1, #0x58 
	mov R2, #0
	bl sub_8119854
	pop {R4-R7,pc}
.endfunc // sub_812D5EC

.func
.thumb_func
sub_812D600:
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
	bne loc_812D61C
	mov R2, #0
	b loc_812D61E
loc_812D61C:
	ldrh R2, [R5,R3]
loc_812D61E:
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
	bne loc_812D64C
	ldr R1, off_812D664 // =dword_8129180 
	bl sub_8120CC8
	ldr R2, [SP,#8]
	strb R0, [R5,R2]
loc_812D64C:
	ldr R2, [SP,#8]
	ldrb R0, [R5,R2]
	mov R3, #0xF
	and R0, R3
	lsl r1, r1, #4
	orr R0, R1
	strb R0, [R5,R2]
	add sp, sp, #0x1c
	pop {R4-R7,pc}
	.byte 0, 0
	.word dword_8129178
off_812D664: .word dword_8129180
.endfunc // sub_812D600

.func
.thumb_func
sub_812D668:
	push {R4-R7,lr}
	bl sub_812D6F8
	add r5, r0, #0
	mov R0, #0xA4
	mov r1, #0x20 
	mov r2, #0x34 
	mov R3, #0x15
	ldr R4, off_812D684 // =dword_8129178 
	ldr R6, dword_812D68C // =0x40000000 
	ldr R7, dword_812D688 // =0x2 
	bl sub_812D600
	pop {R4-R7,pc}
off_812D684: .word dword_8129178
dword_812D688: .word 0x2
dword_812D68C: .word 0x40000000
.endfunc // sub_812D668

	push {R4-R7,lr}
	bl sub_812D6F8
	add r7, r0, #0
	ldrh R0, [R7,#0x28]
	tst R0, R0
	beq loc_812D6C4
	ldrh R0, [R5,#0x26]
	cmp R0, #4
	beq locret_812D6F4
	cmp R0, #8
	beq locret_812D6F4
	bl sub_812D700
	bne locret_812D6F4
	push {r5,r7}
	add r5, r7, #0
	mov R0, R10
	ldr R0, [R0,#4]
	ldrh R0, [R0,#4]
	mov R1, #7
	mov R2, #0
	mov R3, #0xA
	bl sub_811F7F8
	pop {r5,r7}
loc_812D6C4:
	mov R0, #2
	bl sub_811F7EC
	bne loc_812D6DC
	mov R0, #1
	bl sub_811F7EC
	beq locret_812D6F4
	mov R1, #4
	ldrb R0, [R5,#0x11]
	tst R0, R0
	beq loc_812D6E6
loc_812D6DC:
	ldrb R1, [R5,#0x1B]
	mov R0, #1
	orr R1, R0
	strb R1, [R5,#0x1B]
	mov R1, #8
loc_812D6E6:
	strh R1, [R5,#0x26]
	mov R0, #0x81
	cmp R1, #4
	beq loc_812D6F0
	mov R0, #0x83
loc_812D6F0:
	bl sound_play // () -> void
locret_812D6F4:
	pop {R4-R7,pc}
	.balign 4, 0x00
.func
.thumb_func
sub_812D6F8:
	ldr R0, off_812D6FC // =unk_2037780 
	mov PC, LR
off_812D6FC: .word unk_2037780
.endfunc // sub_812D6F8

.func
.thumb_func
sub_812D700:
	push {r7,lr}
	bl sub_812D6F8
	add r7, r0, #0
	mov R0, #8
	bl sub_811F7EC
	bne loc_812D71E
	ldrb R0, [R5,#2]
	cmp r0, #0x20 
	bne loc_812D742
	mov R0, #2
	bl sub_811F7EC
	beq locret_812D746
loc_812D71E:
	ldrb R0, [R5,#2]
	cmp r0, #0x20 
	bne loc_812D730
	ldrb R0, [R7,#0xD]
	strb R0, [R5,#2]
	mov R0, #0x83
	bl sound_play // () -> void
	b locret_812D746
loc_812D730:
	strb R0, [R7,#0xD]
	mov r0, #0x20 
	strb R0, [R5,#2]
	mov R0, #0
	strh R0, [R7,#0x34]
	mov R0, #0x81
	bl sound_play // () -> void
	b locret_812D746
loc_812D742:
	mov R0, #0
	tst R0, R0
locret_812D746:
	pop {r7,pc}
.endfunc // sub_812D700

	push {r7,lr}
	bl sub_812D6F8
	add r7, r0, #0
	bl sub_812D700
	bne locret_812D776
	bl sub_812D7A4
	bne loc_812D76E
	mov R0, R10
	ldr R0, [R0,#4]
	ldrh R0, [R0,#4]
	mov R1, #7
	mov R2, #1
	ldrh R3, [R7,#0x34]
	bl sub_811FA22
	strh R0, [R7,#0x34]
loc_812D76E:
	bl sub_812D78C
	bl sub_812D668
locret_812D776:
	pop {r7,pc}
	push {lr}
	ldrb R0, [R5,#2]
	cmp r0, #0x20 
	bne locret_812D788
	bl sub_812D78C
	bl sub_812D668
locret_812D788:
	pop {pc}
	.balign 4, 0x00
.func
.thumb_func
sub_812D78C:
	push {R4-R7,lr}
	// j
	mov R0, #0x15
	// i
	mov R1, #2
	// cpyOff
	mov R2, #0
	// tileRefs
	ldr R3, off_812D7A0 // =unk_20227A0 
	mov R4, #8
	mov R5, #0x11
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
.endfunc // sub_812D78C

	pop {R4-R7,pc}
off_812D7A0: .word unk_20227A0
.func
.thumb_func
sub_812D7A4:
	push {R4-R7,lr}
	sub sp, sp, #4
	str R5, [SP]
	bl sub_812D6F8
	add r5, r0, #0
	mov R0, #1
	bl sub_811F7EC
	bne loc_812D7BA
	b loc_812D800
loc_812D7BA:
	mov R0, #0x81
	bl sound_play // () -> void
	mov R0, R10
	ldr R0, [R0,#0x40]
	ldrh R2, [R5,#0x34]
	mov R1, #2
	mov R4, #3
	ldrb R3, [R0,R1]
	strb R2, [R0,R1]
	cmp R2, R3
	beq loc_812D7DE
	ldr R1, dword_812D808 // = 
	ldrb R3, [R1,R2]
	mov R1, #4
	eor R3, R1
	strb R3, [R0,R4]
	b loc_812D7E6
loc_812D7DE:
	ldrb R3, [R0,R4]
	mov R1, #4
	eor R3, R1
	strb R3, [R0,R4]
loc_812D7E6:
	ldr R0, off_812D80C // =unk_2023FC0 
	ldrh R1, [R5,#0x28]
	sub R1, #1
	beq loc_812D7F6
	bl loc_8120018
	bl sub_812D5A0
loc_812D7F6:
	mov R6, #0
	mov R7, #0
	mov R0, #1
	tst R0, R0
	b loc_812D804
loc_812D800:
	mov R0, #0
	tst R0, R0
loc_812D804:
	add sp, sp, #4
	pop {R4-R7,pc}
dword_812D808: .word 0x30069A0
off_812D80C: .word unk_2023FC0
	.word 0x64
.endfunc // sub_812D7A4

	push {lr}
	bl sub_812D6F8
	ldr R1, [R0,#0x6C]
	tst R1, R1
	beq locret_812D82E
	sub R1, #1
	str R1, [R0,#0x6C]
	bne locret_812D82E
	bl chatbox_8040818
	mov R0, #0
	tst R0, R0
locret_812D82E:
	pop {pc}
	push {lr}
	bl sub_812D6F8
	ldr R1, [R0,#0x6C]
	tst R1, R1
	pop {pc}
	push {lr}
	ldr R0, [R5,#0x6C]
	tst R0, R0
	bne locret_812D84E
	ldr R0, off_812D850 // =0x64 
	str R0, [R5,#0x6C]
	mov r0, #0x41 
	bl sub_8132280
locret_812D84E:
	pop {pc}
off_812D850: .word 0x64
	push {lr}
	bl sub_812D6F8
	add r1, r0, #0
	ldrh R0, [R1,#0x2E]
	ldrh R2, [R1,#0x2A]
	add r0, r0, r2
	ldr R1, off_812D87C // =word_2023FA0 
	lsl r0, r0, #5
	add r1, r1, r0
	ldrh R0, [R1,#0x1C]
	lsr r1, r0, #7
	mov R2, #0x7F
	and R0, R2
	lsl r0, r0, #9
	orr R0, R1
	mov R2, #0x80
	lsl r2, r2, #8
	orr R0, R2
	pop {pc}
off_812D87C: .word word_2023FA0
	push {lr}
	bl sub_80062C8
	cmp R0, #0xC
	bne loc_812D892
	mov R0, #8
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
loc_812D892:
	ldrb R0, [R5,#2]
	strb R0, [R5,#0x16]
	mov R0, #0x1C
	strb R0, [R5,#2]
	mov R0, #0
	strb R0, [R5,#0xC]
	strb R0, [R5,#3]
	ldrb R1, [R5,#0x1B]
	mov R0, #1
	tst R1, R0
	bne loc_812D8BC
	mov r1, #0x40 
	bl sub_803EBF4
	ldrb R0, [R0,#0xE]
	cmp R0, #2
	bne loc_812D8B6
	mov r1, #0x30 
loc_812D8B6:
	add r0, r1, #0
	bl sub_8132280
loc_812D8BC:
	ldrb R0, [R5,#0x16]
	cmp R0, #0
	beq locret_812D8C6
	bl sub_8120AB8
locret_812D8C6:
	pop {pc}
	push {R4-R7,lr}
	add r7, r5, #0
	bl sub_800183C
	bl sub_8046664 // () -> void
	mov R0, #0
	mov R1, #0
	mov R2, #1
	ldr R3, off_812D914 // =dword_201E420 
	mov R4, #0x1E
	mov R5, #0x14
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	add r5, r7, #0
	bl sub_812D52E
	ldrh R0, [R5,#0x2A]
	mov R1, #0
	mov R2, #0
	bl sub_812D5D0
	mov R1, #0
	bl sub_812D934
	mov R0, #0
	bl sub_812D954
	bl sub_812D54C
	mov R0, #0
	mov R1, #3
	mov R2, #0
	bl sub_812D5D0
	bl sub_812D91C
	pop {R4-R7,pc}
off_812D914: .word dword_201E420
	.word dword_812C258+0x20
.func
.thumb_func
sub_812D91C:
	push {lr}
	ldr R0, off_812D92C // =dword_812C258+32 
	b loc_812D926
	push {lr}
	// a1
	ldr R0, off_812D930 // =dword_812C258+40 
loc_812D926:
	bl sub_80465A0 // (void *a1) -> void
	pop {pc}
off_812D92C: .word dword_812C258+0x20
off_812D930: .word dword_812C258+0x28
.endfunc // sub_812D91C

.func
.thumb_func
sub_812D934:
	push {r4,lr}
	lsl r1, r1, #2
	add r4, r0, #0
	ldr R2, off_812D948 // =off_812D94C 
	ldr R2, [R2,R1]
	mov R3, #0xA
	bl sub_8120228
	pop {r4,pc}
	.balign 4, 0x00
off_812D948: .word off_812D94C
off_812D94C: .word unk_202DFA0
	.word unk_202DFC0
.endfunc // sub_812D934

.func
.thumb_func
sub_812D954:
	push {R4-R7,lr}
	lsl r0, r0, #2
	ldr R1, off_812D9D0 // =off_812D9D4 
	ldr R3, [R1,R0]
	ldr R1, off_812D9DC // =dword_812D9E0 
	ldr R4, [R1,R0]
	tst R0, R0
	beq loc_812D96E
	ldrh R2, [R5,#0x30]
	mov R1, #8
	sub r1, r1, r2
	add r7, r4, r1
	b loc_812D970
loc_812D96E:
	add r7, r4, #0
loc_812D970:
	ldr R1, off_812D9DC // =dword_812D9E0 
	add R0, #8
	ldr R6, [R1,R0]
	push {r3}
	add r0, r4, #0
	add r1, r6, #0
	mov R2, #2
	mov R3, #0
	mov R4, #8
	mov R5, #2
	bl sub_80018D0
.endfunc // sub_812D954

	pop {r3}
	add r0, r7, #0
	add r1, r6, #0
	mov R2, #2
	mov R4, #8
	mov R5, #2
	bl copyTiles // (int j, int i, int cpyOff, u16 *tileRefs) -> void
	pop {R4-R7,pc}
	.balign 4, 0x00
	push {R4-R7,lr}
	lsl r0, r0, #2
	ldr R1, off_812D9D0 // =off_812D9D4 
	ldr R3, [R1,R0]
	ldr R1, off_812D9DC // =dword_812D9E0 
	ldr R4, [R1,R0]
	tst R0, R0
	beq loc_812D9B6
	ldrh R2, [R5,#0x30]
	mov R1, #8
	sub r1, r1, r2
	add r7, r4, r1
	b loc_812D9B8
loc_812D9B6:
	add r7, r4, #0
loc_812D9B8:
	ldr R1, off_812D9DC // =dword_812D9E0 
	add R0, #8
	ldr R6, [R1,R0]
	add r0, r4, #0
	add r1, r6, #0
	mov R2, #2
	mov R3, #0
	mov R4, #8
	mov R5, #2
	bl sub_80018D0
	pop {R4-R7,pc}
off_812D9D0: .word off_812D9D4
off_812D9D4: .word unk_202DFA0
	.word unk_202DFC0
off_812D9DC: .word dword_812D9E0
dword_812D9E0: .word 0xB, 0xB, 0x6, 0xD
.func
.thumb_func
sub_812D9F0:
	push {R4-R7,lr}
	bl sub_812D6F8
	add r5, r0, #0
	ldr R0, dword_812DA30 // =0x92 
	mov R1, #0x1C
	mov r2, #0x28 
	mov r3, #0x2e 
	bl sub_812DA08
	pop {R4-R7,pc}
	.balign 4, 0x00
.endfunc // sub_812D9F0

.func
.thumb_func
sub_812DA08:
	push {R4-R7,lr}
	sub sp, sp, #0xc
	str R1, [SP]
	str R2, [SP,#4]
	str R3, [SP,#8]
	lsl r0, r0, #0x10
	ldr R1, [SP]
	orr R0, R1
	ldr R1, dword_812DA34 // =0x20002 
	ldr R2, [SP,#4]
	ldrh R2, [R5,R2]
	ldr R3, [SP,#8]
	ldrh R3, [R5,R3]
	mov R4, #7
	ldr R6, dword_812DA38 // =0xC24C 
	mov r7, #0x64 
	bl sub_811FA98
	add sp, sp, #0xc
	pop {R4-R7,pc}
dword_812DA30: .word 0x92
dword_812DA34: .word 0x20002
dword_812DA38: .word 0xC24C
.endfunc // sub_812DA08

.func
.thumb_func
sub_812DA3C:
	push {lr}
	mov R0, #6
	bl sub_80466C4
	bne locret_812DA4A
	bl sub_812D4FC
locret_812DA4A:
	pop {pc}
.endfunc // sub_812DA3C

.func
.thumb_func
sub_812DA4C:
	push {lr}
	strb R0, [R5,#0x1F]
	mov r0, #0x30 
	strb R0, [R5,#2]
	mov r0, #0x41 
	bl sub_8132280
	mov R0, #0xF0
	strh R0, [R5,#0x28]
	pop {pc}
.endfunc // sub_812DA4C

.func
.thumb_func
sub_812DA60:
	push {r0,lr}
	bl sub_80062C8
	cmp R0, #0xC
	bne loc_812DA72
	mov R0, #8
	mov R1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
loc_812DA72:
	bl sub_803EA60
	cmp R0, #0
	bne loc_812DA80
	bl sub_81440D8 // static () -> void
	b loc_812DA84
loc_812DA80:
	bl sub_803C754
loc_812DA84:
	mov R1, #0x1C
	strb R1, [R5,#2]
	mov R1, #0
	strb R1, [R5,#0xC]
	strb R1, [R5,#3]
	bl sub_8120AB8
	// <endpool> <endfile>
	pop {r0,pc}
.endfunc // sub_812DA60

/*For debugging purposes, connect comment at any range!*/
