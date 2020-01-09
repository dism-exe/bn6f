
	thumb_func_start zeroFill_e2004348
zeroFill_e2004348:
	push {r4-r7,lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_Unk2004348_Ptr]
	ldr r1, dword_809F9D8 // =0x480
	bl ZeroFillByEightWords // (int a1, int a2) -> void
	pop {r4-r7,pc}
	.balign 4, 0
dword_809F9D8: .word 0x480
	thumb_func_end zeroFill_e2004348

	thumb_func_start sub_809F9DC
sub_809F9DC:
	push {r4-r7,lr}
	mov r4, r12
	push {r4}
	bl sub_809FD70
	ldr r4, InternetMysteryDataMapGroupEntries_p1 // =InternetMysteryDataMapGroupEntries 
loc_809F9E8:
	ldr r6, [r4]
	cmp r6, #1
	beq loc_809FA5E
	cmp r6, #0
	beq loc_809FA5A
	ldr r6, [r4,#4]
loc_809F9F4:
	ldr r7, [r6]
	cmp r7, #0
	beq loc_809FA5A
	mov r0, #0
	mov r12, r0
	sub sp, sp, #0x10
	mov r5, sp
	// mem
	mov r0, sp
	// byteCount
	mov r1, #0x10
	// byte
	mov r2, #0xff
	bl ByteFill // (u8 *mem, int byteCount, u8 byte) -> void
loc_809FA0C:
	ldrb r0, [r7]
	cmp r0, #0
	beq loc_809FA46
	cmp r0, #5
	bne loc_809FA42
	ldr r1, [r7,#8]
	bl sub_809FBF2
	mov r1, r0
	ldr r0, [r7,#4]
	mov r2, sp
	bl sub_809FA68
	strb r1, [r5]
	add r5, #1
	mov r2, r1
	mov r1, r0
	ldrh r0, [r7,#2]
	bl sub_809FACE
	ldrh r0, [r7,#2]
	mov r0, r0
	bl ClearEventFlag // (u16 entryFlagBitfield) -> void
	mov r0, r12
	add r0, #1
	mov r12, r0
loc_809FA42:
	add r7, #0xc
	b loc_809FA0C
loc_809FA46:
	add sp, sp, #0x10
	ldr r0, [r4]
	ldr r1, [r4,#4]
	sub r1, r6, r1
	lsr r1, r1, #2
	mov r2, r12
	bl sub_809FDCE
	add r6, #4
	b loc_809F9F4
loc_809FA5A:
	add r4, #8
	b loc_809F9E8
loc_809FA5E:
	bl sub_809FDE0
	pop {r4}
	mov r12, r4
	pop {r4-r7,pc}
	thumb_func_end sub_809F9DC

	thumb_local_start
sub_809FA68:
	push {r4-r7,lr}
	mov r5, r2
	sub sp, sp, #0x20
	mov r7, r1
	tst r0, r0
	beq loc_809FA90
	mov r4, #0
	mov r2, sp
loc_809FA78:
	ldrb r3, [r0]
	cmp r3, #0
	beq loc_809FA88
	ldrb r3, [r0,#1]
	strb r3, [r2,r4]
	add r4, #1
	add r0, #8
	b loc_809FA78
loc_809FA88:
	mov r0, sp
	mov r1, r4
	bl sub_8000E3A
loc_809FA90:
	mov r6, r0
	mov r1, r7
	mov r4, #0
	mov r2, sp
loc_809FA98:
	ldrb r3, [r1]
	cmp r3, #0
	beq loc_809FABC
	mov r0, r5
loc_809FAA0:
	ldrb r3, [r0]
	cmp r3, #0xff
	beq loc_809FAB2
	cmp r3, r4
	beq loc_809FAAE
	add r0, #1
	b loc_809FAA0
loc_809FAAE:
	mov r3, #0
	b loc_809FAB4
loc_809FAB2:
	ldrb r3, [r1,#1]
loc_809FAB4:
	strb r3, [r2,r4]
	add r4, #1
	add r1, #8
	b loc_809FA98
loc_809FABC:
	mov r0, sp
	mov r1, r4
	bl sub_8000E3A
	mov r7, r0
	add sp, sp, #0x20
	mov r0, r6
	mov r1, r7
	pop {r4-r7,pc}
	thumb_func_end sub_809FA68

	thumb_local_start
sub_809FACE:
	push {r4-r7,lr}
	push {r1,r2}
	bl sub_809FADE
	pop {r1,r2}
	strb r1, [r0]
	strb r2, [r0,#1]
	pop {r4-r7,pc}
	thumb_func_end sub_809FACE

	thumb_local_start
sub_809FADE:
	mov r2, r10
	ldr r2, [r2,#oToolkit_Unk2004348_Ptr]
	ldr r1, dword_809FAF0 // =0x1400 
	sub r0, r0, r1
	mov r1, #2
	mul r0, r1
	add r0, r0, r2
	mov pc, lr
	.byte 0, 0
dword_809FAF0: .word 0x1400
	thumb_func_end sub_809FADE

	thumb_func_start sub_809FAF4
sub_809FAF4:
	push {r4-r7,lr}
	ldr r4, InternetMysteryDataMapGroupEntries_p1 // =InternetMysteryDataMapGroupEntries 
	bl sub_809FB04
	ldr r4, RealWorldMysteryDataMapGroupEntries_p1 // =RealWorldMysteryDataMapGroupEntries
	bl sub_809FB04
	pop {r4-r7,pc}
	thumb_func_end sub_809FAF4

	thumb_local_start
sub_809FB04:
	push {r4-r7,lr}
.loop
	ldr r6, [r4,#oMysteryDataMapGroupEntry_MapGroup]
	cmp r6, #1
	beq .mysteryDataEntriesDone
	cmp r6, #0
	beq .doneCurrentMapGroupEntry
	ldr r6, [r4,#oMysteryDataMapGroupEntry_MapNumberPtr]
.mapGroupEntryLoop
	ldr r7, [r6]
	cmp r7, #0
	beq .doneCurrentMapGroupEntry
.mapNumberEntryLoop
	ldrb r0, [r7]
	cmp r0, #0
	beq .doneCurrentMapNumberEntry
	cmp r0, #GREEN_MYSTERY_DATA
	beq .skipGMD
	ldr r1, [r7,#oMysteryDataEntry_PlacementsPtr]
	ldr r2, [r7,#oMysteryDataEntry_ContentsPtr]
	ldrh r3, [r7,#oMysteryDataEntry_EventFlag]
	bl sub_809FB4C
	mov r2, r1
	mov r1, r0
	ldrh r0, [r7,#oMysteryDataEntry_EventFlag]
	bl sub_809FACE
	ldrh r0, [r7,#oMysteryDataEntry_EventFlag]
	mov r0, r0
	bl ClearEventFlag // (u16 entryFlagBitfield) -> void
.skipGMD
	add r7, #oMysteryDataEntry_Size
	b .mapNumberEntryLoop
.doneCurrentMapNumberEntry
	add r6, #4 // pointer size
	b .mapGroupEntryLoop
.doneCurrentMapGroupEntry
	add r4, #oMysteryDataMapGroupEntry_Size
	b .loop
.mysteryDataEntriesDone
	pop {r4-r7,pc}
	thumb_func_end sub_809FB04

	thumb_local_start
sub_809FB4C:
	push {r4-r7,lr}
	mov r5, r3
	mov r6, r1
	mov r7, r2

	cmp r0, #BLUE_MYSTERY_DATA
	beq .blueOrPurpleMysteryData

	cmp r0, #PURPLE_MYSTERY_DATA
	beq .blueOrPurpleMysteryData

	cmp r0, #UNK_MYSTERY_DATA_2
	beq .loc_809FBAE

	cmp r0, #UNK_MYSTERY_DATA_4
	beq .loc_809FBAE

.blueOrPurpleMysteryData
	push {r6,r7}
	mov r0, r5
	bl TestEventFlag // (u16 flag) -> !zf
	pop {r6,r7}
	beq .eventFlagSet
	mov r4, #0
.loc_809FB72:
	ldrb r3, [r6]
	cmp r3, #0
	beq .loc_809FB7E
	add r4, #1
	add r6, #8
	b .loc_809FB72
.loc_809FB7E:
	mov r0, r5
	bl sub_809FADE
	ldrb r6, [r0]
	add r6, #1
	cmp r6, r4
	blt .loc_809FB8E
	sub r6, r4, #1
.loc_809FB8E:
	mov r4, #0
.loc_809FB90:
	ldrb r3, [r7]
	cmp r3, #0
	beq .loc_809FB9C
	add r4, #1
	add r7, #8
	b .loc_809FB90
.loc_809FB9C:
	mov r0, r5
	bl sub_809FADE
	ldrb r7, [r0,#1]
	add r7, #1
	cmp r7, r4
	blt .loc_809FBAC
	sub r7, r4, #1
.loc_809FBAC:
	b .loc_809FBE0
.loc_809FBAE:
	mov r4, #0
.loc_809FBB0:
	ldrb r3, [r6]
	cmp r3, #0
	beq .loc_809FBBC
	add r4, #1
	add r6, #8
	b .loc_809FBB0
.loc_809FBBC:
	mov r0, #0
	cmp r0, r4
	blt .loc_809FBC4
	sub r0, r4, #1
.loc_809FBC4:
	mov r6, r0
	mov r4, #0
.loc_809FBC8:
	ldrb r3, [r7]
	cmp r3, #0
	beq .loc_809FBD4
	add r4, #1
	add r7, #8
	b .loc_809FBC8
.loc_809FBD4:
	mov r0, #0
	cmp r0, r4
	blt .loc_809FBDC
	sub r0, r4, #1
.loc_809FBDC:
	mov r7, r0
	b .loc_809FBE0
.loc_809FBE0:
	mov r0, r6
	mov r1, r7
	pop {r4-r7,pc}
.eventFlagSet
	mov r0, r5
	bl sub_809FADE
	ldrb r1, [r0,#1]
	ldrb r0, [r0]
	pop {r4-r7,pc}
	thumb_func_end sub_809FB4C

	thumb_local_start
sub_809FBF2:
	push {r2-r7,lr}
	mov r4, r1
	cmp r0, #5
	bne loc_809FC0A
	mov r0, #0
	lsl r1, r0, #3
	mov r2, #8
	mul r1, r2
	lsl r0, r0, #2
	add r0, r0, r1
	add r0, r0, r4
	pop {r2-r7,pc}
loc_809FC0A:
	mov r0, r1
	pop {r2-r7,pc}
	.balign 4, 0
RealWorldMysteryDataMapGroupEntries_p1: .word RealWorldMysteryDataMapGroupEntries
InternetMysteryDataMapGroupEntries_p1: .word InternetMysteryDataMapGroupEntries
	.word byte_2000210
	thumb_func_end sub_809FBF2

	thumb_func_start sub_809FC1C
sub_809FC1C:
	push {r4-r7,lr}
	mov r6, r0
	mov r7, r10
	ldr r7, [r7,#oToolkit_GameStatePtr]
	ldrb r0, [r7,#oGameState_MapGroup]
	ldrb r1, [r7,#oGameState_MapNumber]
	cmp r0, #0x80
	bge loc_809FC2E
	b loc_809FC34
loc_809FC2E:
	sub r0, #0x80
	ldr r4, InternetMysteryDataMapGroupEntries_p2 // =InternetMysteryDataMapGroupEntries
	b loc_809FC36
loc_809FC34:
	ldr r4, RealWorldMysteryDataMapGroupEntries_p2 // =RealWorldMysteryDataMapGroupEntries
loc_809FC36:
	lsl r0, r0, #3
	add r0, #4
	ldr r4, [r4,r0]
	lsl r1, r1, #2
	ldr r4, [r4,r1]
loc_809FC40:
	ldrb r0, [r4]
	cmp r0, #0
	beq loc_809FC8C
	ldrh r0, [r4,#2]
	cmp r0, r6
	beq loc_809FC50
	add r4, #0xc
	b loc_809FC40
loc_809FC50:
	ldrb r0, [r4]
	ldrb r1, [r4,#1]
	push {r0,r1}
	mov r0, r6
	bl sub_809FADE
	mov r7, r0
	ldr r2, [r4,#4]
	ldrb r3, [r7]
	mov r1, #8
	mul r1, r3
	add r2, r2, r1
	add r2, #2
	push {r2}
	ldrb r0, [r4]
	ldr r1, [r4,#8]
	bl sub_809FBF2
	mov r4, r0
	ldrb r3, [r7,#1]
	mov r1, #8
	mul r1, r3
	add r4, r4, r1
	ldrb r3, [r4]
	pop {r2}
	pop {r0,r1}
	mov r4, r6
	bl sub_809FE36
	b locret_809FC94
loc_809FC8C:
	mov r0, #0
	mov r1, #0xff
	mov r2, #0xff
	mov r3, #0xff
locret_809FC94:
	pop {r4-r7,pc}
	thumb_func_end sub_809FC1C

	thumb_func_start sub_809FC96
sub_809FC96:
	push {r4-r7,lr}
	mov r4, r12
	push {r4}
	mov r6, r0
	mov r5, #1
	bl GetCurPETNavi // () -> u8
	mov r1, #0x33 
	bl GetNaviStatsByte
	cmp r0, #1
	beq loc_809FCB0
	mov r5, #0
loc_809FCB0:
	mov r7, r10
	ldr r7, [r7,#oToolkit_GameStatePtr]
	ldrb r0, [r7,#oGameState_MapGroup]
	ldrb r1, [r7,#oGameState_MapNumber]
	cmp r0, #0x80
	bge loc_809FCBE
	b loc_809FCC4
loc_809FCBE:
	sub r0, #0x80
	ldr r4, InternetMysteryDataMapGroupEntries_p2 // =InternetMysteryDataMapGroupEntries 
	b loc_809FCC6
loc_809FCC4:
	ldr r4, RealWorldMysteryDataMapGroupEntries_p2 // =RealWorldMysteryDataMapGroupEntries
loc_809FCC6:
	lsl r0, r0, #3
	add r0, #4
	ldr r4, [r4,r0]
	lsl r1, r1, #2
	ldr r4, [r4,r1]
loc_809FCD0:
	ldrb r0, [r4]
	cmp r0, #0
	beq loc_809FD62
	ldrh r0, [r4,#2]
	cmp r0, r6
	beq loc_809FCE0
	add r4, #0xc
	b loc_809FCD0
loc_809FCE0:
	mov r0, r6
	bl sub_809FADE
	mov r7, r0
	ldrb r0, [r4]
	mov r12, r0
	ldr r1, [r4,#8]
	bl sub_809FBF2
	mov r1, r12
	cmp r1, #5
	bne loc_809FCFC
	tst r5, r5
	bne loc_809FD20
loc_809FCFC:
	mov r4, r0
	ldrb r3, [r7,#1]
	mov r0, r6
	bl sub_809FE44
	mov r1, #8
	mul r1, r3
	add r4, r4, r1
	ldr r0, [r4,#4]
	ldrb r1, [r4,#3]
	ldrb r2, [r4]
	sub r2, #1
	mov r3, #0xa
	mul r2, r3
	add r2, r12
	sub r2, #1
	ldrb r3, [r4]
	b loc_809FD6A
loc_809FD20:
	mov r4, r0
	ldrb r3, [r7,#1]
	mov r0, r6
	bl sub_809FE44
	mov r2, #0
loc_809FD2C:
	mov r1, #8
	mul r1, r2
	add r1, r1, r4
	ldrb r0, [r1]
	cmp r0, #3
	beq loc_809FD3C
	cmp r0, #7
	bne loc_809FD44
loc_809FD3C:
	sub r3, #1
	bge loc_809FD44
	mov r4, r1
	b loc_809FD4E
loc_809FD44:
	add r2, #1
	cmp r2, #8
	blt loc_809FD2C
	mov r2, #0
	b loc_809FD2C
loc_809FD4E:
	ldr r0, [r4,#4]
	ldrb r1, [r4,#3]
	ldrb r2, [r4]
	sub r2, #1
	mov r3, #0xa
	mul r2, r3
	add r2, r12
	sub r2, #1
	ldrb r3, [r4]
	b loc_809FD6A
loc_809FD62:
	mov r0, #0xff
	mov r1, #0xff
	mov r2, #0xff
	mov r3, #0xff
loc_809FD6A:
	pop {r4}
	mov r12, r4
	pop {r4-r7,pc}
	thumb_func_end sub_809FC96

	thumb_local_start
sub_809FD70:
	push {r4-r7,lr}
	ldr r6, off_809FE9C // =byte_2000210 
	mov r0, #0
	strb r0, [r6,#0x2]
	strh r0, [r6,#0x6]
	strh r0, [r6,#0x4]
	sub sp, sp, #0x20
	mov r4, sp
	ldr r7, GoldMysteryDataEntries_p
	mov r3, #0
loc_809FD84:
	ldr r0, [r7]
	tst r0, r0
	beq loc_809FD96
	ldr r0, [r7,#8]
	strb r0, [r4]
	add r7, #0xc
	add r3, #1
	add r4, #1
	b loc_809FD84
loc_809FD96:
	mov r0, sp
	mov r1, r3
	bl sub_8000E3A
	sub sp, sp, #0x10
	strb r0, [r6,#0x3]
	mov r1, #0xc
	mul r0, r1
	ldr r1, GoldMysteryDataEntries_p
	add r1, r1, r0
	ldr r0, [r1]
	strh r0, [r6,#0x4]
	mov r0, #0
	ldr r1, [r1,#4]
	mov r2, sp
	push {r0-r2}
	// mem
	mov r0, r2
	// byteCount
	mov r1, #0x10
	// byte
	mov r2, #0xff
	bl ByteFill // (u8 *mem, int byteCount, u8 byte) -> void
	pop {r0-r2}
	bl sub_809FA68
	strb r1, [r6,#0x2]
	add sp, sp, #0x10
	add sp, sp, #0x20
	pop {r4-r7,pc}
	thumb_func_end sub_809FD70

	thumb_local_start
sub_809FDCE:
	push {r4-r7,lr}
	ldr r6, off_809FE9C // =byte_2000210 
	lsl r1, r1, #8
	orr r0, r1
	ldrh r1, [r6,#0x4]
	cmp r0, r1
	bne locret_809FDDE
	strh r2, [r6,#0x6]
locret_809FDDE:
	pop {r4-r7,pc}
	thumb_func_end sub_809FDCE

	thumb_local_start
sub_809FDE0:
	push {r4-r7,lr}
	ldr r6, off_809FE9C // =byte_2000210 
	ldrh r0, [r6,#0x6]
	tst r0, r0
	beq locret_809FE34
	sub sp, sp, #0x10
	// mem
	mov r0, sp
	// byteCount
	mov r1, #0x10
	// byte
	mov r2, #0x20 
	bl ByteFill // (u8 *mem, int byteCount, u8 byte) -> void
	mov r0, sp
	ldrh r1, [r6,#0x6]
	bl sub_8000E3A
	add r7, r0, #1
	add sp, sp, #0x10
	ldr r4, InternetMysteryDataMapGroupEntries_p2 // =InternetMysteryDataMapGroupEntries 
	ldrb r0, [r6,#0x4]
	ldrb r1, [r6,#0x5]
	sub r0, #0x80
	lsl r0, r0, #3
	add r0, #4
	ldr r4, [r4,r0]
	lsl r1, r1, #2
	ldr r4, [r4,r1]
	mov r3, #0
loc_809FE16:
	ldrb r0, [r4]
	cmp r0, #0
	beq loc_809FE30
	cmp r0, #5
	bne loc_809FE2C
	add r3, #1
	cmp r3, r7
	bne loc_809FE2C
	ldrh r0, [r4,#2]
	strh r0, [r6,#0x6]
	b locret_809FE34
loc_809FE2C:
	add r4, #0xc
	b loc_809FE16
loc_809FE30:
	mov r0, #0
	strh r0, [r6,#0x6]
locret_809FE34:
	pop {r4-r7,pc}
	thumb_func_end sub_809FDE0

	thumb_local_start
sub_809FE36:
	push {r4-r7,lr}
	ldr r6, off_809FE9C // =byte_2000210 
	ldrh r7, [r6,#0x6]
	cmp r4, r7
	bne locret_809FE42
	add r0, #1
locret_809FE42:
	pop {r4-r7,pc}
	thumb_func_end sub_809FE36

	thumb_local_start
sub_809FE44:
	push {r5-r7,lr}
	ldr r6, off_809FE9C // =byte_2000210 
	ldrh r1, [r6,#0x6]
	cmp r0, r1
	bne locret_809FE5C
	ldrb r0, [r6,#0x3]
	mov r1, #0xc
	mul r0, r1
	ldr r4, GoldMysteryDataEntries_p // =GoldMysteryDataEntries 
	add r4, r4, r0
	ldr r4, [r4,#4]
	ldrb r3, [r6,#0x2]
locret_809FE5C:
	pop {r5-r7,pc}
	thumb_func_end sub_809FE44

	thumb_func_start sub_809FE5E
sub_809FE5E:
	push {r5-r7,lr}
	ldr r6, off_809FE9C // =byte_2000210 
	ldrb r0, [r6,#0x4]
	mov r1, #0x10
	svc 6
	mov r2, #0xa
	mul r0, r2
	add r0, r0, r1
	ldrb r1, [r6,#0x5]
	mov r2, #0
	mov r3, #0
	bl chatbox_8045EFC
	pop {r5-r7,pc}
	thumb_func_end sub_809FE5E

	thumb_local_start
sub_809FE7A:
	push {r4-r7,lr}
	movflag EVENT_1740
	bl TestEventFlagFromImmediate // (u8 eventGroupOffset, u8 byteAndFlagOffset) -> !zf
	beq locret_809FE8E
	ldr r3, off_809FE9C // =byte_2000210 
	ldrb r1, [r3,#0x4]
	ldrb r2, [r3,#0x5]
	ldrb r3, [r3,#0x2]
locret_809FE8E:
	// <endpool>
	pop {r4-r7,pc}
	thumb_func_end sub_809FE7A

GoldMysteryDataEntries_p: .word GoldMysteryDataEntries
RealWorldMysteryDataMapGroupEntries_p2: .word RealWorldMysteryDataMapGroupEntries
InternetMysteryDataMapGroupEntries_p2: .word InternetMysteryDataMapGroupEntries
off_809FE9C: .word byte_2000210
/*For debugging purposes, connect comment at any range!*/
