
	thumb_func_start sub_8052688
sub_8052688:
	push {r4-r7,lr}
	mov r7, r10
	ldr r0, off_80526E4 // =off_8052244 
	ldr r1, [r7,#oToolkit_Unk2011bb0_Ptr]
	ldrb r2, [r5,#5]
	lsl r4, r2, #2
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r1,#0x14]
	ldrb r0, [r5,#4]
	ldrb r1, [r5,#5]
	bl sub_803037C
	ldrb r0, [r5,#4]
	ldrb r1, [r5,#5]
	bl sub_8030AA4
	ldr r0, [r5,#0x24]
	ldr r1, [r5,#0x28]
	ldr r2, [r5,#0x2c]
	ldrb r3, [r5,#4]
	ldrb r4, [r5,#5]
	bl camera_802FF4C
	bl sub_8030472
	ldr r0, off_80526E8 // =unk_2037800 
	bl sub_80028D4
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldr r0, off_80526F0 // =off_80526F4 
	ldr r0, [r0,r1]
	bl uncompSprite_8002906
	bl chatbox_uncompBasedOnMap_803FD08 // () -> int
	bl sub_80527F0
	ldr r0, off_80526EC // =off_8052EE8 
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	str r0, [r5,#0x64]
	pop {r4-r7,pc}
	.balign 4, 0x00
off_80526E4: .word off_8052244
off_80526E8: .word unk_2037800
off_80526EC: .word off_8052EE8
off_80526F0: .word off_80526F4
off_80526F4: .word byte_8052720
	.word dword_805272A
	.word dword_805272E
	.word dword_8052732
	.word byte_8052736
	.word byte_805273E
	.word dword_8052744
	.word off_8052748
	.word byte_8052754
	.word dword_805275C
	.word dword_8052760
byte_8052720: .byte 0x1C, 0x9, 0x1C, 0x10, 0x1C, 0x19, 0x1C, 0x23, 0xFF
	.byte 0xFF
dword_805272A: .word 0xFFFF091C
dword_805272E: .word 0xFFFF091C
dword_8052732: .word 0xFFFF091C
byte_8052736: .byte 0x1C, 0x10, 0x1C, 0x25, 0x18, 0x23, 0xFF, 0xFF
byte_805273E: .byte 0x1C, 0x10, 0x1C, 0x25, 0xFF, 0xFF
dword_8052744: .word 0xFFFF2A1C
off_8052748: .word off_81C241C
	.byte 0x1C, 0x10, 0x1C, 0x23, 0x18, 0x1F, 0xFF, 0xFF
byte_8052754: .byte 0x1C, 0x43, 0x1C, 0x7A, 0x18, 0x1C, 0xFF, 0xFF
dword_805275C: .word 0xFFFF1F18
dword_8052760: .word 0xFFFF2418
	thumb_func_end sub_8052688

	thumb_func_start sub_8052764
sub_8052764:
	push {lr}
	lsl r1, r1, #2
	ldr r0, off_8052774 // =off_8052778 
	ldr r0, [r0,r1]
	bl sub_8002354
	pop {pc}
	.balign 4, 0x00
off_8052774: .word off_8052778
off_8052778: .word off_80527A4
	.word off_80527AC
	.word off_80527B4
	.word off_80527BC
	.word off_80527C4
	.word off_80527CC
	.word off_80527D4
	.word off_80527DC
	.word dword_80527E4
	.word dword_80527E8
	.word dword_80527EC
off_80527A4: .word off_8052480
	.word 0xFFFFFFFF
off_80527AC: .word off_80524C0
	.word 0xFFFFFFFF
off_80527B4: .word off_8052480
	.word 0xFFFFFFFF
off_80527BC: .word off_80524C0
	.word 0xFFFFFFFF
off_80527C4: .word byte_80524E8
	.word 0xFFFFFFFF
off_80527CC: .word byte_80524E8
	.word 0xFFFFFFFF
off_80527D4: .word byte_8052510
	.word 0xFFFFFFFF
off_80527DC: .word byte_8052538
	.word 0xFFFFFFFF
dword_80527E4: .word 0xFFFFFFFF
dword_80527E8: .word 0xFFFFFFFF
dword_80527EC: .word 0xFFFFFFFF
	thumb_func_end sub_8052764

	thumb_func_start sub_80527F0
sub_80527F0:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_MapNumber]
	lsl r0, r0, #2
	ldr r1, off_8052804 // =off_8052808 
	ldr r0, [r1,r0]
	bl SpawnObjectsFromList
	pop {pc}
off_8052804: .word off_8052808
off_8052808: .word byte_8052834
	.word byte_80529B4
	.word byte_8052A6C
	.word byte_8052B24
	.word dword_8052BDC
	.word dword_8052BE0
	.word byte_8052BE4
	.word byte_8052C10
	.word byte_8052D54
	.word dword_8052D80
	// <endpool> <endfile>
	.word dword_8052D84
	thumb_func_end sub_80527F0

/*For debugging purposes, connect comment at any range!*/
