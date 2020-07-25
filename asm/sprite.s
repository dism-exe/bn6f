
// () -> void
	thumb_func_start sprite_loadAnimationData
sprite_loadAnimationData:
	push {r4,r5,lr}
	ldrb r3, [r5,#oObjectHeader_TypeAndSpriteOffset]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r5, r5, r3
	ldr r4, off_80026C0 // =sub_3006730+1
	mov lr, pc
	bx r4
	pop {r4,r5,pc}
	thumb_func_end sprite_loadAnimationData

	thumb_func_start sprite_80026B6
sprite_80026B6:
	push {r4,lr}
	ldr r4, off_80026C0 // =sub_3006730+1
	mov lr, pc
	bx r4
	pop {r4,pc}
off_80026C0: .word sub_3006730+1
	thumb_func_end sprite_80026B6

	thumb_func_start sprite_update
sprite_update:
	push {r4,r5,lr}
	ldrb r3, [r5,#oObjectHeader_TypeAndSpriteOffset]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r5, r5, r3
	ldr r4, off_80026E0 // =sub_3006792+1
	mov lr, pc
	bx r4
	pop {r4,r5,pc}
	thumb_func_end sprite_update

	thumb_func_start sprite_chatbox_80026D6
sprite_chatbox_80026D6:
	push {r4,lr}
	ldr r4, off_80026E0 // =sub_3006792+1
	mov lr, pc
	bx r4
	pop {r4,pc}
off_80026E0: .word sub_3006792+1
	thumb_func_end sprite_chatbox_80026D6

// (int a1, int a2, int a3) ->
/* r0 = 0x80
   r1 = sprite category
   r2 = sprite index*/
	thumb_func_start sprite_load
sprite_load:
	push {r4,r5,lr}
	ldrb r3, [r5,#oObjectHeader_Flags]
	mov r4, #8
	bic r3, r4
	strb r3, [r5,#oObjectHeader_Flags]
	ldrb r3, [r5,#oObjectHeader_TypeAndSpriteOffset]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r5, r5, r3
	push {r0-r2}
	lsl r0, r1, #8
	orr r0, r2
	bl sub_8002986
	pop {r1-r3}
	tst r0, r0
	beq loc_8002708
	b loc_8002716
loc_8002708:
	ldr r4, off_8002724 // =SpritePointersList
	ldr r4, [r4,r2]
	lsl r3, r3, #2
	ldr r0, [r4,r3]
	cmp r0, #0
	bge loc_8002716
	ldr r0, sprite8002728 // =spriteWhiteDot
loc_8002716:
	push {r1}
	bl sprite_initialize // (void *a1) -> void
	pop {r1}
	strb r1, [r5,#oObjectSprite_Unk_03]
	pop {r4,r5,pc}
	.balign 4, 0
off_8002724: .word SpritePointersList
sprite8002728: .word spriteWhiteDot
	thumb_func_end sprite_load

// (void *a1) -> void
	thumb_local_start
sprite_initialize:
	add r0, #4
	str r0, [r5,#oObjectSprite_Unk_18]
	mov r0, #0
	strb r0, [r5,#oObjectSprite_Unk_03]
	strb r0, [r5,#oObjectSprite_Unk_00]
	str r0, [r5,#oObjectSprite_Unk_24]
	strb r0, [r5,#oObjectSprite_Unk_04]
	strh r0, [r5,#oObjectSprite_Unk_0a]
	strh r0, [r5,#oObjectSprite_Unk_06]
	str r0, [r5,#oObjectSprite_Unk_2c]
	strh r0, [r5,#oObjectSprite_Unk_10]
	strh r0, [r5,#oObjectSprite_Unk_12]
	strb r0, [r5,#oObjectSprite_PaletteAndPriority]
	strb r0, [r5,#oObjectSprite_Unk_05]
	str r0, [r5,#oObjectSprite_Unk_30]
	str r0, [r5,#oObjectSprite_Unk_34]
	mvn r0, r0
	str r0, [r5,#oObjectSprite_Unk_28]
	mov r0, #8
	strb r0, [r5,#oObjectSprite_PaletteAndPriorityHi]
	mov r0, #8
	strh r0, [r5,#oObjectSprite_Unk_16]
	mov pc, lr
	thumb_func_end sprite_initialize

// (int a1) -> void
	thumb_func_start spriteLoadMugshot_800275A
spriteLoadMugshot_800275A:
	push {lr}
	lsl r0, r0, #2
	ldr r1, off_800276C // =mugshotSpritePtrs
	ldr r0, [r0,r1]
	bl sprite_initialize // (void *a1) -> void
	mov r0, #0x80
	strh r0, [r5,#0x16]
	pop {pc}
	.balign 4, 0
off_800276C: .word mugshotSpritePtrs
	thumb_func_end spriteLoadMugshot_800275A

// (int a1, int a2) -> void
	thumb_func_start initGuiSprite_8002770
initGuiSprite_8002770:
	mov r2, #0x80
	b loc_8002776
loc_8002774:
	mov r2, #0
loc_8002776:
	push {r4-r6,lr}
	mov r6, r2
	mov r4, r1
	add r5, #0x20
	lsl r0, r0, #2
	ldr r1, off_8002798 // =guiSpritePtrs
	ldr r0, [r0,r1]
	cmp r0, #0
	bge loc_800278A
	mov r0, r4
loc_800278A:
	bl sprite_initialize // (void *a1) -> void
	strb r6, [r5,#3]
	mov r0, #0x80
	strh r0, [r5,#0x16]
	pop {r4-r6,pc}
	.balign 4, 0
off_8002798: .word guiSpritePtrs
	thumb_func_end initGuiSprite_8002770

	thumb_local_start
sub_800279C:
	push {r5,lr}
	add r5, #0x20
	lsl r0, r0, #2
	ldr r1, off_80027B0 // =mugshotSpritePtrs
	ldr r0, [r0,r1]
	bl sprite_initialize // (void *a1) -> void
	mov r0, #0x80
	strh r0, [r5,#0x16]
	pop {r5,pc}
	.balign 4, 0
off_80027B0: .word mugshotSpritePtrs
	thumb_func_end sub_800279C

	thumb_func_start sub_80027B4
sub_80027B4:
	ldr r0, off_80027BC // =dword_200F350
	ldr r1, dword_80027C0 // =0x1
	str r1, [r0]
	mov pc, lr
	.balign 4, 0
off_80027BC: .word dword_200F350
dword_80027C0: .word 0x1
	thumb_func_end sub_80027B4

	thumb_func_start sub_80027C4
sub_80027C4:
	ldr r1, off_8002804 // =byte_20098A8
	mov r0, #0
	strb r0, [r1,#0x1] // (byte_20098A9 - 0x20098a8)
	mov r0, #0xc
	strb r0, [r1]
	ldr r0, dword_8002808 // =0x32f
	strh r0, [r1,#0x2] // (word_20098AA - 0x20098a8)
	mov pc, lr
	thumb_func_end sub_80027C4

	thumb_func_start sub_80027D4
sub_80027D4:
	ldr r1, off_8002804 // =byte_20098A8
	mov r0, #4
	strb r0, [r1,#0x1] // (byte_20098A9 - 0x20098a8)
	mov r0, #0xa
	strb r0, [r1]
	ldr r0, dword_800280C // =0x2ff
	strh r0, [r1,#0x2] // (word_20098AA - 0x20098a8)
	mov pc, lr
	thumb_func_end sub_80027D4

	thumb_func_start sub_80027E4
sub_80027E4:
	ldr r1, off_8002804 // =byte_20098A8
	mov r0, #4
	strb r0, [r1,#0x1] // (byte_20098A9 - 0x20098a8)
	mov r0, #8
	strb r0, [r1]
	ldr r0, byte_8002810 // =0xff
	strh r0, [r1,#0x2] // (word_20098AA - 0x20098a8)
	mov pc, lr
	thumb_func_end sub_80027E4

	thumb_func_start sub_80027F4
sub_80027F4:
	ldr r1, off_8002804 // =byte_20098A8
	mov r0, #0
	strb r0, [r1,#0x1] // (byte_20098A9 - 0x20098a8)
	mov r0, #0x10
	strb r0, [r1]
	ldr r0, byte_8002810 // =0xff
	strh r0, [r1,#0x2] // (word_20098AA - 0x20098a8)
	mov pc, lr
	.balign 4, 0
off_8002804: .word byte_20098A8
dword_8002808: .word 0x32F
dword_800280C: .word 0x2FF
byte_8002810: .byte 0xFF, 0x2, 0x0, 0x0, 0xFF, 0x2, 0x0, 0x0
	thumb_func_end sub_80027F4

	thumb_func_start sub_8002818
sub_8002818:
	push {lr}
	ldr r0, [r5,#0x34]
	tst r0, r0
	bne loc_800282A
	ldr r0, [r5,#0x1c]
	ldr r0, [r0,#4]
	add r0, #4
	ldr r1, [r5,#0x18]
	add r0, r0, r1
loc_800282A:
	ldrb r1, [r5,#4]
	ldrb r2, [r5,#5]
	add r1, r1, r2
	lsl r1, r1, #5
	add r0, r0, r1
	ldrb r1, [r5,#0x15]
	lsr r1, r1, #4
	ldr r3, off_8002868 // =byte_3001550
	lsl r1, r1, #5
	add r3, r3, r1
	mov r6, #0
loc_8002840:
	ldr r2, [r0,r6]
	str r2, [r3,r6]
	add r6, #4
	cmp r6, #0x20
	blt loc_8002840
	ldrh r7, [r5,#6]
	tst r7, r7
	beq locret_8002862
	lsl r0, r7, #0x11
	lsr r0, r0, #0x11
	lsr r2, r7, #0xf
	lsl r2, r2, #2
	mov r6, #0x20
	mov r7, r3
	ldr r1, off_8002864 // =sub_3005EF0+1
	mov lr, pc
	bx r1
locret_8002862:
	pop {pc}
	.balign 4, 0
off_8002864: .word sub_3005EF0+1
off_8002868: .word byte_3001550
	thumb_func_end sub_8002818

	thumb_func_start sub_800286C
sub_800286C:
	ldr r0, off_80028CC // =dword_200F340
	mov r1, #0
	str r1, [r0]
	mov pc, lr
	thumb_func_end sub_800286C

	thumb_func_start sub_8002874
sub_8002874:
	push {r5,lr}
	ldr r2, [r5,#0x24]
	ldr r0, [r5,#0x1c]
	ldr r0, [r0]
	ldr r1, [r5,#0x18]
	add r0, r0, r1
	cmp r0, r2
	beq locret_8002896
	str r0, [r5,#0x24]
	ldr r2, [r0]
	add r0, #4
	ldr r1, dword_8002898 // =0x6010000
	ldrh r3, [r5,#8]
	lsl r3, r3, #5
	add r1, r1, r3
	bl QueueEightWordAlignedGFXTransfer // (void *queuedSource, void *queuedDest, int queuedSize) -> void
locret_8002896:
	pop {r5,pc}
	.balign 4, 0
dword_8002898: .word 0x6010000
	thumb_func_end sub_8002874

	thumb_func_start sprite_resetObjVars_800289C
sprite_resetObjVars_800289C:
	push {lr}
	ldr r1, off_80028B4 // =dword_20093A8
	mov r0, #0
	str r0, [r1]
	ldr r0, off_80028B8 // =dword_200A890
	ldr r1, off_80028BC // =0x388
	mov r2, #0
	mvn r2, r2
	bl WordFill
	pop {pc}
	.balign 4, 0
off_80028B4: .word dword_20093A8
off_80028B8: .word dword_200A890
off_80028BC: .word 0x388
	thumb_func_end sprite_resetObjVars_800289C

	thumb_func_start sub_80028C0
sub_80028C0:
	ldr r1, off_80028CC // =dword_200F340
	ldr r1, [r1]
	ldr r2, off_80028D0 // =byte_200F389
	strb r1, [r2,r0]
	mov pc, lr
	.balign 4, 0
off_80028CC: .word dword_200F340
off_80028D0: .word byte_200F389
	thumb_func_end sub_80028C0

	thumb_func_start initUncompSpriteState_80028d4
initUncompSpriteState_80028d4:
	push {r5,lr}
	ldr r5, off_8002BF0 // =byte_200DCA0
	push {r0}
	// memBlock
	mov r0, r5
	// size
	mov r1, #0x50
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	pop {r0}
	str r0, [r5,#0x4c] // (dword_200DCEC - 0x200dca0)
	mov r0, r5
	add r0, #4
	mov r1, #0x18
	mov r2, #0x80
	lsl r2, r2, #0x18
	mvn r2, r2
	lsr r2, r2, #0x10
	bl HalfwordFill
	mov r0, r5
	// mem
	add r0, #0x1c
	// byteCount
	mov r1, #0x30
	// byte
	mov r2, #0xff
	bl ByteFill // (u8 *mem, int byteCount, u8 byte) -> void
	pop {r5,pc}
	thumb_func_end initUncompSpriteState_80028d4

	// Load the sprite tilesets and palettes according to the map group's
	// sprite_load_data_struct list (e.g. byte_804E6AC).
	thumb_func_start uncompSprite_8002906
uncompSprite_8002906:
	push {r4-r7,lr}
	mov r1, r8
	mov r2, r9
	push {r1,r2}
	ldr r5, off_8002BF0 // =byte_200DCA0
	ldr r1, [r5,#0x4c] // (dword_200DCEC - 0x200dca0)
	ldr r4, off_8002BC0 // =SpritePointersList
	ldr r6, dword_8002BC4 // =0x2040000
	mov r7, r0
.loadNextSprite
	ldrb r0, [r7,#oSpriteLoadData_SpriteTypeOffset]
	cmp r0, #0xff
	beq .doneLoadingSprites

	// Find the entry from SpritePointersList, putting its address into r2.
	ldrb r3, [r7,#oSpriteLoadData_SpriteIndex]
	lsl r3, r3, #2
	ldr r2, [r4,r0]
	ldr r2, [r2,r3]
	// Remove the SPRITE_IS_COMPRESSED flag.
	lsl r2, r2, #1
	lsr r2, r2, #1

	mov r8, r2
	ldr r2, [r2]

	lsl r0, r0, #8
	lsr r3, r3, #2
	orr r0, r3
	lsr r2, r2, #8
	add r3, r1, r2
	cmp r3, r6
	bge loc_800297C
	mov r9, r0
	ldrb r0, [r5]
	cmp r0, #0xc
	mov r0, r9
	bge loc_800297C
	push {r7}
	ldrb r3, [r5]
	lsl r7, r3, #1
	add r7, #4
	strh r0, [r5,r7]
	lsl r7, r3, #2
	add r7, #0x1c
	add r1, #4
	str r1, [r5,r7]
	// dest
	sub r1, #4
	add r3, #1
	strb r3, [r5]
	push {r1,r2,r4-r6}
	// src
	mov r0, r8
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	pop {r1,r2,r4-r6}
	add r1, r1, r2
	str r1, [r5,#0x4c]
	pop {r7}
	add r7, #oSpriteLoadData_Size
	b .loadNextSprite
.doneLoadingSprites
	mov r0, #1
	pop {r1,r2}
	mov r8, r1
	mov r9, r2
	pop {r4-r7,pc}
loc_800297C:
	mov r0, #0
	pop {r1,r2}
	mov r8, r1
	mov r9, r2
	pop {r4-r7,pc}
	thumb_func_end uncompSprite_8002906

	thumb_local_start
sub_8002986:
	push {r5,lr}
	ldr r5, off_8002BF0 // =byte_200DCA0
	mov r2, #0
loc_800298C:
	lsl r1, r2, #1
	add r1, #4
	ldrh r1, [r5,r1]
	cmp r0, r1
	bne loc_800299E
	lsl r1, r2, #2
	add r1, #0x1c
	ldr r0, [r5,r1]
	pop {r5,pc}
loc_800299E:
	add r2, #1
	cmp r2, #0xc
	blt loc_800298C
	mov r0, #0
	pop {r5,pc}
	thumb_func_end sub_8002986

	thumb_func_start sub_80029A8
sub_80029A8:
	push {r4-r7,lr}
	mov r1, r8
	mov r2, r9
	mov r3, r12
	push {r1-r3}
	ldr r5, off_8002BF0 // =byte_200DCA0
	ldr r1, [r5,#0x4c] // (dword_200DCEC - 0x200dca0)
	ldr r4, off_8002BC0 // =SpritePointersList
	ldr r6, off_8002BC8 // =dword_2033000
	mov r7, r0
loc_80029BC:
	ldrb r0, [r7]
	mov r2, #0xf0
	and r0, r2
	cmp r0, #0xf0
	beq loc_8002A4C
	cmp r0, #0
	beq loc_8002A48
	ldrb r0, [r7,#2]
	ldrb r2, [r7,#3]
	lsl r2, r2, #0x1f
	lsr r2, r2, #0x17
	add r0, r0, r2
	push {r1}
	bl sub_800F26C
	lsl r0, r0, #8
	orr r0, r1
	pop {r1}
	mov r3, r5
	add r3, #4
	mov r9, r1
	mov r2, #0
loc_80029E8:
	ldrh r1, [r3,r2]
	cmp r0, r1
	mov r1, r9
	beq loc_8002A48
	add r2, #2
	cmp r2, #0x18
	blt loc_80029E8
	mov r1, r9
	lsl r2, r0, #0x18
	lsr r2, r2, #0x16
	lsr r3, r0, #8
	ldr r3, [r4,r3]
	ldr r2, [r3,r2]
	cmp r2, #0
	bge loc_8002A48
	lsl r2, r2, #1
	lsr r2, r2, #1
	mov r8, r2
	ldr r2, [r2]
	lsr r2, r2, #8
	add r3, r1, r2
	cmp r3, r6
	bge loc_8002A58
	mov r12, r0
	ldrb r0, [r5]
	cmp r0, #0xc
	mov r0, r12
	bge loc_8002A58
	push {r7}
	ldrb r3, [r5]
	lsl r7, r3, #1
	add r7, #4
	strh r0, [r5,r7]
	lsl r7, r3, #2
	add r7, #0x1c
	add r1, #4
	str r1, [r5,r7]
	// dest
	sub r1, #4
	add r3, #1
	strb r3, [r5]
	push {r1,r2,r4-r6}
	// src
	mov r0, r8
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	pop {r1,r2,r4-r6}
	add r1, r1, r2
	str r1, [r5,#0x4c]
	pop {r7}
loc_8002A48:
	add r7, #4
	b loc_80029BC
loc_8002A4C:
	mov r0, #1
	pop {r1-r3}
	mov r8, r1
	mov r9, r2
	mov r12, r3
	pop {r4-r7,pc}
loc_8002A58:
	mov r0, #0
	pop {r1-r3}
	mov r8, r1
	mov r9, r2
	mov r12, r3
	pop {r4-r7,pc}
	thumb_func_end sub_80029A8

	thumb_func_start sub_8002A64
sub_8002A64:
	push {r4-r7,lr}
	lsl r0, r0, #8
	orr r0, r1
	mov r1, r8
	mov r2, r9
	mov r3, r12
	push {r1-r3}
	ldr r5, off_8002BF0 // =byte_200DCA0
	ldr r1, [r5,#0x4c] // (dword_200DCEC - 0x200dca0)
	ldr r4, off_8002BC0 // =SpritePointersList
	ldr r6, off_8002BC8 // =dword_2033000
	lsl r2, r0, #0x18
	lsr r2, r2, #0x16
	lsr r3, r0, #8
	ldr r3, [r4,r3]
	ldr r2, [r3,r2]
	cmp r2, #0
	bge loc_8002AD2
	lsl r2, r2, #1
	lsr r2, r2, #1
	mov r8, r2
	ldr r2, [r2]
	lsr r2, r2, #8
	add r3, r1, r2
	cmp r3, r6
	bge loc_8002AD2
	mov r12, r0
	ldrb r0, [r5]
	cmp r0, #0xc
	mov r0, r12
	bge loc_8002AD2
	ldrb r3, [r5]
	lsl r7, r3, #1
	add r7, #4
	strh r0, [r5,r7]
	lsl r7, r3, #2
	add r7, #0x1c
	add r1, #4
	str r1, [r5,r7]
	// dest
	sub r1, #4
	add r3, #1
	strb r3, [r5]
	push {r1,r2}
	// src
	mov r0, r8
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	pop {r1,r2}
	add r1, r1, r2
	str r1, [r5,#0x4c] // (dword_200DCEC - 0x200dca0)
	mov r0, #1
	pop {r1-r3}
	mov r8, r1
	mov r9, r2
	mov r12, r3
	pop {r4-r7,pc}
loc_8002AD2:
	mov r0, #0
	pop {r1-r3}
	mov r8, r1
	mov r9, r2
	mov r12, r3
	pop {r4-r7,pc}
	thumb_func_end sub_8002A64

	thumb_func_start sub_8002ADE
sub_8002ADE:
	push {r4-r7,lr}
	ldr r5, off_8002BF0 // =byte_200DCA0
	ldr r4, off_8002BC0 // =SpritePointersList
	ldrb r3, [r5]
	cmp r3, #0
	beq locret_8002B2E
	sub r3, #1
	lsl r7, r3, #1
	add r7, #4
	ldrh r0, [r5,r7]
	lsl r2, r0, #0x18
	lsr r2, r2, #0x16
	lsr r3, r0, #8
	ldr r3, [r4,r3]
	ldr r2, [r3,r2]
	cmp r2, #0
	bge locret_8002B2E
	lsl r2, r2, #1
	lsr r2, r2, #1
	mov r8, r2
	ldr r2, [r2]
	ldr r0, [r5,#0x4c] // (dword_200DCEC - 0x200dca0)
	lsr r2, r2, #8
	sub r0, r0, r2
	str r0, [r5,#0x4c] // (dword_200DCEC - 0x200dca0)
	ldrb r3, [r5]
	sub r3, #1
	strb r3, [r5]
	lsl r7, r3, #1
	add r7, #4
	mov r0, #0xff
	mov r1, #0x7f
	lsl r1, r1, #8
	orr r0, r1
	strh r0, [r5,r7]
	lsl r7, r3, #2
	add r7, #0x1c
	mov r0, #0
	mvn r0, r0
	str r0, [r5,r7]
locret_8002B2E:
	pop {r4-r7,pc}
	thumb_func_end sub_8002ADE

	thumb_func_start sprite_decompress
sprite_decompress:
	push {r4-r7,lr}
	lsl r0, r0, #8
	orr r0, r1
	mov r1, r8
	mov r2, r9
	mov r3, r12
	push {r1-r3}
	ldr r5, off_8002BF0 // =byte_200DCA0
	bl sub_8002BCC
	ldr r1, [r5,#0x4c] // (dword_200DCEC - 0x200dca0)
	ldr r4, off_8002BC0 // =SpritePointersList
	ldr r6, off_8002BC8 // =dword_2033000
	mov r3, r5
	add r3, #4
	mov r9, r1
	mov r2, #0
loc_8002B52:
	ldrh r1, [r3,r2]
	cmp r0, r1
	mov r1, r9
	beq loc_8002BB2
	add r2, #2
	cmp r2, #0x18
	blt loc_8002B52
	mov r1, r9
	lsl r2, r0, #0x18
	lsr r2, r2, #0x16
	lsr r3, r0, #8
	ldr r3, [r4,r3]
	ldr r2, [r3,r2]
	cmp r2, #0
	bge loc_8002BB2
	lsl r2, r2, #1
	lsr r2, r2, #1
	mov r8, r2
	ldr r2, [r2]
	lsr r2, r2, #8
	add r3, r1, r2
	cmp r3, r6
	bge loc_8002BB2
	mov r12, r0
	ldrb r0, [r5]
	cmp r0, #0xc
	mov r0, r12
	bge loc_8002BB2
	ldrb r3, [r5]
	lsl r7, r3, #1
	add r7, #4
	strh r0, [r5,r7]
	lsl r7, r3, #2
	add r7, #0x1c
	add r1, #4
	str r1, [r5,r7]
	// dest
	sub r1, #4
	push {r1,r2}
	// src
	mov r0, r8
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	pop {r1,r2}
	mov r0, #1
	pop {r1-r3}
	mov r8, r1
	mov r9, r2
	mov r12, r3
	pop {r4-r7,pc}
loc_8002BB2:
	mov r0, #0
	pop {r1-r3}
	mov r8, r1
	mov r9, r2
	mov r12, r3
	pop {r4-r7,pc}
	.balign 4, 0
off_8002BC0: .word SpritePointersList
dword_8002BC4: .word 0x2040000
off_8002BC8: .word dword_2033000
	thumb_func_end sprite_decompress

	thumb_local_start
sub_8002BCC:
	push {r0-r7,lr}
	ldrb r3, [r5]
	lsl r7, r3, #1
	add r7, #4
	mov r0, #0xff
	mov r1, #0x7f
	lsl r1, r1, #8
	orr r0, r1
	strh r0, [r5,r7]
	lsl r7, r3, #2
	add r7, #0x1c
	mov r0, #0
	mvn r0, r0
	str r0, [r5,r7]
	pop {r0-r7,pc}
	thumb_func_end sub_8002BCC

	thumb_local_start
sub_8002BEA:
	push {r4-r7,lr}
	pop {r4-r7,pc}
	.byte 0, 0
off_8002BF0: .word byte_200DCA0
	.word dword_8002BF8
dword_8002BF8: .word 0x4E550600
DebugStrSprite_8002BFC: .ascii "COMP\n"
	.ascii "STR:%8x\n"
	.ascii "END:%8x\n"
	.asciz "SIZ:%X/%X\n"
	.word unk_2037800
	.word 0x2040000
	thumb_func_end sub_8002BEA

	thumb_func_start sprite_setScaleParameters
sprite_setScaleParameters:
	push {r5,lr}
	push {r0-r2}
	ldrb r3, [r5,#oObjectHeader_TypeAndSpriteOffset]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r5, r5, r3
	b loc_8002C36
	push {r5,lr}
	push {r0-r2}
loc_8002C36:
	ldrb r0, [r5,#oObjectSprite_Unk_11]
	mov r1, #3
	tst r0, r1
	beq loc_8002C4E
	ldrb r3, [r5,#oObjectSprite_Unk_13]
	mov r1, #0x3e
	and r3, r1
	lsr r3, r3, #1
	pop {r0-r2}
	bl sub_802FE7A
	pop {r5,pc}
loc_8002C4E:
	pop {r0-r2}
	pop {r5,pc}
	thumb_func_end sprite_setScaleParameters

	thumb_func_start sprite_setObjWindowMode
sprite_setObjWindowMode:
	ldrb r3, [r5,#oObjectHeader_TypeAndSpriteOffset]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldrb r1, [r3,#oObjectSprite_Unk_11]
	mov r0, #0xc
	bic r1, r0
	mov r0, #8
	orr r1, r0
	strb r1, [r3,#oObjectSprite_Unk_11]
	mov pc, lr
	thumb_func_end sprite_setObjWindowMode

	thumb_func_start sprite_disableObjWindowMode
sprite_disableObjWindowMode:
	ldrb r3, [r5,#oObjectHeader_TypeAndSpriteOffset]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldrb r1, [r3,#oObjectSprite_Unk_11]
	mov r0, #0xc
	bic r1, r0
	strb r1, [r3,#oObjectSprite_Unk_11]
	mov pc, lr
	thumb_func_end sprite_disableObjWindowMode

	thumb_func_start sprite_setAlpha_8002c7a
// presumably to have a sprite blend in with the background (alpha blending)
// but the bit to enable alpha blending is not set
// and thus this call does nothing
// original name: sprite_setMosaicScalingParameters_8002c7a
sprite_setAlpha_8002c7a:
	mov r2, #4
	b sprite_setAlpha

	thumb_func_start sprite_setAlpha
// original name: sprite_setMosaicScalingParameters
sprite_setAlpha:
	ldrb r3, [r5,#oObjectHeader_TypeAndSpriteOffset]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	push {r7}
	ldrb r1, [r3,#oObjectSprite_Unk_11]
	mov r7, #0xc
	bic r1, r7
	orr r1, r2
	strb r1, [r3,#oObjectSprite_Unk_11]
	pop {r7}
	mov r3, r10
	ldr r3, [r3,#oToolkit_Unk2009740_Ptr]
	ldrb r1, [r3]
	mov r2, #0xc0
	bic r1, r2
	mov r2, #0
	orr r1, r2
	strb r1, [r3]
	strb r0, [r3,#2]
	sub r0, #0x10
	neg r0, r0
	strb r0, [r3,#3]
	mov r0, #0
	strb r0, [r3]
	mov r0, #0x3f
	strb r0, [r3,#1]
	mov pc, lr
	thumb_func_end sprite_setAlpha
	thumb_func_end sprite_setAlpha_8002c7a

	thumb_local_start
sub_8002CB6:
	mov r0, #0xc
	b loc_8002CBA
loc_8002CBA:
	ldrb r3, [r5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldrb r1, [r3,#0x11]
	bic r1, r0
	mov r2, #4
	orr r1, r2
	strb r1, [r3,#0x11]
	mov pc, lr
	thumb_func_end sub_8002CB6

	thumb_func_start sprite_disableAlpha
sprite_disableAlpha:
	ldrb r3, [r5,#oObjectHeader_TypeAndSpriteOffset]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldrb r1, [r3,#oObjectSprite_Unk_11]
	mov r0, #0xc
	bic r1, r0
	strb r1, [r3,#oObjectSprite_Unk_11]
	mov pc, lr
	thumb_func_end sprite_disableAlpha

	thumb_func_start sprite_getMosaicScalingParameters
sprite_getMosaicScalingParameters:
	ldrb r3, [r0,#oObjectHeader_TypeAndSpriteOffset]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r0
	ldrb r1, [r3,#oObjectSprite_Unk_11]
	mov r2, #0xc
	and r2, r1
	mov r3, r10
	ldr r3, [r3,#oToolkit_Unk2009740_Ptr]
	ldrb r0, [r3,#2]
	mov pc, lr
	thumb_func_end sprite_getMosaicScalingParameters

	thumb_local_start
sub_8002CF6:
	ldrb r3, [r0,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r0
	ldrb r1, [r3,#0x11]
	mov r0, #4
	and r0, r1
	mov pc, lr
	thumb_func_end sub_8002CF6

	thumb_local_start
sub_8002D06:
	push {r5,lr}
	ldr r3, off_8002D10 // =sub_30061E8+1
	mov lr, pc
	bx r3
	pop {r5,pc}
off_8002D10: .word sub_30061E8+1
	thumb_func_end sub_8002D06

	thumb_func_start sprite_makeScalable
sprite_makeScalable:
	push {r5,lr}
	ldrb r3, [r5,#oObjectHeader_SpriteOffset]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r5, r5, r3
	b loc_8002D22
	thumb_func_end sprite_makeScalable

	thumb_local_start
sub_8002D20:
	push {r5,lr}
loc_8002D22:
	ldrb r0, [r5,#oObjectSprite_Unk_11]
	mov r1, #3
	tst r1, r0
	bne loc_8002D4E
	bl sub_802FE48
	cmp r0, #0xff
	beq loc_8002D4E
	ldrb r2, [r5,#oObjectSprite_Unk_11]
	mov r1, #3
	orr r2, r1
	strb r2, [r5,#oObjectSprite_Unk_11]
	push {r7}
	ldrb r7, [r5,#oObjectSprite_Unk_13]
	mov r1, #0x3e
	bic r7, r1
	lsl r0, r0, #1
	orr r7, r0
	strb r7, [r5,#oObjectSprite_Unk_13]
	pop {r7}
	mov r0, #1
	pop {r5,pc}
loc_8002D4E:
	mov r0, #0
	pop {r5,pc}
	thumb_func_end sub_8002D20

	thumb_func_start sprite_makeUnscalable
sprite_makeUnscalable:
	push {r5,lr}
	ldrb r3, [r5,#oObjectHeader_TypeAndSpriteOffset]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r5, r5, r3
	b loc_8002D60
	push {r5,lr}
loc_8002D60:
	ldrb r0, [r5,#oObjectSprite_Unk_11]
	mov r1, #3
	tst r1, r0
	beq locret_8002D7E
	bic r0, r1
	strb r0, [r5,#oObjectSprite_Unk_11]
	ldrb r0, [r5,#oObjectSprite_Unk_13]
	mov r2, r0
	mov r1, #0x3e
	and r0, r1
	lsr r0, r0, #1
	bic r2, r1
	strb r2, [r5,#oObjectSprite_Unk_13]
	bl sub_802FE6A
locret_8002D7E:
	pop {r5,pc}
	thumb_func_end sprite_makeUnscalable

// (int pallete) -> void
	thumb_func_start sprite_setPalette
sprite_setPalette:
	ldrb r3, [r5,#oObjectHeader_TypeAndSpriteOffset]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	strb r0, [r3,#oObjectSprite_Unk_04]
	mov pc, lr
	thumb_func_end sprite_setPalette

	thumb_func_start sprite_getPalette
sprite_getPalette:
	ldrb r3, [r0,#oObjectHeader_TypeAndSpriteOffset]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r0
	ldrb r0, [r3,#oObjectSprite_Unk_04]
	mov pc, lr
	thumb_func_end sprite_getPalette

	thumb_local_start
sprite_setAnimationAlt:
	ldrb r3, [r5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	strb r0, [r3]
	mov pc, lr
	thumb_func_end sprite_setAnimationAlt

// (u8 a1) -> void
	thumb_func_start sprite_setAnimation
sprite_setAnimation:
	ldrb r3, [r5,#oObjectHeader_TypeAndSpriteOffset]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	strb r0, [r3,#oObjectSprite_Unk_00]
	mov pc, lr
	thumb_func_end sprite_setAnimation

	// Set a sprite's palette to white (palette 15).
	//
	// Inputs:
	// r5: pointer to oObjectSprite
	thumb_func_start sprite_forceWhitePalette
sprite_forceWhitePalette:
	mov r1, #0xf0
	b sprite_setFinalPalette

	// Set a sprite's palette.
	//
	// Inputs:
	// r1: OBJ palette number << 4 (bottom 4 bits should be 0)
	// r5: pointer to oObjectSprite
	//
	// Clobbers: r0, r2, r3
sprite_setFinalPalette:
	ldrb r3, [r5,#oObjectHeader_TypeAndSpriteOffset]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	// r0 = r1 | ([r3,#oObjectSprite_PaletteAndPriorityHi] & ~0xf0)
	ldrb r0, [r3,#oObjectSprite_PaletteAndPriorityHi]
	mov r2, #0xf0
	bic r0, r2
	orr r0, r1
	strb r0, [r3,#oObjectSprite_PaletteAndPriorityHi]
	mov pc, lr
	thumb_func_end sprite_forceWhitePalette

	thumb_func_start sprite_getFinalPalette
sprite_getFinalPalette:
	ldrb r3, [r0,#oObjectHeader_TypeAndSpriteOffset]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r0
	ldrb r0, [r3,#oObjectSprite_PaletteAndPriorityHi]
	mov r1, #0xf0
	and r1, r0
	mov pc, lr
	thumb_func_end sprite_getFinalPalette

	// Set a sprite's palette to palette 0.
	//
	// Inputs:
	// r5: pointer to oObjectSprite
	//
	// Clobbers: r0, r1, r3
	thumb_func_start sprite_clearFinalPalette
sprite_clearFinalPalette:
	ldrb r3, [r5,#oObjectHeader_TypeAndSpriteOffset]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	// r0 = [r3,#oObjectSprite_PaletteAndPriorityHi] & ~0xf0
	ldrb r0, [r3,#oObjectSprite_PaletteAndPriorityHi]
	mov r1, #0xf0
	bic r0, r1
	strb r0, [r3,#oObjectSprite_PaletteAndPriorityHi]
	mov pc, lr
	thumb_func_end sprite_clearFinalPalette

	thumb_func_start sprite_getFrameParameters
sprite_getFrameParameters:
	ldrb r3, [r5,#oObjectHeader_TypeAndSpriteOffset]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldrb r0, [r3,#oObjectSprite_Unk_02]
	ldrb r1, [r3,#oObjectSprite_Unk_01]
	cmp r1, #0
	beq loc_8002DFE
	mov r1, #0xc0
	bic r0, r1
loc_8002DFE:
	ldrb r1, [r3,#oObjectSprite_Unk_00]
	ldrb r2, [r3,#oObjectSprite_Unk_00]
	mov pc, lr
	thumb_func_end sprite_getFrameParameters

	thumb_func_start sub_8002E04
sub_8002E04:
	ldrb r3, [r5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldrb r0, [r3,#3]
	mov r1, #8
	and r0, r1
	mov pc, lr
	thumb_func_end sub_8002E04

	// Set a sprite's BG priority.
	//
	// Inputs:
	// r0: BG priority (0-3)
	// r5: pointer to oObjectSprite
	//
	// Clobbers: r0-r3
	thumb_func_start sprite_setBGPriority
sprite_setBGPriority:
	ldrb r3, [r5,#oObjectHeader_TypeAndSpriteOffset]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	// r1 = (r0 << (10-8)) | ([r3,#oObjectSprite_PaletteAndPriorityHi] & ~((3 << 10) >> 8))
	mov r2, #(3 << 10) >> 8
	ldrb r1, [r3,#oObjectSprite_PaletteAndPriorityHi]
	bic r1, r2
	lsl r0, r0, #10 - 8
	orr r1, r0
	strb r1, [r3,#oObjectSprite_PaletteAndPriorityHi]
	mov pc, lr
	thumb_func_end sprite_setBGPriority

	thumb_local_start
sub_8002E2A:
	ldrb r3, [r5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	mov r1, #0xc
	ldrb r0, [r3,#0x15]
	and r0, r1
	lsr r0, r0, #2
	mov pc, lr
	thumb_func_end sub_8002E2A

	thumb_func_start sprite_hasShadow
sprite_hasShadow:
	ldrb r3, [r5,#oObjectHeader_TypeAndSpriteOffset]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldrb r0, [r3,#oObjectSprite_Unk_03]
	mov r1, #1
	orr r0, r1
	mov r1, #4
	bic r0, r1
	strb r0, [r3,#oObjectSprite_Unk_03]
	mov pc, lr
	thumb_func_end sprite_hasShadow

	thumb_func_start sprite_removeShadow
sprite_removeShadow:
	ldrb r3, [r5,#oObjectHeader_TypeAndSpriteOffset]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldrb r0, [r3,#oObjectSprite_Unk_03]
	mov r1, #1
	bic r0, r1
	mov r1, #4
	bic r0, r1
	strb r0, [r3,#oObjectSprite_Unk_03]
	mov pc, lr
	thumb_func_end sprite_removeShadow

	thumb_local_start
sub_8002E68:
	ldrb r3, [r5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldr r0, [r3,#0x1c]
	ldr r0, [r0]
	ldr r1, [r3,#0x18]
	add r0, r0, r1
	ldr r0, [r0]
	lsr r0, r0, #5
	mov pc, lr
	thumb_func_end sub_8002E68

	thumb_local_start
sub_8002E7E:
	ldrb r0, [r5]
	tst r0, r0
	beq loc_8002EA4
	ldrb r3, [r5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	mov r2, #0xc
	ldrsh r1, [r3,r2]
	mov r2, #0xe
	ldrsb r2, [r3,r2]
	mov r0, #0x10
	lsl r0, r0, #4
	add r0, #0xff
	and r1, r0
	mov r0, #0xff
	and r2, r0
	mov r0, #1
	mov pc, lr
loc_8002EA4:
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov pc, lr
	thumb_func_end sub_8002E7E

	thumb_func_start sub_8002EAC
sub_8002EAC:
	ldrb r3, [r5,#oObjectHeader_TypeAndSpriteOffset]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldrb r0, [r3,#oObjectSprite_Unk_16]
	mov r1, #2
	orr r0, r1
	strb r0, [r3,#oObjectSprite_Unk_16]
	mov pc, lr
	thumb_func_end sub_8002EAC

	thumb_local_start
sub_8002EBE:
	ldrb r3, [r5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldrb r0, [r3,#0x16]
	mov r1, #2
	bic r0, r1
	strb r0, [r3,#0x16]
	mov pc, lr
	thumb_func_end sub_8002EBE

	thumb_func_start sprite_setColorShader
sprite_setColorShader:
	ldrb r3, [r5,#oObjectHeader_TypeAndSpriteOffset]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	strh r0, [r3,#oObjectSprite_Unk_06]
	mov pc, lr
	thumb_func_end sprite_setColorShader

	thumb_func_start sprite_getColorShader
sprite_getColorShader:
	ldrb r3, [r0,#oObjectHeader_TypeAndSpriteOffset]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r0
	ldrh r0, [r3,#oObjectSprite_Unk_06]
	mov pc, lr
	thumb_func_end sprite_getColorShader

	thumb_func_start sprite_zeroColorShader
sprite_zeroColorShader:
	ldrb r3, [r5,#oObjectHeader_TypeAndSpriteOffset]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	mov r0, #0
	strh r0, [r3,#oObjectSprite_Unk_06]
	mov pc, lr
	thumb_func_end sprite_zeroColorShader

	thumb_func_start sprite_setMosaicSize
// r0 - mosaic width
// r1 - mosaic height
sprite_setMosaicSize:
	lsl r1, r1, #4
	orr r0, r1
	mov r2, #0x10
	b loc_8002F06
	mov r2, #0x10
	b loc_8002F06
loc_8002F02:
	tst r2, r2
	beq sprite_clearMosaic
loc_8002F06:
	tst r0, r0
	beq sprite_clearMosaic
	lsl r0, r0, #8
	ldrb r3, [r5,#oObjectHeader_TypeAndSpriteOffset]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldrb r1, [r3,#oObjectSprite_Unk_11]
	orr r1, r2
	strb r1, [r3,#oObjectSprite_Unk_11]
	mov r3, r10
	ldr r3, [r3,#oToolkit_RenderInfoPtr]
	ldrh r1, [r3,#2]
	mov r2, #0xff
	lsl r2, r2, #8
	bic r1, r2
	orr r1, r0
	strh r1, [r3,#2]
	mov pc, lr
	thumb_func_end sprite_setMosaicSize

	thumb_func_start sprite_clearMosaic
sprite_clearMosaic:
	ldrb r3, [r5,#oObjectHeader_TypeAndSpriteOffset]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldrb r1, [r3,#oObjectSprite_Unk_11]
	mov r0, #0x10
	bic r1, r0
	strb r1, [r3,#oObjectSprite_Unk_11]
	mov pc, lr
	thumb_func_end sprite_clearMosaic

	thumb_func_start sub_8002F3E
sub_8002F3E:
	ldrb r3, [r0,#oObjectHeader_SpriteOffset]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r0
	ldrb r0, [r3,#oObjectSprite_Unk_11]
	mov r2, #0x10
	and r2, r0
	mov r3, r10
	ldr r3, [r3,#oToolkit_RenderInfoPtr]
	ldrh r0, [r3,#2]
	mov r1, #0xff
	bic r0, r1
	lsr r0, r0, #8
	mov pc, lr
	.hword 0x2000
	thumb_func_end sub_8002F3E

	thumb_func_start sprite_setFlip
sprite_setFlip:
	ldrb r3, [r5,#oObjectHeader_SpriteOffset]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldrb r2, [r3,#oObjectSprite_Unk_13]
	mov r1, #0x30
	bic r2, r1
	lsl r0, r0, #4
	orr r2, r0
	strb r2, [r3,#oObjectSprite_Unk_13]
	and r2, r1
	ldrb r1, [r3,#oObjectSprite_Unk_16]
	mov r0, #0x30
	bic r1, r0
	orr r1, r2
	strb r1, [r3,#oObjectSprite_Unk_16]
	mov pc, lr
	thumb_func_end sprite_setFlip

	thumb_func_start sprite_getFlip
sprite_getFlip:
	ldrb r3, [r0,#oObjectHeader_SpriteOffset]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r0
	ldrb r0, [r3,#oObjectSprite_Unk_16]
	mov r1, #0x30
	and r0, r1
	lsr r0, r0, #4
	mov pc, lr
	thumb_func_end sprite_getFlip

// () -> void
	thumb_func_start sprite_noShadow
// shadow moves with sprite's Z
sprite_noShadow:
	ldrb r3, [r5,#oObjectHeader_SpriteOffset]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldrb r0, [r3,#oObjectSprite_Unk_03]
	mov r1, #4
	orr r0, r1
	mov r1, #1
	bic r0, r1
	strb r0, [r3,#oObjectSprite_Unk_03]
	mov pc, lr
	thumb_func_end sprite_noShadow

	thumb_func_start sprite_setUnk0x2c
sprite_setUnk0x2c:
	ldrb r3, [r5,#oObjectHeader_TypeAndSpriteOffset]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	str r0, [r3,#oObjectSprite_Unk_2c]
	mov pc, lr
	thumb_func_end sprite_setUnk0x2c

	thumb_func_start sprite_getUnk0x2c
sprite_getUnk0x2c:
	ldrb r3, [r5,#oObjectHeader_TypeAndSpriteOffset]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldr r0, [r3,#oObjectSprite_Unk_2c]
	mov pc, lr
	thumb_func_end sprite_getUnk0x2c

	thumb_local_start
sub_8002FBE:
	ldrb r3, [r5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	mov r1, #0x80
	lsl r1, r1, #0x18
	lsr r1, r0
	ldr r0, [r3,#0x2c]
	orr r0, r1
	str r0, [r3,#0x2c]
	mov pc, lr
	thumb_func_end sub_8002FBE

	thumb_local_start
sub_8002FD4:
	ldrb r3, [r5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	mov r1, #0x80
	lsl r1, r1, #0x18
	lsr r1, r0
	ldr r0, [r3,#0x2c]
	bic r0, r1
	str r0, [r3,#0x2c]
	mov pc, lr
	.hword 0x2000
	thumb_func_end sub_8002FD4

	thumb_func_start sub_8002FEC
sub_8002FEC:
	ldrb r3, [r5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	str r0, [r3,#0x30]
	mov pc, lr
	thumb_func_end sub_8002FEC

	thumb_local_start
sub_8002FF8:
	mov r0, #0
	ldrb r3, [r5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	str r0, [r3,#0x34]
	mov pc, lr
	thumb_func_end sub_8002FF8

	thumb_func_start sprite_setField0x3Bit5
sprite_setField0x3Bit5:
	ldrb r3, [r5,#oObjectHeader_TypeAndSpriteOffset]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldrb r0, [r3,#oObjectSprite_Unk_03]
	mov r1, #0x20
	orr r0, r1
	strb r0, [r3,#oObjectSprite_Unk_03]
	mov pc, lr
	thumb_func_end sprite_setField0x3Bit5

	thumb_local_start
sub_8003018:
	ldrb r3, [r5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldrb r0, [r3,#3]
	mov r1, #0x20
	bic r0, r1
	strb r0, [r3,#3]
	mov pc, lr
	thumb_func_end sub_8003018

	thumb_func_start sub_800302A
sub_800302A:
	ldrb r3, [r5,#oObjectHeader_TypeAndSpriteOffset]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldrb r1, [r3,#oObjectSprite_Unk_16]
	mov r2, #0xc
	bic r1, r2
	mov r2, #2
	lsl r0, r2
	orr r1, r0
	strb r1, [r3,#oObjectSprite_Unk_16]
	ldrb r0, [r3,#oObjectSprite_Unk_03]
	mov r1, #0x40
	orr r0, r1
	strb r0, [r3,#oObjectSprite_Unk_03]
	mov pc, lr
	thumb_func_end sub_800302A

	thumb_func_start sub_800304A
sub_800304A:
	ldrb r3, [r5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	ldrb r1, [r3,#0x15]
	mov r2, #0xf0
	bic r1, r2
	lsl r0, r0, #4
	orr r1, r0
	strb r1, [r3,#0x15]
	mov pc, lr
	thumb_func_end sub_800304A

	thumb_func_start sub_8003060
sub_8003060:
	ldrb r3, [r5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	strb r0, [r3,#0xa]
	mov pc, lr
	thumb_func_end sub_8003060

	thumb_func_start sub_800306C
sub_800306C:
	ldrb r3, [r5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	strh r0, [r3,#8]
	mov r0, #0
	str r0, [r3,#0x24]
	mov pc, lr
	thumb_func_end sub_800306C

	thumb_func_start sprite_setCoordinates
sprite_setCoordinates:
	ldrb r3, [r5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	strh r0, [r3,#0xc]
	strh r1, [r3,#0xe]
	mov pc, lr
	thumb_func_end sprite_setCoordinates

	thumb_func_start sprite_addCoordinates
sprite_addCoordinates:
	ldrb r3, [r5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	mov r2, #0xc
	ldrsh r2, [r3,r2]
	add r0, r0, r2
	mov r2, #0xc
	strh r0, [r3,r2]
	mov r2, #0xe
	ldrsh r2, [r3,r2]
	add r1, r1, r2
	mov r2, #0xe
	strh r1, [r3,r2]
	mov pc, lr
	thumb_func_end sprite_addCoordinates

	thumb_func_start sprite_getCoordinates
sprite_getCoordinates:
	ldrb r3, [r5,#2]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, r5
	mov r0, #0xc
	ldrsh r0, [r3,r0]
	mov r1, #0xe
	ldrsh r1, [r3,r1]
	mov pc, lr
	thumb_func_end sprite_getCoordinates

	thumb_func_start sub_80030BA
sub_80030BA:
	push {r4-r7,lr}
	mov r5, r0
	ldrb r3, [r5,#oObjectHeader_TypeAndSpriteOffset]
	lsr r3, r3, #4
	lsl r3, r3, #4
	add r5, r5, r3
	ldr r3, [r5,#oObjectSprite_Unk_20]
	ldrb r2, [r3]
	lsl r2, r2, #2
	ldr r0, [r5,#oObjectSprite_Unk_1c]
	ldr r0, [r0,#0xc]
	ldr r3, [r5,#oObjectSprite_Unk_18]
	add r3, r3, r0
	ldr r2, [r3,r2]
	add r2, r2, r3
	mov r4, #0
loc_80030DA:
	ldrb r3, [r2]
	cmp r3, #0xff
	beq loc_80030F4
	cmp r4, r1
	beq loc_80030EA
	add r4, #1
	add r2, #5
	b loc_80030DA
loc_80030EA:
	mov r0, #1
	ldrsb r0, [r2,r0]
	mov r1, #2
	ldrsb r1, [r2,r1]
	pop {r4-r7,pc}
loc_80030F4:
	mov r0, #0
	mov r1, #0
	pop {r4-r7,pc}
	thumb_func_end sub_80030BA
	.balign 4, 0x00

/*For debugging purposes, connect comment at any range!*/
