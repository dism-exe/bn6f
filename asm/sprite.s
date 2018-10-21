.include "asm/sprite.inc"

.func
.thumb_func
// () -> void
sprite_loadAnimationData:
	push {r4,r5,lr}
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r5, r5, r3
	ldr R4, off_80026C0 // =sub_3006730+1 
	mov LR, PC
	bx r4
	pop {r4,r5,pc}
.endfunc // sprite_loadAnimationData

.func
.thumb_func
sprite_80026B6:
	push {r4,lr}
	ldr R4, off_80026C0 // =sub_3006730+1 
	mov LR, PC
	bx r4
	pop {r4,pc}
off_80026C0: .word sub_3006730+1
.endfunc // sprite_80026B6

.func
.thumb_func
sprite_update:
	push {r4,r5,lr}
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r5, r5, r3
	ldr R4, off_80026E0 // =sub_3006792+1 
	mov LR, PC
	bx r4
	pop {r4,r5,pc}
.endfunc // sprite_update

.func
.thumb_func
sprite_chatbox_80026D6:
	push {r4,lr}
	ldr R4, off_80026E0 // =sub_3006792+1 
	mov LR, PC
	bx r4
	pop {r4,pc}
off_80026E0: .word sub_3006792+1
.endfunc // sprite_chatbox_80026D6

.func
.thumb_func
// (int a1, int a2, int a3) ->
sprite_load:
	push {r4,r5,lr}
	ldrb R3, [R5]
	mov R4, #8
	bic R3, R4
	strb R3, [R5]
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r5, r5, r3
	push {R0-R2}
	lsl r0, r1, #8
	orr R0, R2
	bl sub_8002986
	pop {R1-R3}
	tst R0, R0
	beq loc_8002708
	b loc_8002716
loc_8002708:
	ldr R4, off_8002724 // =spritePointers_8031CC4 
	ldr R4, [R4,R2]
	lsl r3, r3, #2
	ldr R0, [R4,R3]
	cmp R0, #0
	bge loc_8002716
	ldr R0, off_8002728 // =spriteWhiteDot 
loc_8002716:
	push {r1}
	bl sprite_initialize // (void *a1) -> void
	pop {r1}
	strb R1, [R5,#3]
	pop {r4,r5,pc}
	.balign 4, 0x00
off_8002724: .word spritePointers_8031CC4
off_8002728: .word spriteWhiteDot
.endfunc // sprite_load

.func
.thumb_func
// (void *a1) -> void
sprite_initialize:
	add R0, #4
	str R0, [R5,#0x18]
	mov R0, #0
	strb R0, [R5,#3]
	strb R0, [R5]
	str R0, [R5,#0x24]
	strb R0, [R5,#4]
	strh R0, [R5,#0xA]
	strh R0, [R5,#6]
	str R0, [R5,#0x2C]
	strh R0, [R5,#0x10]
	strh R0, [R5,#0x12]
	strb R0, [R5,#0x14]
	strb R0, [R5,#5]
	str R0, [R5,#0x30]
	str R0, [R5,#0x34]
	mvn R0, R0
	str R0, [R5,#0x28]
	mov R0, #8
	strb R0, [R5,#0x15]
	mov R0, #8
	strh R0, [R5,#0x16]
	mov PC, LR
.endfunc // sprite_initialize

.func
.thumb_func
// (int a1) -> void
spriteLoadMugshot_800275A:
	push {lr}
	lsl r0, r0, #2
	ldr R1, off_800276C // =mugshots_8032598 
	ldr R0, [R0,R1]
	bl sprite_initialize // (void *a1) -> void
	mov R0, #0x80
	strh R0, [R5,#0x16]
	pop {pc}
off_800276C: .word mugshots_8032598
.endfunc // spriteLoadMugshot_800275A

.func
.thumb_func
// (int a1, int a2) -> void
sub_8002770:
	mov R2, #0x80
	b loc_8002776
loc_8002774:
	mov R2, #0
loc_8002776:
	push {R4-R6,lr}
	add r6, r2, #0
	add r4, r1, #0
	add r5, #0x20 
	lsl r0, r0, #2
	ldr R1, off_8002798 // =guiSprites_803271C 
	ldr R0, [R0,R1]
	cmp R0, #0
	bge loc_800278A
	add r0, r4, #0
loc_800278A:
	bl sprite_initialize // (void *a1) -> void
	strb R6, [R5,#3]
	mov R0, #0x80
	strh R0, [R5,#0x16]
	pop {R4-R6,pc}
	.balign 4, 0x00
off_8002798: .word guiSprites_803271C
.endfunc // sub_8002770

.func
.thumb_func
sub_800279C:
	push {r5,lr}
	add r5, #0x20 
	lsl r0, r0, #2
	ldr R1, off_80027B0 // =mugshots_8032598 
	ldr R0, [R0,R1]
	bl sprite_initialize // (void *a1) -> void
	mov R0, #0x80
	strh R0, [R5,#0x16]
	pop {r5,pc}
off_80027B0: .word mugshots_8032598
.endfunc // sub_800279C

.func
.thumb_func
sub_80027B4:
	ldr R0, off_80027BC // =dword_200F350 
	ldr R1, dword_80027C0 // =0x1 
	str R1, [R0]
	mov PC, LR
off_80027BC: .word dword_200F350
dword_80027C0: .word 0x1
.endfunc // sub_80027B4

.func
.thumb_func
sub_80027C4:
	ldr R1, off_8002804 // =byte_20098A8 
	mov R0, #0
	strb R0, [R1,#0x1] // (byte_20098A9 - 0x20098A8)
	mov R0, #0xC
	strb R0, [R1]
	ldr R0, dword_8002808 // =0x32F 
	strh R0, [R1,#0x2] // (word_20098AA - 0x20098A8)
	mov PC, LR
.endfunc // sub_80027C4

.func
.thumb_func
sub_80027D4:
	ldr R1, off_8002804 // =byte_20098A8 
	mov R0, #4
	strb R0, [R1,#0x1] // (byte_20098A9 - 0x20098A8)
	mov R0, #0xA
	strb R0, [R1]
	ldr R0, dword_800280C // =0x2FF 
	strh R0, [R1,#0x2] // (word_20098AA - 0x20098A8)
	mov PC, LR
.endfunc // sub_80027D4

.func
.thumb_func
sub_80027E4:
	ldr R1, off_8002804 // =byte_20098A8 
	mov R0, #4
	strb R0, [R1,#0x1] // (byte_20098A9 - 0x20098A8)
	mov R0, #8
	strb R0, [R1]
	ldr R0, dword_8002810 // =0x2FF 
	strh R0, [R1,#0x2] // (word_20098AA - 0x20098A8)
	mov PC, LR
.endfunc // sub_80027E4

.func
.thumb_func
sub_80027F4:
	ldr R1, off_8002804 // =byte_20098A8 
	mov R0, #0
	strb R0, [R1,#0x1] // (byte_20098A9 - 0x20098A8)
	mov R0, #0x10
	strb R0, [R1]
	ldr R0, dword_8002810 // =0x2FF 
	strh R0, [R1,#0x2] // (word_20098AA - 0x20098A8)
	mov PC, LR
off_8002804: .word byte_20098A8
dword_8002808: .word 0x32F
dword_800280C: .word 0x2FF
dword_8002810: .word 0x2FF
	.word 0x2FF
.endfunc // sub_80027F4

.func
.thumb_func
sub_8002818:
	push {lr}
	ldr R0, [R5,#0x34]
	tst R0, R0
	bne loc_800282A
	ldr R0, [R5,#0x1C]
	ldr R0, [R0,#4]
	add R0, #4
	ldr R1, [R5,#0x18]
	add r0, r0, r1
loc_800282A:
	ldrb R1, [R5,#4]
	ldrb R2, [R5,#5]
	add r1, r1, r2
	lsl r1, r1, #5
	add r0, r0, r1
	ldrb R1, [R5,#0x15]
	lsr r1, r1, #4
	ldr R3, off_8002868 // =byte_3001550 
	lsl r1, r1, #5
	add r3, r3, r1
	mov R6, #0
loc_8002840:
	ldr R2, [R0,R6]
	str R2, [R3,R6]
	add R6, #4
	cmp r6, #0x20 
	blt loc_8002840
	ldrh R7, [R5,#6]
	tst R7, R7
	beq locret_8002862
	lsl r0, r7, #0x11
	lsr r0, r0, #0x11
	lsr r2, r7, #0xf
	lsl r2, r2, #2
	mov r6, #0x20 
	add r7, r3, #0
	ldr R1, off_8002864 // =sub_3005EF0+1 
	mov LR, PC
	bx r1
locret_8002862:
	pop {pc}
off_8002864: .word sub_3005EF0+1
off_8002868: .word byte_3001550
.endfunc // sub_8002818

.func
.thumb_func
sub_800286C:
	ldr R0, off_80028CC // =dword_200F340 
	mov R1, #0
	str R1, [R0]
	mov PC, LR
.endfunc // sub_800286C

.func
.thumb_func
sub_8002874:
	push {r5,lr}
	ldr R2, [R5,#0x24]
	ldr R0, [R5,#0x1C]
	ldr R0, [R0]
	ldr R1, [R5,#0x18]
	add r0, r0, r1
	cmp R0, R2
	beq locret_8002896
	str R0, [R5,#0x24]
	ldr R2, [R0]
	add R0, #4
	ldr R1, dword_8002898 // =0x6010000 
	ldrh R3, [R5,#8]
	lsl r3, r3, #5
	add r1, r1, r3
	bl loc_8000AC8
locret_8002896:
	pop {r5,pc}
dword_8002898: .word 0x6010000
.endfunc // sub_8002874

.func
.thumb_func
sprite_handleObjSprites_800289C:
	push {lr}
	ldr R1, off_80028B4 // =dword_20093A8 
	mov R0, #0
	str R0, [R1]
	ldr R0, off_80028B8 // =dword_200A890 
	ldr R1, off_80028BC // =0x388 
	mov R2, #0
	mvn R2, R2
	bl sub_800098C
	pop {pc}
	.balign 4, 0x00
off_80028B4: .word dword_20093A8
off_80028B8: .word dword_200A890
off_80028BC: .word 0x388
.endfunc // sprite_handleObjSprites_800289C

.func
.thumb_func
sub_80028C0:
	ldr R1, off_80028CC // =dword_200F340 
	ldr R1, [R1]
	ldr R2, dword_80028D0 // = 
	strb R1, [R2,R0]
	mov PC, LR
	.balign 4, 0x00
off_80028CC: .word dword_200F340
dword_80028D0: .word 0x200F389
.endfunc // sub_80028C0

.func
.thumb_func
sub_80028D4:
	push {r5,lr}
	ldr R5, off_8002BF0 // =byte_200DCA0 
	push {r0}
	// memBlock
	add r0, r5, #0
	// size
	mov r1, #0x50 
	bl CpuSet_ZeroFillWord // (void *memBlock, int size) -> void
	pop {r0}
	str R0, [R5,#0x4C] // (dword_200DCEC - 0x200DCA0)
	add r0, r5, #0
	add R0, #4
	mov R1, #0x18
	mov R2, #0x80
	lsl r2, r2, #0x18
	mvn R2, R2
	lsr r2, r2, #0x10
	bl sub_800096C
	add r0, r5, #0
	// mem
	add R0, #0x1C
	// byteCount
	mov r1, #0x30 
	// byte
	mov R2, #0xFF
	bl initMemblockToByte // (u8 *mem, int byteCount, u8 byte) -> void
	pop {r5,pc}
.endfunc // sub_80028D4

.func
.thumb_func
sub_8002906:
	push {R4-R7,lr}
	mov R1, R8
	mov R2, R9
	push {r1,r2}
	ldr R5, off_8002BF0 // =byte_200DCA0 
	ldr R1, [R5,#0x4C] // (dword_200DCEC - 0x200DCA0)
	ldr R4, off_8002BC0 // =spritePointers_8031CC4 
	ldr R6, dword_8002BC4 // =0x2040000 
	add r7, r0, #0
loc_8002918:
	ldrb R0, [R7]
	cmp R0, #0xFF
	beq loc_8002972
	ldrb R3, [R7,#1]
	lsl r3, r3, #2
	ldr R2, [R4,R0]
	ldr R2, [R2,R3]
	lsl r2, r2, #1
	lsr r2, r2, #1
	mov R8, R2
	ldr R2, [R2]
	lsl r0, r0, #8
	lsr r3, r3, #2
	orr R0, R3
	lsr r2, r2, #8
	add r3, r1, r2
	cmp R3, R6
	bge loc_800297C
	mov R9, R0
	ldrb R0, [R5]
	cmp R0, #0xC
	mov R0, R9
	bge loc_800297C
	push {r7}
	ldrb R3, [R5]
	lsl r7, r3, #1
	add R7, #4
	strh R0, [R5,R7]
	lsl r7, r3, #2
	add R7, #0x1C
	add R1, #4
	str R1, [R5,R7]
	// dest
	sub R1, #4
	add R3, #1
	strb R3, [R5]
	push {r1,r2,R4-R6}
	// src
	mov R0, R8
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	pop {r1,r2,R4-R6}
	add r1, r1, r2
	str R1, [R5,#0x4C]
	pop {r7}
	add R7, #2
	b loc_8002918
loc_8002972:
	mov R0, #1
	pop {r1,r2}
	mov R8, R1
	mov R9, R2
	pop {R4-R7,pc}
loc_800297C:
	mov R0, #0
	pop {r1,r2}
	mov R8, R1
	mov R9, R2
	pop {R4-R7,pc}
.endfunc // sub_8002906

.func
.thumb_func
sub_8002986:
	push {r5,lr}
	ldr R5, off_8002BF0 // =byte_200DCA0 
	mov R2, #0
loc_800298C:
	lsl r1, r2, #1
	add R1, #4
	ldrh R1, [R5,R1]
	cmp R0, R1
	bne loc_800299E
	lsl r1, r2, #2
	add R1, #0x1C
	ldr R0, [R5,R1]
	pop {r5,pc}
loc_800299E:
	add R2, #1
	cmp R2, #0xC
	blt loc_800298C
	mov R0, #0
	pop {r5,pc}
.endfunc // sub_8002986

.func
.thumb_func
sub_80029A8:
	push {R4-R7,lr}
	mov R1, R8
	mov R2, R9
	mov R3, R12
	push {R1-R3}
	ldr R5, off_8002BF0 // =byte_200DCA0 
	ldr R1, [R5,#0x4C] // (dword_200DCEC - 0x200DCA0)
	ldr R4, off_8002BC0 // =spritePointers_8031CC4 
	ldr R6, off_8002BC8 // =dword_2033000 
	add r7, r0, #0
loc_80029BC:
	ldrb R0, [R7]
	mov R2, #0xF0
	and R0, R2
	cmp R0, #0xF0
	beq loc_8002A4C
	cmp R0, #0
	beq loc_8002A48
	ldrb R0, [R7,#2]
	ldrb R2, [R7,#3]
	lsl r2, r2, #0x1f
	lsr r2, r2, #0x17
	add r0, r0, r2
	push {r1}
	bl sub_800F26C
	lsl r0, r0, #8
	orr R0, R1
	pop {r1}
	add r3, r5, #0
	add R3, #4
	mov R9, R1
	mov R2, #0
loc_80029E8:
	ldrh R1, [R3,R2]
	cmp R0, R1
	mov R1, R9
	beq loc_8002A48
	add R2, #2
	cmp R2, #0x18
	blt loc_80029E8
	mov R1, R9
	lsl r2, r0, #0x18
	lsr r2, r2, #0x16
	lsr r3, r0, #8
	ldr R3, [R4,R3]
	ldr R2, [R3,R2]
	cmp R2, #0
	bge loc_8002A48
	lsl r2, r2, #1
	lsr r2, r2, #1
	mov R8, R2
	ldr R2, [R2]
	lsr r2, r2, #8
	add r3, r1, r2
	cmp R3, R6
	bge loc_8002A58
	mov R12, R0
	ldrb R0, [R5]
	cmp R0, #0xC
	mov R0, R12
	bge loc_8002A58
	push {r7}
	ldrb R3, [R5]
	lsl r7, r3, #1
	add R7, #4
	strh R0, [R5,R7]
	lsl r7, r3, #2
	add R7, #0x1C
	add R1, #4
	str R1, [R5,R7]
	// dest
	sub R1, #4
	add R3, #1
	strb R3, [R5]
	push {r1,r2,R4-R6}
	// src
	mov R0, R8
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	pop {r1,r2,R4-R6}
	add r1, r1, r2
	str R1, [R5,#0x4C]
	pop {r7}
loc_8002A48:
	add R7, #4
	b loc_80029BC
loc_8002A4C:
	mov R0, #1
	pop {R1-R3}
	mov R8, R1
	mov R9, R2
	mov R12, R3
	pop {R4-R7,pc}
loc_8002A58:
	mov R0, #0
	pop {R1-R3}
	mov R8, R1
	mov R9, R2
	mov R12, R3
	pop {R4-R7,pc}
.endfunc // sub_80029A8

.func
.thumb_func
sub_8002A64:
	push {R4-R7,lr}
	lsl r0, r0, #8
	orr R0, R1
	mov R1, R8
	mov R2, R9
	mov R3, R12
	push {R1-R3}
	ldr R5, off_8002BF0 // =byte_200DCA0 
	ldr R1, [R5,#0x4C] // (dword_200DCEC - 0x200DCA0)
	ldr R4, off_8002BC0 // =spritePointers_8031CC4 
	ldr R6, off_8002BC8 // =dword_2033000 
	lsl r2, r0, #0x18
	lsr r2, r2, #0x16
	lsr r3, r0, #8
	ldr R3, [R4,R3]
	ldr R2, [R3,R2]
	cmp R2, #0
	bge loc_8002AD2
	lsl r2, r2, #1
	lsr r2, r2, #1
	mov R8, R2
	ldr R2, [R2]
	lsr r2, r2, #8
	add r3, r1, r2
	cmp R3, R6
	bge loc_8002AD2
	mov R12, R0
	ldrb R0, [R5]
	cmp R0, #0xC
	mov R0, R12
	bge loc_8002AD2
	ldrb R3, [R5]
	lsl r7, r3, #1
	add R7, #4
	strh R0, [R5,R7]
	lsl r7, r3, #2
	add R7, #0x1C
	add R1, #4
	str R1, [R5,R7]
	// dest
	sub R1, #4
	add R3, #1
	strb R3, [R5]
	push {r1,r2}
	// src
	mov R0, R8
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	pop {r1,r2}
	add r1, r1, r2
	str R1, [R5,#0x4C] // (dword_200DCEC - 0x200DCA0)
	mov R0, #1
	pop {R1-R3}
	mov R8, R1
	mov R9, R2
	mov R12, R3
	pop {R4-R7,pc}
loc_8002AD2:
	mov R0, #0
	pop {R1-R3}
	mov R8, R1
	mov R9, R2
	mov R12, R3
	pop {R4-R7,pc}
.endfunc // sub_8002A64

.func
.thumb_func
sub_8002ADE:
	push {R4-R7,lr}
	ldr R5, off_8002BF0 // =byte_200DCA0 
	ldr R4, off_8002BC0 // =spritePointers_8031CC4 
	ldrb R3, [R5]
	cmp R3, #0
	beq locret_8002B2E
	sub R3, #1
	lsl r7, r3, #1
	add R7, #4
	ldrh R0, [R5,R7]
	lsl r2, r0, #0x18
	lsr r2, r2, #0x16
	lsr r3, r0, #8
	ldr R3, [R4,R3]
	ldr R2, [R3,R2]
	cmp R2, #0
	bge locret_8002B2E
	lsl r2, r2, #1
	lsr r2, r2, #1
	mov R8, R2
	ldr R2, [R2]
	ldr R0, [R5,#0x4C] // (dword_200DCEC - 0x200DCA0)
	lsr r2, r2, #8
	sub r0, r0, r2
	str R0, [R5,#0x4C] // (dword_200DCEC - 0x200DCA0)
	ldrb R3, [R5]
	sub R3, #1
	strb R3, [R5]
	lsl r7, r3, #1
	add R7, #4
	mov R0, #0xFF
	mov R1, #0x7F
	lsl r1, r1, #8
	orr R0, R1
	strh R0, [R5,R7]
	lsl r7, r3, #2
	add R7, #0x1C
	mov R0, #0
	mvn R0, R0
	str R0, [R5,R7]
locret_8002B2E:
	pop {R4-R7,pc}
.endfunc // sub_8002ADE

.func
.thumb_func
sprite_decompress:
	push {R4-R7,lr}
	lsl r0, r0, #8
	orr R0, R1
	mov R1, R8
	mov R2, R9
	mov R3, R12
	push {R1-R3}
	ldr R5, off_8002BF0 // =byte_200DCA0 
	bl sub_8002BCC
	ldr R1, [R5,#0x4C] // (dword_200DCEC - 0x200DCA0)
	ldr R4, off_8002BC0 // =spritePointers_8031CC4 
	ldr R6, off_8002BC8 // =dword_2033000 
	add r3, r5, #0
	add R3, #4
	mov R9, R1
	mov R2, #0
loc_8002B52:
	ldrh R1, [R3,R2]
	cmp R0, R1
	mov R1, R9
	beq loc_8002BB2
	add R2, #2
	cmp R2, #0x18
	blt loc_8002B52
	mov R1, R9
	lsl r2, r0, #0x18
	lsr r2, r2, #0x16
	lsr r3, r0, #8
	ldr R3, [R4,R3]
	ldr R2, [R3,R2]
	cmp R2, #0
	bge loc_8002BB2
	lsl r2, r2, #1
	lsr r2, r2, #1
	mov R8, R2
	ldr R2, [R2]
	lsr r2, r2, #8
	add r3, r1, r2
	cmp R3, R6
	bge loc_8002BB2
	mov R12, R0
	ldrb R0, [R5]
	cmp R0, #0xC
	mov R0, R12
	bge loc_8002BB2
	ldrb R3, [R5]
	lsl r7, r3, #1
	add R7, #4
	strh R0, [R5,R7]
	lsl r7, r3, #2
	add R7, #0x1C
	add R1, #4
	str R1, [R5,R7]
	// dest
	sub R1, #4
	push {r1,r2}
	// src
	mov R0, R8
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	pop {r1,r2}
	mov R0, #1
	pop {R1-R3}
	mov R8, R1
	mov R9, R2
	mov R12, R3
	pop {R4-R7,pc}
loc_8002BB2:
	mov R0, #0
	pop {R1-R3}
	mov R8, R1
	mov R9, R2
	mov R12, R3
	pop {R4-R7,pc}
	.byte 0, 0
off_8002BC0: .word spritePointers_8031CC4
dword_8002BC4: .word 0x2040000
off_8002BC8: .word dword_2033000
.endfunc // sprite_decompress

.func
.thumb_func
sub_8002BCC:
	push {R0-R7,lr}
	ldrb R3, [R5]
	lsl r7, r3, #1
	add R7, #4
	mov R0, #0xFF
	mov R1, #0x7F
	lsl r1, r1, #8
	orr R0, R1
	strh R0, [R5,R7]
	lsl r7, r3, #2
	add R7, #0x1C
	mov R0, #0
	mvn R0, R0
	str R0, [R5,R7]
	pop {R0-R7,pc}
.endfunc // sub_8002BCC

.func
.thumb_func
sub_8002BEA:
	push {R4-R7,lr}
	pop {R4-R7,pc}
	.byte 0, 0
off_8002BF0: .word byte_200DCA0
	.word byte_8002BF8
byte_8002BF8: .byte 0x0, 0x6, 0x55, 0x4E
aCompStr8xEnd8x: .ascii "COMP\n"
	.ascii "STR:%8x\n"
	.ascii "END:%8x\n"
	.asciz "SIZ:%X/%X\n"
	.word unk_2037800
	.word 0x2040000
.endfunc // sub_8002BEA

.func
.thumb_func
sprite_setScaleParameters:
	push {r5,lr}
	push {R0-R2}
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r5, r5, r3
	b loc_8002C36
	push {r5,lr}
	push {R0-R2}
loc_8002C36:
	ldrb R0, [R5,#0x11]
	mov R1, #3
	tst R0, R1
	beq loc_8002C4E
	ldrb R3, [R5,#0x13]
	mov r1, #0x3e 
	and R3, R1
	lsr r3, r3, #1
	pop {R0-R2}
	bl sub_802FE7A
	pop {r5,pc}
loc_8002C4E:
	pop {R0-R2}
	pop {r5,pc}
.endfunc // sprite_setScaleParameters

.func
.thumb_func
sub_8002C52:
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldrb R1, [R3,#0x11]
	mov R0, #0xC
	bic R1, R0
	mov R0, #8
	orr R1, R0
	strb R1, [R3,#0x11]
	mov PC, LR
.endfunc // sub_8002C52

.func
.thumb_func
sub_8002C68:
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldrb R1, [R3,#0x11]
	mov R0, #0xC
	bic R1, R0
	strb R1, [R3,#0x11]
	mov PC, LR
.endfunc // sub_8002C68

.func
.thumb_func
sub_8002C7A:
	mov R2, #4
	b sprite_setMosaicScalingParameters
sprite_setMosaicScalingParameters:
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	push {r7}
	ldrb R1, [R3,#0x11]
	mov R7, #0xC
	bic R1, R7
	orr R1, R2
	strb R1, [R3,#0x11]
	pop {r7}
	mov R3, R10
	ldr R3, [R3,#0x20]
	ldrb R1, [R3]
	mov R2, #0xC0
	bic R1, R2
	mov R2, #0
	orr R1, R2
	strb R1, [R3]
	strb R0, [R3,#2]
	sub R0, #0x10
	neg R0, R0
	strb R0, [R3,#3]
	mov R0, #0
	strb R0, [R3]
	mov r0, #0x3f 
	strb R0, [R3,#1]
	mov PC, LR
.endfunc // sub_8002C7A

.func
.thumb_func
sub_8002CB6:
	mov R0, #0xC
	b loc_8002CBA
loc_8002CBA:
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldrb R1, [R3,#0x11]
	bic R1, R0
	mov R2, #4
	orr R1, R2
	strb R1, [R3,#0x11]
	mov PC, LR
.endfunc // sub_8002CB6

.func
.thumb_func
sub_8002CCE:
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldrb R1, [R3,#0x11]
	mov R0, #0xC
	bic R1, R0
	strb R1, [R3,#0x11]
	mov PC, LR
.endfunc // sub_8002CCE

.func
.thumb_func
sprite_getMosaicScalingParameters:
	ldrb R3, [R0,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r0
	ldrb R1, [R3,#0x11]
	mov R2, #0xC
	and R2, R1
	mov R3, R10
	ldr R3, [R3,#0x20]
	ldrb R0, [R3,#2]
	mov PC, LR
.endfunc // sprite_getMosaicScalingParameters

.func
.thumb_func
sub_8002CF6:
	ldrb R3, [R0,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r0
	ldrb R1, [R3,#0x11]
	mov R0, #4
	and R0, R1
	mov PC, LR
.endfunc // sub_8002CF6

.func
.thumb_func
sub_8002D06:
	push {r5,lr}
	ldr R3, dword_8002D10 // =loc_30061E8 
	mov LR, PC
	bx r3
	pop {r5,pc}
dword_8002D10: .word 0x30061E9
.endfunc // sub_8002D06

.func
.thumb_func
sprite_makeScalable:
	push {r5,lr}
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r5, r5, r3
	b loc_8002D22
.endfunc // sprite_makeScalable

.func
.thumb_func
sub_8002D20:
	push {r5,lr}
loc_8002D22:
	ldrb R0, [R5,#0x11]
	mov R1, #3
	tst R1, R0
	bne loc_8002D4E
	bl sub_802FE48
	cmp R0, #0xFF
	beq loc_8002D4E
	ldrb R2, [R5,#0x11]
	mov R1, #3
	orr R2, R1
	strb R2, [R5,#0x11]
	push {r7}
	ldrb R7, [R5,#0x13]
	mov r1, #0x3e 
	bic R7, R1
	lsl r0, r0, #1
	orr R7, R0
	strb R7, [R5,#0x13]
	pop {r7}
	mov R0, #1
	pop {r5,pc}
loc_8002D4E:
	mov R0, #0
	pop {r5,pc}
.endfunc // sub_8002D20

.func
.thumb_func
sprite_makeUnscalable:
	push {r5,lr}
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r5, r5, r3
	b loc_8002D60
	push {r5,lr}
loc_8002D60:
	ldrb R0, [R5,#0x11]
	mov R1, #3
	tst R1, R0
	beq locret_8002D7E
	bic R0, R1
	strb R0, [R5,#0x11]
	ldrb R0, [R5,#0x13]
	add r2, r0, #0
	mov r1, #0x3e 
	and R0, R1
	lsr r0, r0, #1
	bic R2, R1
	strb R2, [R5,#0x13]
	bl sub_802FE6A
locret_8002D7E:
	pop {r5,pc}
.endfunc // sprite_makeUnscalable

.func
.thumb_func
// (int pallete) -> void
sprite_setPallete:
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	strb R0, [R3,#4]
	mov PC, LR
.endfunc // sprite_setPallete

.func
.thumb_func
sprite_getPallete:
	ldrb R3, [R0,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r0
	ldrb R0, [R3,#4]
	mov PC, LR
.endfunc // sprite_getPallete

.func
.thumb_func
sprite_setAnimationAlt:
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	strb R0, [R3]
	mov PC, LR
.endfunc // sprite_setAnimationAlt

.func
.thumb_func
// (u8 a1) -> void
sprite_setAnimation:
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	strb R0, [R3]
	mov PC, LR
.endfunc // sprite_setAnimation

.func
.thumb_func
sprite_forceWhitePallete:
	mov R1, #0xF0
	b loc_8002DB4
loc_8002DB4:
	ldrb R3, [R5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldrb R0, [R3,#0x15]
	mov R2, #0xF0
	bic R0, R2
	orr R0, R1
	strb R0, [R3,#0x15]
	mov PC, LR
.endfunc // sprite_forceWhitePallete

/*For debugging purposes, connect comment at any range!*/
