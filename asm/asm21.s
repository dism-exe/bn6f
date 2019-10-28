
	thumb_func_start sub_8080D90
sub_8080D90:
	push {lr}
	ldr r0, off_8080D9C // =eBGScrollCBCounters 
	mov r1, #8
	bl ZeroFillByByte // (void *mem, int size) -> void
	pop {pc}
off_8080D9C: .word eBGScrollCBCounters
	thumb_func_end sub_8080D90

	thumb_func_start sub_8080DA0
sub_8080DA0:
	push {r4-r7,lr}
	bl sub_8081308
	mov r4, r0
	lsl r1, r4, #4
	ldr r7, off_8080E30 // =off_8080E34 
	add r7, r7, r1
	ldr r0, [r7]
	ldr r1, [r7,#4]
	ldr r2, [r7,#8]
	bl SetBGScrollCallbacks
	bl GetRenderInfoLCDControl
	ldr r1, [r7,#0xc]
	orr r0, r1
	bl SetRenderInfoLCDControl
	ldr r6, off_8080F94 // =off_8080F98 
	lsl r1, r4, #2
	ldr r0, [r6,r1]
	bl LoadBGAnimData
	lsl r1, r4, #2
	ldr r0, off_8080E2C // =off_8081220 
	ldr r0, [r0,r1]
	bl sub_8002354
	bl GetBattleMode
	cmp r0, #1
	beq locret_8080DE8
	bl sub_803537C
	bl sub_8035424
locret_8080DE8:
	pop {r4-r7,pc}
	thumb_func_end sub_8080DA0

	thumb_local_start
sub_8080DEA:
	push {r4-r7,lr}
	bl sub_808137C
	mov r4, r0
	lsl r1, r4, #4
	ldr r7, off_8080E30 // =off_8080E34 
	add r7, r7, r1
	ldr r0, [r7]
	ldr r1, [r7,#4]
	ldr r2, [r7,#8]
	bl SetBGScrollCallbacks
	bl GetRenderInfoLCDControl
	ldr r1, [r7,#0xc]
	orr r0, r1
	bl SetRenderInfoLCDControl
	ldr r6, off_8080F94 // =off_8080F98 
	lsl r1, r4, #2
	ldr r0, [r6,r1]
	bl LoadBGAnimData
	lsl r1, r4, #2
	ldr r0, off_8080E2C // =off_8081220 
	ldr r0, [r0,r1]
	bl sub_8002354
	bl sub_803537C
	bl sub_8035424
	pop {r4-r7,pc}
off_8080E2C: .word off_8081220
off_8080E30: .word off_8080E34
off_8080E34:
	// 0x0
	.word nullsub_39+1
	.word BGScrollCB_BG1Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x0

	// 0x1
	.word nullsub_39+1
	.word BGScrollCB_BG1Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x0

	// 0x2
	.word nullsub_39+1
	.word nullsub_39+1
	.word nullsub_38+1
	.word 0x0

	// 0x3
	.word nullsub_39+1
	.word BGScrollCB_BG1Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x0

	// 0x4
	.word nullsub_39+1
	.word BGScrollCB_BG1Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x0

	// 0x5
	.word nullsub_39+1
	.word BGScrollCB_BG1Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x0

	// 0x6
	.word nullsub_39+1
	.word BGScrollCB_BG1UpScroll+1
	.word nullsub_38+1
	.word 0x0

	// 0x7
	.word nullsub_39+1
	.word BGScrollCB_BG1Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x0

	// 0x8
	.word nullsub_39+1
	.word BGScrollCB_BG1Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x0

	// 0x9
	.word nullsub_39+1
	.word BGScrollCB_BG1Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x0

	// 0xa
	.word nullsub_39+1
	.word BGScrollCB_BG1FastLeftScroll+1
	.word nullsub_38+1
	.word 0x0

	// 0xb
	.word nullsub_39+1
	.word BGScrollCB_BG1Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x0

	// 0xc
	.word nullsub_39+1
	.word BGScrollCB_BG1FastLeftScroll+1
	.word nullsub_38+1
	.word 0x0

	// 0xd
	.word nullsub_39+1
	.word BGScrollCB_BG1Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x0

	// 0xe
	.word nullsub_39+1
	.word BGScrollCB_BG1Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x0

	// 0xf
	.word nullsub_39+1
	.word nullsub_35+1
	.word nullsub_38+1
	.word 0x0

	// 0x10
	.word nullsub_39+1
	.word BGScrollCB_BG1Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x0

	// 0x11
	.word nullsub_39+1
	.word nullsub_35+1
	.word nullsub_38+1
	.word 0x0

	// 0x12
	.word nullsub_39+1
	.word BGScrollCB_BG1DownScroll+1
	.word nullsub_38+1
	.word 0x0

	// 0x13
	.word nullsub_39+1
	.word BGScrollCB_BG1Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x0

	// 0x14
	.word nullsub_39+1
	.word BGScrollCB_BG1SlowRightScroll+1
	.word nullsub_38+1
	.word 0x0

	// 0x15
	.word nullsub_39+1
	.word BGScrollCB_BG1Diagonal3to2Scroll+1
	.word nullsub_38+1
	.word 0x0
off_8080F94: .word off_8080F98
off_8080F98: .word off_8080FF0
	.word off_808100C
	.word 0x0
	.word off_8081028
	.word off_8081044
	.word off_8081060
	.word off_808107C
	.word off_8081098
	.word off_80810B4
	.word off_80810D0
	.word off_80810EC
	.word off_8081108
	.word off_8081124
	.word off_8081140
	.word off_808115C
	.word off_8081178
	.word off_8081194
	.word off_80811B0
	.word off_80811CC
	.word off_80811E8
	.word off_8081204
	.word off_8081194
off_8080FF0: .word off_8614DE0
	.word 0x6000020
	.word dword_8615028
	.word 0x800
	.word dword_86151BC
	.word palette_3001960
	.word 0x20
off_808100C: .word off_8615360
dword_8081010: .word 0x6000020
	.word dword_86154A8
	.word 0x800
	.word dword_86155E8
	.byte 0x60, 0x19, 0x0, 0x3, 0x20, 0x0, 0x0, 0x0
off_8081028: .word off_861578C
	.word 0x6000020
	.word dword_861595C
	.word 0x800
	.word 0x0
	.word 0x0
	.word 0x0
off_8081044: .word off_861602C
	.word 0x6000020
	.word dword_8616264
	.word 0x800
	.word byte_86163F4
	.word palette_3001960
	.word 0x20
off_8081060: .word off_8615BA4
	.word 0x6000020
	.word byte_8615D14
	.word 0x800
	.word byte_8615E88
	.word palette_3001960
	.word 0x20
off_808107C: .word off_8610B04
	.word 0x6000020
	.word byte_8610C18
	.word 0x800
	.word byte_8610D64
	.word palette_3001960
	.word 0x20
off_8081098: .word off_8616598
	.word 0x6000020
	.word byte_8616634
	.word 0x800
	.word byte_8616760
	.word palette_3001960
	.word 0x20
off_80810B4: .word off_8616598
	.word 0x6000020
	.word byte_8616634
	.word 0x800
	.word byte_8616EC4
	.word palette_3001960
	.word 0x20
off_80810D0: .word off_8617068
	.word 0x6000020
	.word dword_8617190
	.word 0x800
	.word byte_86172E4
	.word palette_3001960
	.word 0x20
off_80810EC: .word off_86116C8
	.word 0x6000020
	.word byte_861184C
	.word 0x800
	.word byte_86119C4
	.word palette_3001960
	.word 0x20
off_8081108: .word off_8617068
	.word 0x6000020
	.word dword_8617190
	.word 0x800
	.word byte_86185C8
	.word palette_3001960
	.word 0x20
off_8081124: .word off_8612A28
	.word 0x6000020
	.word dword_8612CF0
	.word 0x800
	.word dword_8612E84
	.word palette_3001960
	.word 0x20
off_8081140: .word off_8617068
	.word 0x6000020
	.word dword_8617190
	.word 0x800
	.word dword_861876C
	.word palette_3001960
	.word 0x20
off_808115C: .word off_8617068
	.word 0x6000020
	.word dword_8617190
	.word 0x800
	.word dword_8618AB4
	.word palette_3001960
	.word 0x20
off_8081178: .word dword_8618DFC
	.word 0x6000020
	.word byte_8618E40
	.word 0x800
	.word byte_8618F50
	.word palette_3001960
	.word 0x20
off_8081194: .word off_8613608
	.word 0x6000020
	.word dword_8613AAC
	.byte 0x0, 0x8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
off_80811B0: .word dword_8618DFC
	.word 0x6000020
	.word byte_8618E40
	.word 0x800
	.word dword_8618910
	.word palette_3001960
	.word 0x20
off_80811CC: .word off_8614444
	.word 0x6000020
	.word dword_8614A0C
	.word 0x800
	.word byte_8614BB8
	.word palette_3001960
	.word 0x20
off_80811E8: .word off_8617068
	.word 0x6000020
	.word dword_8617190
	.word 0x800
	.word dword_8618C58
	.byte 0x60, 0x19, 0x0, 0x3, 0x20, 0x0, 0x0, 0x0
off_8081204: .word off_8619174
	.word 0x6000020
	.word dword_8619474
	.byte 0x0, 0x8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
off_8081220: .word dword_8081278
	.word dword_8081278
	.word 0x0
	.word off_808127C
	.word dword_8081284
	.word dword_8081284
	.word off_8081288
	.word off_8081290
	.word off_8081290
	.word off_8081298
	.word off_80812A0
	.word off_80812A8
	.word off_80812B0
	.word off_80812B8
	.word off_80812C0
	.word off_80812C8
	.word off_80812D0
	.word off_80812DC
	.word off_80812E4
	.word off_80812EC
	.word off_80812F4
	.word off_80812FC
dword_8081278: .word 0xFFFFFFFF
off_808127C: .word off_806C20C
	.word 0xFFFFFFFF
dword_8081284: .word 0xFFFFFFFF
off_8081288: .word off_807F690
	.word 0xFFFFFFFF
off_8081290: .word off_807FAC0
	.word 0xFFFFFFFF
off_8081298: .word off_807FB98
	.word 0xFFFFFFFF
off_80812A0: .word off_807F900
	.word 0xFFFFFFFF
off_80812A8: .word off_807FE88
	.word 0xFFFFFFFF
off_80812B0: .word off_8080178
	.word 0xFFFFFFFF
off_80812B8: .word off_80802A8
	.word 0xFFFFFFFF
off_80812C0: .word off_80805C0
	.word 0xFFFFFFFF
off_80812C8: .word off_80808B0
	.word 0xFFFFFFFF
off_80812D0: .word off_80808D8
	.word byte_8069AF0
	.word 0xFFFFFFFF
off_80812DC: .word off_8080598
	.word 0xFFFFFFFF
off_80812E4: .word off_806A810
	.word 0xFFFFFFFF
off_80812EC: .word off_8080AA0
	.word 0xFFFFFFFF
off_80812F4: .word off_807EB18
	.word 0xFFFFFFFF
off_80812FC: .word off_80808D8
	.word off_8069C80
	.word 0xFFFFFFFF
	thumb_func_end sub_8080DEA

	thumb_local_start
sub_8081308:
	push {r4-r7,lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_BattleStatePtr]
	ldr r1, [r0,#0x3c]
	ldrb r0, [r1,#4]
	cmp r0, #0xff
	bne locret_808135C
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r1, [r0,#oGameState_MapGroup]
	ldrb r0, [r0,#oGameState_MapNumber]
	cmp r1, #0x80
	blt loc_808135E
	ldr r2, off_8081398 // =pt_808139C 
	sub r1, #0x80
	lsl r1, r1, #2
	ldr r2, [r2,r1]
	tst r2, r2
	beq loc_808135E
	ldrb r0, [r2,r0]
	cmp r0, #0x10
	bne locret_808135C
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	ldrh r1, [r1,#oGameState_MapGroup]
	ldr r3, off_8081364 // =word_8081368 
loc_808133C:
	ldrh r2, [r3]
	tst r2, r2
	beq locret_808135C
	cmp r1, r2
	bne loc_8081358
	push {r0}
	ldrh r2, [r3,#2]
	mov r0, r2
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	pop {r0}
	bne locret_808135C
	mov r0, #0x15
	b locret_808135C
loc_8081358:
	add r3, #4
	b loc_808133C
locret_808135C:
	pop {r4-r7,pc}
loc_808135E:
	mov r0, #7
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8081364: .word word_8081368
// format: map id, event flag
// these are all the maps that have the weather comp puzzle
// so mr. weather comp 1-3, and pavillion comp 3
word_8081368: .hword 0x83, 0xBE1, 0x183, 0xbe2, 0x283, 0xbe3, 0x285, 0xfd2
	.hword 0x0, 0x0
	thumb_func_end sub_8081308

	thumb_local_start
sub_808137C:
	push {r4-r7,lr}
	cmp r1, #0x80
	blt loc_8081392
	ldr r2, off_8081398 // =pt_808139C 
	sub r1, #0x80
	lsl r1, r1, #2
	ldr r2, [r2,r1]
	tst r2, r2
	beq loc_8081392
	ldrb r0, [r2,r0]
	pop {r4-r7,pc}
loc_8081392:
	mov r0, #7
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8081398: .word pt_808139C
pt_808139C:
	// <endpool> <endfile>
	.word byte_80813F8
	.word dword_80813FC
	.word dword_8081400
	.word dword_8081404
	.word 0x0
	.word byte_8081408
	.word 0x0
	.word 0x0
	.word byte_8081410
	.word 0x0
	.word 0x0
	.word 0x0
	.word byte_8081418
	.word byte_8081428
	.word 0x0
	.word 0x0
	.word dword_8081438
	.word dword_808143C
	.word dword_8081440
	.word dword_8081444
	.word dword_8081448
	.word dword_808144C
	.word byte_8081450
	thumb_func_end sub_808137C

/*For debugging purposes, connect comment at any range!*/
