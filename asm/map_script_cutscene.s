
// possible file boundary
ScriptCmds8035808:
	.word MapScriptCmd_end+1
	.word MapScriptCmd_jump+1
	.word MapScriptCmd_jump_if_progress_in_range+1
	.word MapScriptCmd_jump_if_flag_set+1
	.word MapScriptCmd_jump_if_flag_range_set+1
	.word MapScriptCmd_jump_if_flag_clear+1
	.word MapScriptCmd_jump_if_flag_range_clear+1
	.word MapScriptCmd_jump_if_mem_equals+1
	.word MapScriptCmd_jump_if_unk_navicust_range+1
	.word MapScriptCmd_jump_if_chip_count_in_range+1
	.word MapScriptCmd_jump_if_eStruct200A008_unk01_equals+1
	.word MapScriptCmd_jump_if_eStruct200A008_unk01_not_equal+1
	.word MapScriptCmd_cmd_8035afa+1
	.word MapScriptCmd_cmd_8035b44+1
	.word MapScriptCmd_jump_if_game_state_0e_equals+1
	.word MapScriptCmd_jump_if_game_state_0e_not_equals+1
	.word MapScriptCmd_jump_if_current_navi_equals+1
	.word MapScriptCmd_jump_if_current_navi_not_equal+1
	.word MapScriptCmd_jump_if_player_z_equals+1
	.word MapScriptCmd_jump_if_player_z_not_equals+1
	.word MapScriptCmd_jump_if_game_state_44_equals+1
	.word MapScriptCmd_jump_if_game_state_44_not_equals+1
	.word MapScriptCmd_jump_if_map_group_compare_last_map_group+1
	.word MapScriptCmd_cmd_8035ca0+1
	.word MapScriptCmd_cmd_8035cd6+1
	.word MapScriptCmd_cmd_8035cf8+1
	.word MapScriptCmd_jump_if_fade_active+1
	.word MapScriptCmd_jump_if_eStruct200a6a0_initialized+1
	.word MapScriptCmd_jump_if_in_pet_menu+1
	.word MapScriptCmd_set_screen_fade+1
	.word MapScriptCmd_set_game_state_16_17+1
	.word MapScriptCmd_set_event_flag+1
	.word MapScriptCmd_clear_event_flag+1
	.word MapScriptCmd_set_event_flag_range+1
	.word MapScriptCmd_clear_event_flag_range+1
	.word MapScriptCmd_set_event_flag_list+1
	.word MapScriptCmd_clear_event_flag_list+1
	.word MapScriptCmd_call_native_function+1
	.word MapScriptCmd_run_cutscene_maybe+1
	.word MapScriptCmd_write_byte+1
	.word MapScriptCmd_write_hword+1
	.word MapScriptCmd_write_word+1
	.word MapScriptCmd_write_gamestate_byte+1
	.word MapScriptCmd_write_eStruct2001c04_byte+1
	.word MapScriptCmd_call_sub_8001B1C+1
	.word MapScriptCmd_call_sub_8001B1C_multiple+1
	.word MapScriptCmd_call_sub_8030A30_8035194+1
	.word MapScriptCmd_cmd_8035F6A+1
	.word MapScriptCmd_play_sound+1
	.word MapScriptCmd_play_music+1
	.word MapScriptCmd_sound_cmd_80380ea+1
	.word MapScriptCmd_sound_cmd_803810e+1
	.word MapScriptCmd_stop_sound+1
	.word MapScriptCmd_navicust_maybe_803813e+1
	.word MapScriptCmd_call_sub_8033FC0+1
	.word NULL
	.word MapScriptCmd_init_eStruct200a6a0+1
	.word MapScriptCmd_run_eStruct200a6a0_callback+1
	.word MapScriptCmd_write_script_struct_10_word+1
	.word MapScriptCmd_init_scenario_effect+1
	.word MapScriptCmd_end_scenario_effect+1
	.word MapScriptCmd_init_minigame_effect+1
	.word MapScriptCmd_end_minigame_effect+1
	.word NULL
	.word MapScriptCmd_spawn_or_free_objects+1
	.word MapScriptCmd_add_bbs_message_range+1
	.word MapScriptCmd_add_mail_range+1
	.word MapScriptCmd_cmd_8038346+1
	.word MapScriptCmd_add_request_range+1
	.word MapScriptCmd_rush_food_80384A8+1
	thumb_func_end sub_80357AE

	thumb_local_start
// 0x00
// return from script
MapScriptCmd_end: // 8035920
	mov r0, #0
	mov pc, lr
	thumb_func_end MapScriptCmd_end

	thumb_local_start
// 0x01 destination
// jump
MapScriptCmd_jump: // 8035924
	push {lr}
	mov r6, #1
	bl ReadMapScriptWord
	mov r7, r4
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_jump

	thumb_local_start
// 0x02 byte1 byte2 destination
// jump if byte1 <= progress byte <= byte2
MapScriptCmd_jump_if_progress_in_range: // 8035932
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_GameProgress]
	mov r6, #1
	bl ReadMapScriptByte
	mov r1, r4
	mov r6, #2
	bl ReadMapScriptByte
	cmp r0, r1
	blt .progressByteOutOfRange
	cmp r0, r4
	bgt .progressByteOutOfRange
	mov r6, #3
	bl ReadMapScriptWord
	mov r7, r4
	mov r0, #1
	pop {pc}
.progressByteOutOfRange
	add r7, #7
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_jump_if_progress_in_range

	thumb_local_start
// 0x03 byte flag destination
// jump if event flag in mem or immediate is set
MapScriptCmd_jump_if_flag_set: // 8035962
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	cmp r4, #0xff
	beq .immediateEventFlag
// event flag from memory
	ldrh r4, [r5,r4]
	b .gotEventFlag
.immediateEventFlag
	mov r6, #2
	bl ReadMapScriptHalfword
.gotEventFlag
	mov r0, r4
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq .eventFlagNotSet
	mov r6, #4
	bl ReadMapScriptWord
	mov r7, r4
	mov r0, #1
	pop {pc}
.eventFlagNotSet
	add r7, #8
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_jump_if_flag_set

	thumb_local_start
// 0x04 byte flag destination
// jump if (all) event flags in the event flag range are set
MapScriptCmd_jump_if_flag_range_set: // 8035992
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	mov r1, r4
	mov r6, #2
	bl ReadMapScriptHalfword
	mov r0, r4
	mov r2, r1
	bl TestEventFlagRange // (int a3, int a2) ->
	beq .eventFlagRangeNotSet
	mov r6, #4
	bl ReadMapScriptWord
	mov r7, r4
	mov r0, #1
	pop {pc}
.eventFlagRangeNotSet
	add r7, #8
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_jump_if_flag_range_set

	thumb_local_start
// 0x05 byte flag destination
// jump if event flag in mem or immediate is clear
MapScriptCmd_jump_if_flag_clear: // 80359BE
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	cmp r4, #0xff
	beq .immediateEventFlag
	ldrh r4, [r5,r4]
	b .gotEventFlag
.immediateEventFlag
	mov r6, #2
	bl ReadMapScriptHalfword
.gotEventFlag
	mov r0, r4
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne .eventFlagSet
	mov r6, #4
	bl ReadMapScriptWord
	mov r7, r4
	mov r0, #1
	pop {pc}
.eventFlagSet
	add r7, #8
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_jump_if_flag_clear

	thumb_local_start
// 0x06 byte flag destination
// jump if not all event flags in the event flag range are set
MapScriptCmd_jump_if_flag_range_clear: // 80359EE
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	mov r1, r4
	mov r6, #2
	bl ReadMapScriptHalfword
	mov r0, r4
	mov r2, r1
	bl TestEventFlagRange // (int a3, int a2) ->
	bne .atLeastOneEventFlagSet
	mov r6, #4
	bl ReadMapScriptWord
	mov r7, r4
	mov r0, #1
	pop {pc}
.atLeastOneEventFlagSet
	add r7, #8
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_jump_if_flag_range_clear

	thumb_local_start
// 0x07 0x00 word destination byte
// 0x07 0x01 word destination hword
// 0x07 0x02 word destination word
// jump if [word] == param
// this command is variable length
MapScriptCmd_jump_if_mem_equals: // 8035A1A
	push {lr}
	mov r6, #2
	bl ReadMapScriptWord // word
	mov r0, r4
	mov r6, #6
	bl ReadMapScriptWord // destination
	mov r1, r4
	mov r6, #1
	bl ReadMapScriptByte // type
	cmp r4, #1
	beq .readHword
	cmp r4, #2
	beq .readWord
// byte
	mov r6, #10
	bl ReadMapScriptByte
	ldrb r0, [r0]
	cmp r0, r4
	beq .doScriptJump
	mov r4, #11 // end of variable size script command
	b .addToNextCommand
.readHword
	mov r6, #10
	bl ReadMapScriptHalfword
	ldrh r0, [r0]
	cmp r0, r4
	beq .doScriptJump
	mov r4, #12
	b .addToNextCommand
.readWord
	mov r6, #10
	bl ReadMapScriptWord
	ldr r0, [r0]
	cmp r0, r4
	beq .doScriptJump
	mov r4, #14
.addToNextCommand
	add r7, r7, r4
	mov r0, #1
	pop {pc}
.doScriptJump
	mov r7, r1
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_jump_if_mem_equals

	thumb_local_start
// 0x08 byte1 byte2 byte3 destination
// jump if byte2 < CheckKeyItem(byte1) < byte3
MapScriptCmd_jump_if_unk_navicust_range: // 8035A74
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	mov r0, r4
	bl CheckKeyItem
	mov r6, #2
	bl ReadMapScriptByte
	mov r1, r4
	mov r6, #3
	bl ReadMapScriptByte
	cmp r0, r1
	blt .unkByteOutOfRange
	cmp r0, r4
	bgt .unkByteOutOfRange
	mov r6, #4
	bl ReadMapScriptWord
	mov r7, r4
	mov r0, #1
	pop {pc}
.unkByteOutOfRange
	add r7, #8
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_jump_if_unk_navicust_range

	thumb_local_start
// 0x09 hword byte1 byte2 byte3 destination
// if byte1 == 0xff:
//	 jump if byte2 < GetTotalChipCount(hword) < byte3
// else:
//	 jump if byte2 < GetChipCountOfCode(byte1, hword) < byte3
//	 GetChipCountOfCode calls getOffsetToQuantityOfChipCodeMaybe_8021c7c
// related to chips
//
MapScriptCmd_jump_if_chip_count_in_range: // 8035AAA
	push {lr}
	mov r6, #3
	bl ReadMapScriptByte
	cmp r4, #0xff
	bne .getChipCountOfCode
// get total chip count
	mov r6, #1
	bl ReadMapScriptHalfword
	mov r0, r4
	bl GetTotalChipCount
	b .checkChipCountInRange
.getChipCountOfCode
	mov r1, r4
	mov r6, #1
	bl ReadMapScriptHalfword
	mov r0, r4
	bl GetChipCountOfCode
.checkChipCountInRange
	mov r6, #4
	bl ReadMapScriptByte
	mov r1, r4
	mov r6, #5
	bl ReadMapScriptByte
	cmp r0, r1
	blt .chipCountOutOfRange
	cmp r0, r4
	bgt .chipCountOutOfRange
	mov r6, #6
	bl ReadMapScriptWord
	mov r7, r4
	mov r0, #1
	pop {pc}
.chipCountOutOfRange
	add r7, #10
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_jump_if_chip_count_in_range

	thumb_local_start
// 0x0c byte1 signedbyte2 destination
// sub_8031A7A(complex) returns r0, r1. if r0 == 0, r1 is used in comparison
// jump if byte1 == compByte
MapScriptCmd_cmd_8035afa: // 8035afa
	push {lr}
	mov r6, #2
	bl ReadMapScriptSignedByte
	mov r3, r10
	ldr r3, [r3,#oToolkit_GameStatePtr]
	ldr r3, [r3,#oGameState_OverworldPlayerObjectPtr]
	ldr r0, [r3,#0x1c]
	ldr r1, [r3,#0x20]
	ldr r2, [r3,#0x24]
	lsl r4, r4, #0x10
	add r2, r2, r4
	sub sp, sp, #0xc
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	mov r0, sp
	bl sub_8031A7A
	add sp, sp, #0xc
	tst r0, r0
	bne loc_8035B28
	mov r0, r1
loc_8035B28:
	mov r6, #1
	bl ReadMapScriptByte
	cmp r0, r4
	bne loc_8035B3E
	mov r6, #3
	bl ReadMapScriptWord
	mov r7, r4
	mov r0, #1
	pop {pc}
loc_8035B3E:
	add r7, #7
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_cmd_8035afa

	thumb_local_start
// 0x0d byte1 signedbyte2 destination
// like 0x0c except jumps if not equal
MapScriptCmd_cmd_8035b44: // 8035b44
	push {lr}
	mov r6, #2
	bl ReadMapScriptSignedByte
	mov r3, r10
	ldr r3, [r3,#oToolkit_GameStatePtr]
	ldr r3, [r3,#oGameState_OverworldPlayerObjectPtr]
	ldr r0, [r3,#0x1c]
	ldr r1, [r3,#0x20]
	ldr r2, [r3,#0x24]
	lsl r4, r4, #0x10
	add r2, r2, r4
	sub sp, sp, #0xc
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	mov r0, sp
	bl sub_8031A7A
	add sp, sp, #0xc
	tst r0, r0
	bne loc_8035B72
	mov r0, r1
loc_8035B72:
	mov r6, #1
	bl ReadMapScriptByte
	cmp r0, r4
	beq loc_8035B88
	mov r6, #3
	bl ReadMapScriptWord
	mov r7, r4
	mov r0, #1
	pop {pc}
loc_8035B88:
	add r7, #7
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_cmd_8035b44

	thumb_local_start
// 0x0e byte1 destination
// jump if byte1 == eGameState_Unk_0e
MapScriptCmd_jump_if_game_state_0e_equals: // 8035b8e
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_Unk_0e]
	mov r6, #1
	bl ReadMapScriptByte
	cmp r0, r4
	bne .notEqual
	mov r6, #2
	bl ReadMapScriptWord
	mov r7, r4
	mov r0, #1
	pop {pc}
.notEqual
	add r7, #6
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_jump_if_game_state_0e_equals

	thumb_local_start
// 0x0f byte1 destination
// jump if byte1 != eGameStateUnk_0e
MapScriptCmd_jump_if_game_state_0e_not_equals: // 8035BB2
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_Unk_0e]
	mov r6, #1
	bl ReadMapScriptByte
	cmp r0, r4
	beq loc_8035BD0
	mov r6, #2
	bl ReadMapScriptWord
	mov r7, r4
	mov r0, #1
	pop {pc}
loc_8035BD0:
	add r7, #6
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_jump_if_game_state_0e_not_equals

	thumb_local_start
// 0x12 signedhword1 destination
// jump if (eOWPlayerObject_Z >> 0x10) == signedhword1
MapScriptCmd_jump_if_player_z_equals: // 8035BD6
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldr r0, [r0,#oGameState_OverworldPlayerObjectPtr]
	ldr r0, [r0,#oOWPlayerObject_Z]
	asr r0, r0, #0x10
	mov r6, #1
	bl ReadMapScriptSignedHalfword
	cmp r0, r4
	bne .notEqual
	mov r6, #3
	bl ReadMapScriptWord
	mov r7, r4
	mov r0, #1
	pop {pc}
.notEqual
	add r7, #7
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_jump_if_player_z_equals

	thumb_local_start
// 0x13 signedhword1 destination
// jump if (eOWPlayerObjectUnk_24 >> 0x10) != signedhword1
// eOWPlayerObjectUnk_24 is signed
MapScriptCmd_jump_if_player_z_not_equals: // 8035BFE
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldr r0, [r0,#oGameState_OverworldPlayerObjectPtr]
	ldr r0, [r0,#oOWPlayerObject_Z]
	asr r0, r0, #0x10
	mov r6, #1
	bl ReadMapScriptSignedHalfword
	cmp r0, r4
	beq loc_8035C20
	mov r6, #3
	bl ReadMapScriptWord
	mov r7, r4
	mov r0, #1
	pop {pc}
loc_8035C20:
	add r7, #7
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_jump_if_player_z_not_equals

	thumb_local_start
// 0x14 hword1 destination
// jump if hword1 == eGameStateUnk_44
MapScriptCmd_jump_if_game_state_44_equals: // 8035C26
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldr r0, [r0,#oGameState_Unk_44]
	mov r6, #1
	bl ReadMapScriptHalfword
	cmp r0, r4
	bne loc_8035C44
	mov r6, #3
	bl ReadMapScriptWord
	mov r7, r4
	mov r0, #1
	pop {pc}
loc_8035C44:
	add r7, #7
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_jump_if_game_state_44_equals

	thumb_local_start
// 0x15 hword1 destination
// jump if hword1 != eGameStateUnk_44
MapScriptCmd_jump_if_game_state_44_not_equals: // 8035C4A
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldr r0, [r0,#oGameState_Unk_44]
	mov r6, #1
	bl ReadMapScriptHalfword
	cmp r0, r4
	beq loc_8035C68
	mov r6, #3
	bl ReadMapScriptWord
	mov r7, r4
	mov r0, #1
	pop {pc}
loc_8035C68:
	add r7, #7
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_jump_if_game_state_44_not_equals

	thumb_local_start
// 0x16 0x01 destination
// jump if eGameStateMapGroup == eGameStateLastMapGroup
// 0x16 !0x01 destination
// jump if eGameStateMapGroup != eGameStateLastMapGroup
MapScriptCmd_jump_if_map_group_compare_last_map_group: // 8035C6E
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	ldrh r0, [r1,#oGameState_MapGroup]
	ldrh r1, [r1,#oGameState_LastMapGroup]
	cmp r4, #1
	beq .compareEqual
// jump if not equal
	cmp r0, r1
	bne .doScriptJump
	b .comparisonFailed
.compareEqual
	cmp r0, r1
	beq .doScriptJump
	b .comparisonFailed
.doScriptJump
	mov r6, #2
	bl ReadMapScriptWord
	mov r7, r4
	mov r0, #1
	pop {pc}
.comparisonFailed
	add r7, #6
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_jump_if_map_group_compare_last_map_group

	thumb_local_start
// 0x17 destination1 destination5 destination9
// jumptable, using [[eToolkit_S20047CC_Ptrs] + 0x4c] as the base index
// default is destination1
// eToolkit_S20047CC_Ptrs
MapScriptCmd_cmd_8035ca0: // 8035CA0
	push {lr}
	mov r0, #0
	mov r1, #0x4c
	bl GetNaviStatsByte
	cmp r0, #1
	beq loc_8035CBE
	cmp r0, #2
	beq loc_8035CCA
	mov r6, #1
	bl ReadMapScriptWord
	mov r7, r4
	mov r0, #1
	pop {pc}
loc_8035CBE:
	mov r6, #5
	bl ReadMapScriptWord
	mov r7, r4
	mov r0, #1
	pop {pc}
loc_8035CCA:
	mov r6, #9
	bl ReadMapScriptWord
	mov r7, r4
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_cmd_8035ca0

	thumb_local_start
// 0x18 byte1 destination2
// jump if byte1 == sub_800B734()
// sub_800B734 performs a summation on the 12 halfwords at word_2000FA0
// returns 0 if the summation is greater than 0x2a30
// returns 1 if 0x1c20 < summation <= 0x2a30
// else returns 2
MapScriptCmd_cmd_8035cd6: // 8035cd6
	push {lr}
	bl sub_800B734
	mov r6, #1
	bl ReadMapScriptByte
	cmp r0, r4
	bne loc_8035CF2
	mov r6, #2
	bl ReadMapScriptWord
	mov r7, r4
	mov r0, #1
	pop {pc}
loc_8035CF2:
	add r7, #6
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_cmd_8035cd6

	thumb_local_start
// 0x19 byte1 destination2
// same as above but performs !=
MapScriptCmd_cmd_8035cf8:
	push {lr}
	bl sub_800B734
	mov r6, #1
	bl ReadMapScriptByte
	cmp r0, r4
	beq loc_8035D14
	mov r6, #2
	bl ReadMapScriptWord
	mov r7, r4
	mov r0, #1
	pop {pc}
loc_8035D14:
	add r7, #6
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_cmd_8035cf8

	thumb_local_start
// 0x1a destination1
// jump if palette fade is active
MapScriptCmd_jump_if_fade_active: // 8035D1A
	push {lr}
	mov r6, #1
	bl ReadMapScriptWord
	bl IsScreenFadeActive // () -> zf
	beq loc_8035D2E
	add r7, #5
	mov r0, #1
	pop {pc}
loc_8035D2E:
	mov r7, r4
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_jump_if_fade_active

	thumb_local_start
// 0x1b destination1
// jump if [eStruct200a6a0] != 0
MapScriptCmd_jump_if_eStruct200a6a0_initialized: // 8035D34
	push {lr}
	mov r6, #1
	bl ReadMapScriptWord
	bl Is_eStruct200a6a0_Initialized
	bne loc_8035D48
	add r7, #5
	mov r0, #1
	pop {pc}
loc_8035D48:
	mov r7, r4
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_jump_if_eStruct200a6a0_initialized

	thumb_local_start
// 0x1c destination1
// jump if the PET menu or a submenu is open (ePETMenuData+5)
MapScriptCmd_jump_if_in_pet_menu: // 8035D4E
	push {lr}
	mov r6, #1
	bl ReadMapScriptWord
	mov r0, #1
	bl TestPETMenuDataFlag
	bne loc_8035D64
	add r7, #5
	mov r0, #1
	pop {pc}
loc_8035D64:
	mov r7, r4
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_jump_if_in_pet_menu

	thumb_local_start
// 0x1d byte1 byte2 byte3
// if byte1 == 0xff:
//     SetScreenFade(byte2, byte3)
// else:
//     SetScreenFade([eMapScriptState + byte1], [eUnkMapScriptState_2011e60 + byte1 + 1])
MapScriptCmd_set_screen_fade: // 8035D6A
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	cmp r4, #0xff
	beq loc_8035D7E
	ldrb r0, [r5,r4]
	add r4, #1
	ldrb r1, [r5,r4]
	b loc_8035D8E
loc_8035D7E:
	mov r6, #2
	bl ReadMapScriptByte
	mov r0, r4
	mov r6, #3
	bl ReadMapScriptByte
	mov r1, r4
loc_8035D8E:
	bl SetScreenFade // (int a1, int a2) -> void
	add r7, #4
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_set_screen_fade

	thumb_local_start
// 0x1e byte1 byte2
// store byte1 and byte2 in eGameState_Unk_16 and eGameState_Unk_17 respectively
MapScriptCmd_set_game_state_16_17: // 8035D98
	push {lr}
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	mov r6, #1
	bl ReadMapScriptByte
	strb r4, [r1,#oGameState_Unk_16]
	mov r6, #2
	bl ReadMapScriptByte
	strb r4, [r1,#oGameState_Unk_17]
	add r7, #3
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_set_game_state_16_17

	thumb_local_start
// 0x1f byte1 hword2
// set event flag
// byte1 == 0xff: event flag is hword2
// byte1 != 0xff: event flag is the word in script mem with byte1 as offset
MapScriptCmd_set_event_flag: // 8035DB4
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	cmp r4, #0xff
	beq loc_8035DC4
	ldrh r4, [r5,r4]
	b loc_8035DCA
loc_8035DC4:
	mov r6, #2
	bl ReadMapScriptHalfword
loc_8035DCA:
	// bitfield
	mov r0, r4
	bl SetEventFlag
	add r7, #4
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_set_event_flag

	thumb_local_start
// 0x20 byte1 hword2
// clear event flag
// byte1 == 0xff: event flag is hword2
// byte1 != 0xff: event flag is the word in script mem with byte1 as offset
MapScriptCmd_clear_event_flag: // 8035DD6
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	cmp r4, #0xff
	beq loc_8035DE6
	ldrh r4, [r5,r4]
	b loc_8035DEC
loc_8035DE6:
	mov r6, #2
	bl ReadMapScriptHalfword
loc_8035DEC:
	mov r0, r4
	bl ClearEventFlag // (u16 entryFlagBitfield) -> void
	add r7, #4
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_clear_event_flag

	thumb_local_start
// 0x21 byte1 hword2
// set byte1 event flags starting at the event flag hword2
MapScriptCmd_set_event_flag_range: // 8035DF8
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	mov r1, r4
	mov r6, #2
	bl ReadMapScriptHalfword
	mov r0, r4
	mov r2, r1
	bl SetEventFlagRange // (u16 entryFlagBitfield) -> void
	add r7, #4
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_set_event_flag_range

	thumb_local_start
// 0x22 byte1 hword2
// clear byte1 event flags starting at the event flag hword2
MapScriptCmd_clear_event_flag_range: // 8035E16
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	mov r1, r4
	mov r6, #2
	bl ReadMapScriptHalfword
	mov r0, r4
	mov r2, r1
	bl ClearEventFlagRange // (u16 entryFlagBitfield) -> void
	add r7, #4
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_clear_event_flag_range

	thumb_local_start
// 0x23 word1
// set the list of event flags at word1, terminated by (presumably) -1
MapScriptCmd_set_event_flag_list: // 8035E34
	push {lr}
	mov r6, #1
	bl ReadMapScriptWord
loc_8035E3C:
	mov r1, #0
	ldrsh r0, [r4,r1]
	cmp r0, #0
	blt loc_8035E4E
	mov r0, r0
	bl SetEventFlag
	add r4, #2
	b loc_8035E3C
loc_8035E4E:
	add r7, #5
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_set_event_flag_list

	thumb_local_start
// 0x24 word1
// clear the list of event flags at word1, terminated by (presumably) -1
MapScriptCmd_clear_event_flag_list: // 8035E54
	push {lr}
	mov r6, #1
	bl ReadMapScriptWord
loc_8035E5C:
	mov r1, #0
	ldrsh r0, [r4,r1]
	cmp r0, #0
	blt loc_8035E6E
	mov r0, r0
	bl ClearEventFlag // (u16 entryFlagBitfield) -> void
	add r4, #2
	b loc_8035E5C
loc_8035E6E:
	add r7, #5
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_clear_event_flag_list

	thumb_local_start
// 0x25 word1 word5
// call the asm function word1 with word2 in r0
MapScriptCmd_call_native_function: // 8035E74
	push {lr}
	mov r6, #5
	bl ReadMapScriptWord
	mov r0, r4
	mov r6, #1
	bl ReadMapScriptWord
	mov lr, pc
	bx r4
	add r7, #9
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_call_native_function

	thumb_local_start
// 0x26 word1 word5
// call init_s_02011C50_8036E90 with r0=word1 and r1=word5
// important script function
MapScriptCmd_run_cutscene_maybe: // 8035E8E
	push {lr}
	mov r6, #5
	bl ReadMapScriptWord
	mov r1, r4
	mov r6, #1
	bl ReadMapScriptWord
	mov r0, r4
	bl init_s_02011C50_8036E90
	add r7, #9
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_run_cutscene_maybe

	thumb_local_start
// 0x27 word1 byte5
// [word1] = byte5
MapScriptCmd_write_byte: // 8035EAA
	push {lr}
	mov r6, #1
	bl ReadMapScriptWord
	mov r0, r4
	mov r6, #5
	bl ReadMapScriptByte
	strb r4, [r0]
	add r7, #6
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_write_byte

	thumb_local_start
// 0x28 word1 hword5
// [word1] = hword5
MapScriptCmd_write_hword: // 8035EC2
	push {lr}
	mov r6, #1
	bl ReadMapScriptWord
	mov r0, r4
	mov r6, #5
	bl ReadMapScriptHalfword
	strh r4, [r0]
	add r7, #7
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_write_hword

	thumb_local_start
// 0x29 word1 word5
// [word1] = word5
MapScriptCmd_write_word: // 8035EDA
	push {lr}
	mov r6, #1
	bl ReadMapScriptWord
	mov r0, r4
	mov r6, #5
	bl ReadMapScriptWord
	str r4, [r0]
	add r7, #9
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_write_word

	thumb_local_start
// 0x2a byte1 byte2
// [eGameState[byte1]] = byte2
MapScriptCmd_write_gamestate_byte: // 8035EF2
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	mov r6, #1
	bl ReadMapScriptByte
	add r0, r0, r4
	mov r6, #2
	bl ReadMapScriptByte
	strb r4, [r0]
	add r7, #3
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_write_gamestate_byte

	thumb_local_start
// 0x2b byte1 byte2
// [eStruct2001c04[byte1]] = byte2
MapScriptCmd_write_eStruct2001c04_byte: // 8035F0E
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_S2001c04_Ptr]
	mov r6, #1
	bl ReadMapScriptByte
	add r0, r0, r4
	mov r6, #2
	bl ReadMapScriptByte
	strb r4, [r0]
	add r7, #3
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_write_eStruct2001c04_byte

	thumb_local_start
// 0x2c word1
// do sub_8001B1C(r0=word1)
MapScriptCmd_call_sub_8001B1C: // 8035F2A
	push {lr}
	mov r6, #1
	bl ReadMapScriptWord
	mov r0, r4
	bl sub_8001B1C
	add r7, #5
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_call_sub_8001B1C

	thumb_local_start
// 0x2d word1
// do sub_8002354(r0=word1)
// r0 is a list of arguments for r1, terminated by negative
MapScriptCmd_call_sub_8001B1C_multiple: // 8035F3E
	push {lr}
	mov r6, #1
	bl ReadMapScriptWord
	mov r0, r4
	bl sub_8002354
	add r7, #5
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_call_sub_8001B1C_multiple

	thumb_local_start
// 0x2e
// call sub_8030A30, then sub_8035194
// uses map group/number as args
MapScriptCmd_call_sub_8030A30_8035194: // 8035F52
	push {lr}
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	ldrb r0, [r1,#oGameState_MapGroup]
	ldrb r1, [r1,#oGameState_MapNumber]
	bl map_8030A30
	bl sub_8035194
	add r7, #1
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_call_sub_8030A30_8035194

	thumb_local_start
// 0x2f byte1
// if byte1 == 0xff, call sub_8001B6C with r0 as 0x0 to 0x11
// else, call sub_8001B6C with r0=byte1
MapScriptCmd_cmd_8035F6A: // 8035F6A
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	mov r0, r4
	cmp r0, #0xff
	beq loc_8035F7A
	b loc_8035F8E
loc_8035F7A:
	mov r4, #0
loc_8035F7C:
	mov r0, r4
	bl sub_8001B6C
	add r4, #1
	cmp r4, #0x12
	blt loc_8035F7C
	add r7, #2
	mov r0, #1
	pop {pc}
loc_8035F8E:
	bl sub_8001B6C
	add r7, #2
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_cmd_8035F6A

	thumb_local_start
// 0x36 byte1 byte2
// call sub_8033FC0
// arg is either from mem or byte2
MapScriptCmd_call_sub_8033FC0: // 8035F98
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	cmp r4, #0xff
	beq loc_8035FA8
	ldrb r0, [r5,r4]
	b loc_8035FB0
loc_8035FA8:
	mov r6, #2
	bl ReadMapScriptByte
	mov r0, r4
loc_8035FB0:
	bl sub_8033FC0
	add r7, #3
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_call_sub_8033FC0

	thumb_local_start
// 0x3a  0x01
// store 0x0 at the script struct + 0x10
// 0x3a !0x01 word2
// store word2 at the script struct + 0x10
MapScriptCmd_write_script_struct_10_word: // 8035FBA
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	cmp r4, #1
	beq loc_8035FD4
	mov r6, #2
	bl ReadMapScriptWord
	str r4, [r5,#0x10]
	add r7, #6
	mov r0, #1
	pop {pc}
loc_8035FD4:
	mov r0, #0
	str r0, [r5,#0x10]
	add r7, #2
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_write_script_struct_10_word

	thumb_local_start
// 0x40 0x01 byte2
// call FreeAllObjectsOfSpecifiedTypes(r0=byte2)
// 0x40 !0x01 word2
// call SpawnObjectsFromList(r0=word2)
// both functions are relaed to object initialization
MapScriptCmd_spawn_or_free_objects: // 8035FDE
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	cmp r4, #1
	beq loc_8035FFC
	mov r6, #2
	bl ReadMapScriptWord
	mov r0, r4
	bl SpawnObjectsFromList
	add r7, #6
	mov r0, #1
	pop {pc}
loc_8035FFC:
	mov r6, #2
	bl ReadMapScriptByte
	mov r0, r4
	bl FreeAllObjectsOfSpecifiedTypes
	add r7, #3
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_spawn_or_free_objects

	thumb_func_start map_script_overworld_803600E
// called once
map_script_overworld_803600E:
	push {r4-r7,lr}
	mov r4, r12
	push {r4}
	mov r4, r0
	mov r6, r1
	ldr r5, off_8036090 // =eMapScriptState
	// memBlock
	mov r0, r5
	// size
	mov r1, #0x14
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	str r4, [r5,#oMapScriptState_OnInitMapScriptPtr] // (dword_2011E68 - 0x2011e60)
	str r6, [r5,#oMapScriptState_ContinuousMapScriptPtr] // (dword_2011E6C - 0x2011e60)
	ldr r6, off_803608C // =ScriptCmds8035808
	mov r12, r6
	mov r7, r4
loc_803602C:
	mov r6, r12
	ldrb r0, [r7]
	lsl r0, r0, #2
	ldr r0, [r6,r0]
	mov lr, pc
	bx r0
	bne loc_803602C
	pop {r4}
	mov r12, r4
	pop {r4-r7,pc}
	thumb_func_end map_script_overworld_803600E

	thumb_func_start sub_8036040
// called every frame
sub_8036040:
	push {r4-r7,lr}
	mov r4, r12
	push {r4}
	ldr r5, off_8036090 // =eMapScriptState
	ldr r0, [r5,#oMapScriptState_ContinuousMapScriptPtr] // (dword_2011E6C - 0x2011e60)
	ldr r6, off_803608C // =ScriptCmds8035808
	mov r12, r6
	mov r7, r0
loc_8036050:
	mov r6, r12
	ldrb r0, [r7]
	lsl r0, r0, #2
	ldr r0, [r6,r0]
	mov lr, pc
	bx r0
	bne loc_8036050
	pop {r4}
	mov r12, r4
	pop {r4-r7,pc}
	thumb_func_end sub_8036040

	thumb_func_start map_script_overworld_8036064
// called every frame
map_script_overworld_8036064:
	push {r4-r7,lr}
	mov r4, r12
	push {r4}
	ldr r5, off_8036090 // =eMapScriptState
	ldr r0, [r5,#oMapScriptState_SecondaryContinuousMapScriptPtr] // (dword_2011E70 - 0x2011e60)
	tst r0, r0
	beq loc_8036086
	ldr r6, off_803608C // =ScriptCmds8035808
	mov r12, r6
	mov r7, r0
loc_8036078:
	mov r6, r12
	ldrb r0, [r7]
	lsl r0, r0, #2
	ldr r0, [r6,r0]
	mov lr, pc
	bx r0
	bne loc_8036078
loc_8036086:
	pop {r4}
	mov r12, r4
	pop {r4-r7,pc}
off_803608C: .word ScriptCmds8035808
off_8036090: .word eMapScriptState
	thumb_func_end map_script_overworld_8036064

	thumb_local_start
/* (r6:uint offsetToValue, r7:u8 * curScriptCmdPtr) -> r4:u8 result
	preserves: r6,r7
	unused: r0-r3,r5,r8-r12*/
ReadMapScriptByte: // 8036094
	push {r7,lr}
	add r7, r7, r6
	ldrb r4, [r7]
	pop {r7,pc}
	thumb_func_end ReadMapScriptByte

	thumb_local_start
/* (r6:uint offsetToValue, r7:u8 * curScriptCmdPtr) -> r4:s8 result
	preserves: r6,r7
	unused: r0-r3,r5,r8-r12*/
ReadMapScriptSignedByte: // 803609C
	push {r7,lr}
	add r7, r7, r6
	ldrb r4, [r7]
	lsl r4, r4, #0x18
	asr r4, r4, #0x18
	pop {r7,pc}
	thumb_func_end ReadMapScriptSignedByte

	thumb_local_start
/* (r6:uint offsetToValue, r7:u8 * curScriptCmdPtr) -> r4:u16 result
	spoils: r6
	preserves: r7
	unused: r0-r3,r5,r8-r12*/
ReadMapScriptHalfword: // 80360A8
	push {r7,lr}
	add r7, r7, r6
	ldrb r4, [r7,#1]
	ldrb r6, [r7]
	lsl r4, r4, #8
	orr r4, r6
	pop {r7,pc}
	thumb_func_end ReadMapScriptHalfword

	thumb_local_start
/* (r6:uint offsetToValue, r7:u8 * curScriptCmdPtr) -> r4:s16 result
	spoils: r6
	preserves: r7
	unused: r0-r3,r5,r8-r12*/
ReadMapScriptSignedHalfword: // 80360B6
	push {r7,lr}
	add r7, r7, r6
	ldrb r4, [r7,#1]
	ldrb r6, [r7]
	lsl r4, r4, #8
	orr r4, r6
	lsl r4, r4, #0x10
	asr r4, r4, #0x10
	pop {r7,pc}
	thumb_func_end ReadMapScriptSignedHalfword

	thumb_local_start
/* (r6:uint offsetToValue, r7:u8 * curScriptCmdPtr) -> r4:u32 result
	spoils: r6
	preserves: r7
	unused: r0-r3,r5,r8-r12*/
ReadMapScriptWord: // 80360C8
	push {r7,lr}
	add r7, r7, r6
	ldrb r4, [r7,#3]
	ldrb r6, [r7,#2]
	lsl r4, r4, #8
	orr r4, r6
	ldrb r6, [r7,#1]
	lsl r4, r4, #8
	orr r4, r6
	ldrb r6, [r7]
	lsl r4, r4, #8
	orr r4, r6
	pop {r7,pc}
	thumb_func_end ReadMapScriptWord

	.balign 4, 0
off_80360E4:
	.word dword_80362A4
	.word dword_80362EC
	.word dword_80362A4
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word dword_8036334
	.word dword_8036394
	.word dword_8036334
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word dword_80363F4
	.word dword_8036454
	.word dword_80364B4
	.word dword_8036514
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word dword_8036574
	.word dword_80365FC
	.word dword_8036684
	.word dword_8036574
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word dword_803670C
	.word dword_80367AC
	.word dword_803670C
	.word dword_803684C
	.word dword_80368EC
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word dword_803698C
	.word dword_8036A34
	.word dword_8036ADC
	.word dword_8036B84
	.word dword_8036C2C
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word dword_8036CD4
	.word dword_8036D8C
	.word dword_8036CD4
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
	.word NULL
dword_80362A4: .word 0xFFFFFF00
	.word byte_804D0FC
	.word 0xFFFFFF01
	.word byte_804EA08
	.word 0xFFFFFF02
	.word byte_8052F6C
	.word 0xFFFFFF90
	.word byte_8071F10
	.word 0xFFFFFF88
	.word byte_806C870
	.word 0xFFFFFF8C
	.word byte_806E1B0
	.word 0xFFFFFF8D
	.word byte_807042C
	.word 0xFFFFFF80
	.word dword_80665E4
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
dword_80362EC: .word 0xFFFFFF00
	.word byte_804D0FC
	.word 0xFFFFFF01
	.word byte_804EA08
	.word 0xFFFFFF02
	.word byte_8052F77
	.word 0xFFFFFF90
	.word byte_8071F10
	.word 0xFFFFFF88
	.word byte_806C870
	.word 0xFFFFFF8C
	.word byte_806E1B0
	.word 0xFFFFFF8D
	.word byte_807042C
	.word 0xFFFFFF80
	.word dword_80665E4
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
dword_8036334: .word 0xFFFFFF00
	.word byte_804D0FC
	.word 0xFFFFFF01
	.word byte_804EA08
	.word 0xFFFFFF02
	.word byte_8052F6C
	.word 0xFFFFFF03
	.word byte_8059E24
	.word 0xFFFFFF90
	.word byte_8071F10
	.word 0xFFFFFF91
	.word byte_8075900
	.word 0xFFFFFF88
	.word byte_806C870
	.word 0xFFFFFF8C
	.word byte_806E1B0
	.word 0xFFFFFF8D
	.word byte_807042C
	.word 0xFFFFFF80
	.word dword_80665E4
	.word 0xFFFFFF81
	.word dword_8067E28
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
dword_8036394: .word 0xFFFFFF00
	.word byte_804D0FC
	.word 0xFFFFFF01
	.word byte_804EA08
	.word 0xFFFFFF02
	.word byte_8052F6C
	.word 0xFFFFFF03
	.word byte_8059E29
	.word 0xFFFFFF90
	.word byte_8071F10
	.word 0xFFFFFF91
	.word byte_8075900
	.word 0xFFFFFF88
	.word byte_806C870
	.word 0xFFFFFF8C
	.word byte_806E1B0
	.word 0xFFFFFF8D
	.word byte_807042C
	.word 0xFFFFFF80
	.word dword_80665E4
	.word 0xFFFFFF81
	.word dword_8067E28
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
dword_80363F4: .word 0xFFFFFF00
	.word byte_804D0FC
	.word 0xFFFFFF01
	.word byte_804EA08
	.word 0xFFFFFF02
	.word byte_8052F6C
	.word 0xFFFFFF03
	.word byte_8059E24
	.word 0xFFFFFF90
	.word byte_8071F10
	.word 0xFFFFFF91
	.word byte_8075900
	.word 0xFFFFFF88
	.word byte_806C870
	.word 0xFFFFFF8C
	.word byte_806E1B0
	.word 0xFFFFFF8D
	.word byte_807042C
	.word 0xFFFFFF80
	.word dword_80665E4
	.word 0xFFFFFF81
	.word dword_8067E28
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
dword_8036454: .word 0xFFFFFF00
	.word byte_804D0FE
	.word 0xFFFFFF01
	.word byte_804EA12
	.word 0xFFFFFF02
	.word byte_8052F77
	.word 0xFFFFFF03
	.word byte_8059E29
	.word 0xFFFFFF90
	.word byte_8071F13
	.word 0xFFFFFF91
	.word byte_8075903
	.word 0xFFFFFF88
	.word byte_806C870
	.word 0xFFFFFF8C
	.word byte_806E1B0
	.word 0xFFFFFF8D
	.word byte_807042C
	.word 0xFFFFFF80
	.word dword_80665E4
	.word 0xFFFFFF81
	.word dword_8067E28
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
dword_80364B4: .word 0xFFFFFF00
	.word byte_804D0FC
	.word 0xFFFFFF01
	.word byte_804EA1C
	.word 0xFFFFFF02
	.word byte_8052F82
	.word 0xFFFFFF03
	.word byte_8059E2E
	.word 0xFFFFFF90
	.word byte_8071F10
	.word 0xFFFFFF91
	.word byte_8075900
	.word 0xFFFFFF88
	.word byte_806C870
	.word 0xFFFFFF8C
	.word byte_806E1B0
	.word 0xFFFFFF8D
	.word byte_807042C
	.word 0xFFFFFF80
	.word dword_80665E4
	.word 0xFFFFFF81
	.word dword_8067E28
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
dword_8036514: .word 0xFFFFFF00
	.word byte_804D0FE
	.word 0xFFFFFF01
	.word byte_804EA12
	.word 0xFFFFFF02
	.word byte_8052F77
	.word 0xFFFFFF03
	.word byte_8059E29
	.word 0xFFFFFF90
	.word byte_8071F10
	.word 0xFFFFFF91
	.word byte_8075900
	.word 0xFFFFFF88
	.word byte_806C870
	.word 0xFFFFFF8C
	.word byte_806E1B0
	.word 0xFFFFFF8D
	.word byte_807042C
	.word 0xFFFFFF80
	.word dword_80665E4
	.word 0xFFFFFF81
	.word dword_8067E28
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
dword_8036574: .word 0xFFFFFF00
	.word byte_804D0FC
	.word 0xFFFFFF01
	.word byte_804EA08
	.word 0xFFFFFF02
	.word byte_8052F6C
	.word 0xFFFFFF03
	.word byte_8059E24
	.word 0xFFFFFF04
	.word byte_805E238
	.word 0xFFFFFF90
	.word byte_8071F10
	.word 0xFFFFFF91
	.word byte_8075900
	.word 0xFFFFFF92
	.word dword_8078144
	.word 0xFFFFFF95
	.word byte_807D370
	.word 0xFFFFFF96
	.word dword_807F268
	.word 0xFFFFFF88
	.word byte_806C870
	.word 0xFFFFFF8C
	.word byte_806E1B0
	.word 0xFFFFFF8D
	.word byte_807042C
	.word 0xFFFFFF80
	.word dword_80665E4
	.word 0xFFFFFF81
	.word dword_8067E28
	.word 0xFFFFFF82
	.word dword_8069358
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
dword_80365FC: .word 0xFFFFFF00
	.word dword_804D100
	.word 0xFFFFFF01
	.word byte_804EA1C
	.word 0xFFFFFF02
	.word byte_8052F82
	.word 0xFFFFFF03
	.word byte_8059E2E
	.word 0xFFFFFF04
	.word byte_805E242
	.word 0xFFFFFF90
	.word byte_8071F10
	.word 0xFFFFFF91
	.word byte_8075900
	.word 0xFFFFFF92
	.word dword_8078144
	.word 0xFFFFFF95
	.word byte_807D370
	.word 0xFFFFFF96
	.word dword_807F268
	.word 0xFFFFFF88
	.word byte_806C870
	.word 0xFFFFFF8C
	.word byte_806E1B0
	.word 0xFFFFFF8D
	.word byte_807042C
	.word 0xFFFFFF80
	.word dword_80665E4
	.word 0xFFFFFF81
	.word dword_8067E28
	.word 0xFFFFFF82
	.word dword_8069358
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
dword_8036684: .word 0xFFFFFF00
	.word byte_804D0FE
	.word 0xFFFFFF01
	.word byte_804EA12
	.word 0xFFFFFF02
	.word byte_8052F77
	.word 0xFFFFFF03
	.word byte_8059E29
	.word 0xFFFFFF04
	.word byte_805E23D
	.word 0xFFFFFF90
	.word byte_8071F10
	.word 0xFFFFFF91
	.word byte_8075900
	.word 0xFFFFFF92
	.word dword_8078144
	.word 0xFFFFFF95
	.word byte_807D370
	.word 0xFFFFFF96
	.word dword_807F268
	.word 0xFFFFFF88
	.word byte_806C870
	.word 0xFFFFFF8C
	.word byte_806E1B0
	.word 0xFFFFFF8D
	.word byte_807042C
	.word 0xFFFFFF80
	.word dword_80665E4
	.word 0xFFFFFF81
	.word dword_8067E28
	.word 0xFFFFFF82
	.word dword_8069358
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
dword_803670C: .word 0xFFFFFF00
	.word byte_804D0FC
	.word 0xFFFFFF01
	.word byte_804EA08
	.word 0xFFFFFF02
	.word byte_8052F6C
	.word 0xFFFFFF03
	.word byte_8059E24
	.word 0xFFFFFF04
	.word byte_805E238
	.word 0xFFFFFF05
	.word dword_80606EC
	.word 0xFFFFFF90
	.word byte_8071F10
	.word 0xFFFFFF91
	.word byte_8075900
	.word 0xFFFFFF92
	.word dword_8078144
	.word 0xFFFFFF94
	.word byte_807AE4C
	.word 0xFFFFFF95
	.word byte_807D370
	.word 0xFFFFFF96
	.word dword_807F268
	.word 0xFFFFFF88
	.word byte_806C870
	.word 0xFFFFFF8C
	.word byte_806E1B0
	.word 0xFFFFFF8D
	.word byte_807042C
	.word 0xFFFFFF80
	.word dword_80665E4
	.word 0xFFFFFF81
	.word dword_8067E28
	.word 0xFFFFFF82
	.word dword_8069358
	.word 0xFFFFFF83
	.word dword_806A2C0
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
dword_80367AC: .word 0xFFFFFF00
	.word byte_804D0FE
	.word 0xFFFFFF01
	.word byte_804EA12
	.word 0xFFFFFF02
	.word byte_8052F77
	.word 0xFFFFFF03
	.word byte_8059E29
	.word 0xFFFFFF04
	.word byte_805E23D
	.word 0xFFFFFF05
	.word dword_80606F0
	.word 0xFFFFFF90
	.word byte_8071F10
	.word 0xFFFFFF91
	.word byte_8075900
	.word 0xFFFFFF92
	.word dword_8078144
	.word 0xFFFFFF94
	.word byte_807AE4C
	.word 0xFFFFFF95
	.word byte_807D370
	.word 0xFFFFFF96
	.word dword_807F268
	.word 0xFFFFFF88
	.word byte_806C870
	.word 0xFFFFFF8C
	.word byte_806E1B0
	.word 0xFFFFFF8D
	.word byte_807042C
	.word 0xFFFFFF80
	.word dword_80665E4
	.word 0xFFFFFF81
	.word dword_8067E28
	.word 0xFFFFFF82
	.word dword_8069358
	.word 0xFFFFFF83
	.word dword_806A2C0
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
dword_803684C: .word 0xFFFFFF00
	.word byte_804D0FC
	.word 0xFFFFFF01
	.word byte_804EA1C+5
	.word 0xFFFFFF02
	.word byte_8052F6C
	.word 0xFFFFFF03
	.word byte_8059E24
	.word 0xFFFFFF04
	.word byte_805E238
	.word 0xFFFFFF05
	.word dword_80606EC
	.word 0xFFFFFF90
	.word byte_8071F10
	.word 0xFFFFFF91
	.word byte_8075900
	.word 0xFFFFFF92
	.word dword_8078144
	.word 0xFFFFFF94
	.word byte_807AE4C
	.word 0xFFFFFF95
	.word byte_807D370
	.word 0xFFFFFF96
	.word dword_807F268
	.word 0xFFFFFF88
	.word byte_806C870
	.word 0xFFFFFF8C
	.word byte_806E1B0
	.word 0xFFFFFF8D
	.word byte_807042C
	.word 0xFFFFFF80
	.word dword_80665E4
	.word 0xFFFFFF81
	.word dword_8067E28
	.word 0xFFFFFF82
	.word dword_8069358
	.word 0xFFFFFF83
	.word dword_806A2C0
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
dword_80368EC: .word 0xFFFFFF00
	.word byte_804D0FE
	.word 0xFFFFFF01
	.word byte_804EA12
	.word 0xFFFFFF02
	.word byte_8052F77
	.word 0xFFFFFF03
	.word byte_8059E29
	.word 0xFFFFFF04
	.word byte_805E23D
	.word 0xFFFFFF05
	.word byte_80606F4+4
	.word 0xFFFFFF90
	.word byte_8071F10
	.word 0xFFFFFF91
	.word byte_8075900
	.word 0xFFFFFF92
	.word dword_8078144
	.word 0xFFFFFF94
	.word byte_807AE4C
	.word 0xFFFFFF95
	.word byte_807D370
	.word 0xFFFFFF96
	.word dword_807F268
	.word 0xFFFFFF88
	.word byte_806C870
	.word 0xFFFFFF8C
	.word byte_806E1B0
	.word 0xFFFFFF8D
	.word byte_807042C
	.word 0xFFFFFF80
	.word dword_80665E4
	.word 0xFFFFFF81
	.word dword_8067E28
	.word 0xFFFFFF82
	.word dword_8069358
	.word 0xFFFFFF83
	.word dword_806A2C0
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
dword_803698C: .word 0xFFFFFF00
	.word byte_804D0FC
	.word 0xFFFFFF01
	.word byte_804EA08
	.word 0xFFFFFF02
	.word byte_8052F6C
	.word 0xFFFFFF03
	.word byte_8059E24
	.word 0xFFFFFF04
	.word byte_805E238
	.word 0xFFFFFF05
	.word dword_80606EC
	.word 0xFFFFFF90
	.word byte_8071F10
	.word 0xFFFFFF91
	.word byte_8075900
	.word 0xFFFFFF92
	.word dword_8078144
	.word 0xFFFFFF93
	.word byte_807956C
	.word 0xFFFFFF94
	.word byte_807AE4C
	.word 0xFFFFFF95
	.word byte_807D370
	.word 0xFFFFFF96
	.word dword_807F268
	.word 0xFFFFFF88
	.word byte_806C870
	.word 0xFFFFFF8C
	.word byte_806E1B0
	.word 0xFFFFFF8D
	.word byte_807042C
	.word 0xFFFFFF80
	.word dword_80665E4
	.word 0xFFFFFF81
	.word dword_8067E28
	.word 0xFFFFFF82
	.word dword_8069358
	.word 0xFFFFFF83
	.word dword_806A2C0
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
dword_8036A34: .word 0xFFFFFF00
	.word byte_804D0FE
	.word 0xFFFFFF01
	.word byte_804EA0D
	.word 0xFFFFFF02
	.word byte_8052F77
	.word 0xFFFFFF03
	.word byte_8059E29
	.word 0xFFFFFF04
	.word byte_805E23D
	.word 0xFFFFFF05
	.word dword_80606F0
	.word 0xFFFFFF90
	.word byte_8071F10
	.word 0xFFFFFF91
	.word byte_8075900
	.word 0xFFFFFF92
	.word dword_8078144
	.word 0xFFFFFF93
	.word byte_807956C
	.word 0xFFFFFF94
	.word byte_807AE4C
	.word 0xFFFFFF95
	.word byte_807D370
	.word 0xFFFFFF96
	.word dword_807F268
	.word 0xFFFFFF88
	.word byte_806C870
	.word 0xFFFFFF8C
	.word byte_806E1B0
	.word 0xFFFFFF8D
	.word byte_807042C
	.word 0xFFFFFF80
	.word dword_80665E4
	.word 0xFFFFFF81
	.word dword_8067E28
	.word 0xFFFFFF82
	.word dword_8069358
	.word 0xFFFFFF83
	.word dword_806A2C0
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
dword_8036ADC: .word 0xFFFFFF00
	.word dword_804D100
	.word 0xFFFFFF01
	.word byte_804EA1C
	.word 0xFFFFFF02
	.word byte_8052F82
	.word 0xFFFFFF03
	.word byte_8059E2E
	.word 0xFFFFFF04
	.word byte_805E242
	.word 0xFFFFFF05
	.word byte_80606F4
	.word 0xFFFFFF90
	.word byte_8071F10
	.word 0xFFFFFF91
	.word byte_8075900
	.word 0xFFFFFF92
	.word dword_8078144
	.word 0xFFFFFF93
	.word byte_807956C
	.word 0xFFFFFF94
	.word byte_807AE4C
	.word 0xFFFFFF95
	.word byte_807D370
	.word 0xFFFFFF96
	.word dword_807F268
	.word 0xFFFFFF88
	.word byte_806C870
	.word 0xFFFFFF8C
	.word byte_806E1B0
	.word 0xFFFFFF8D
	.word byte_807042C
	.word 0xFFFFFF80
	.word dword_80665E4
	.word 0xFFFFFF81
	.word dword_8067E28
	.word 0xFFFFFF82
	.word dword_8069358
	.word 0xFFFFFF83
	.word dword_806A2C0
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
dword_8036B84: .word 0xFFFFFF00
	.word byte_804D0FE
	.word 0xFFFFFF01
	.word byte_804EA12
	.word 0xFFFFFF02
	.word byte_8052F77
	.word 0xFFFFFF03
	.word byte_8059E29
	.word 0xFFFFFF04
	.word byte_805E23D
	.word 0xFFFFFF05
	.word dword_80606F0
	.word 0xFFFFFF90
	.word byte_8071F10
	.word 0xFFFFFF91
	.word byte_8075900
	.word 0xFFFFFF92
	.word dword_8078144
	.word 0xFFFFFF93
	.word byte_807956C
	.word 0xFFFFFF94
	.word byte_807AE4C
	.word 0xFFFFFF95
	.word byte_807D370
	.word 0xFFFFFF96
	.word dword_807F268
	.word 0xFFFFFF88
	.word byte_806C870
	.word 0xFFFFFF8C
	.word byte_806E1B0
	.word 0xFFFFFF8D
	.word byte_807042C
	.word 0xFFFFFF80
	.word dword_80665E4
	.word 0xFFFFFF81
	.word dword_8067E28
	.word 0xFFFFFF82
	.word dword_8069358
	.word 0xFFFFFF83
	.word dword_806A2C0
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
dword_8036C2C: .word 0xFFFFFF00
	.word dword_804D100
	.word 0xFFFFFF01
	.word byte_804EA1C
	.word 0xFFFFFF02
	.word byte_8052F82
	.word 0xFFFFFF03
	.word byte_8059E2E
	.word 0xFFFFFF04
	.word byte_805E242
	.word 0xFFFFFF05
	.word byte_80606F4
	.word 0xFFFFFF90
	.word byte_8071F10
	.word 0xFFFFFF91
	.word byte_8075900
	.word 0xFFFFFF92
	.word dword_8078144
	.word 0xFFFFFF93
	.word byte_807956E
	.word 0xFFFFFF94
	.word byte_807AE4C
	.word 0xFFFFFF95
	.word byte_807D370
	.word 0xFFFFFF96
	.word dword_807F268
	.word 0xFFFFFF88
	.word byte_806C870
	.word 0xFFFFFF8C
	.word byte_806E1B0
	.word 0xFFFFFF8D
	.word byte_807042C
	.word 0xFFFFFF80
	.word dword_80665E4
	.word 0xFFFFFF81
	.word dword_8067E28
	.word 0xFFFFFF82
	.word dword_8069358
	.word 0xFFFFFF83
	.word dword_806A2C0
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
dword_8036CD4: .word 0xFFFFFF00
	.word byte_804D0FE
	.word 0xFFFFFF01
	.word byte_804EA12
	.word 0xFFFFFF02
	.word byte_8052F77
	.word 0xFFFFFF03
	.word byte_8059E29
	.word 0xFFFFFF04
	.word byte_805E23D
	.word 0xFFFFFF05
	.word dword_80606F0
	.word 0xFFFFFF06
	.word byte_8063056
	.word 0xFFFFFF90
	.word byte_8071F10
	.word 0xFFFFFF91
	.word byte_8075900
	.word 0xFFFFFF92
	.word dword_8078144
	.word 0xFFFFFF93
	.word byte_807956C
	.word 0xFFFFFF94
	.word byte_807AE4C
	.word 0xFFFFFF95
	.word byte_807D370
	.word 0xFFFFFF96
	.word dword_807F268
	.word 0xFFFFFF88
	.word byte_806C870
	.word 0xFFFFFF8C
	.word byte_806E1B0
	.word 0xFFFFFF8D
	.word byte_807042C
	.word 0xFFFFFF80
	.word dword_80665E4
	.word 0xFFFFFF81
	.word dword_8067E28
	.word 0xFFFFFF82
	.word dword_8069358
	.word 0xFFFFFF83
	.word dword_806A2C0
	.word 0xFFFFFF85
	.word byte_806AEA8
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF
dword_8036D8C: .word 0xFFFFFF00
	.word byte_804D0FC
	.word 0xFFFFFF01
	.word byte_804EA08
	.word 0xFFFFFF02
	.word byte_8052F6C
	.word 0xFFFFFF03
	.word byte_8059E24
	.word 0xFFFFFF04
	.word byte_805E238
	.word 0xFFFFFF05
	.word dword_80606EC
	.word 0xFFFFFF06
	.word byte_8063050
	.word 0xFFFFFF90
	.word byte_8071F10
	.word 0xFFFFFF91
	.word byte_8075900
	.word 0xFFFFFF92
	.word dword_8078144
	.word 0xFFFFFF93
	.word byte_807956C
	.word 0xFFFFFF94
	.word byte_807AE4C
	.word 0xFFFFFF95
	.word byte_807D370
	.word 0xFFFFFF96
	.word dword_807F268
	.word 0xFFFFFF88
	.word byte_806C870
	.word 0xFFFFFF8C
	.word byte_806E1B0
	.word 0xFFFFFF8D
	.word byte_807042C
	.word 0xFFFFFF80
	.word dword_80665E4
	.word 0xFFFFFF81
	.word dword_8067E28
	.word 0xFFFFFF82
	.word dword_8069358
	.word 0xFFFFFF83
	.word dword_806A2C0
	.word 0xFFFFFF85
	.word byte_806AEA8
	.word 0xFFFFFFFF
	.word 0xFFFFFFFF

	thumb_func_start playCertainMapMusicBasedOnEventByte_8036e44
playCertainMapMusicBasedOnEventByte_8036e44:
	push {r4-r7,lr}
	ldr r7, =off_80360E4
	mov r0, r10
	ldr r6, [r0,#oToolkit_GameStatePtr]
	ldr r4, [r0,#oToolkit_S2001c04_Ptr]
	ldrb r1, [r6,#oGameState_MapGroup]
	ldrb r2, [r6,#oGameState_MapNumber]
	ldrb r0, [r6,#oGameState_Unk_07]
	lsl r0, r0, #2
	ldr r7, [r7,r0]
loc_8036E58:
	ldrb r0, [r7]
	cmp r0, #0xff
	beq loc_8036E6E
	cmp r0, r1
	bne loc_8036E6A
	ldr r7, [r7,#4]
	ldrb r0, [r7,r2]
	strb r0, [r4,#4]
	b locret_8036E72
loc_8036E6A:
	add r7, #8
	b loc_8036E58
loc_8036E6E:
	mov r0, #0x63
	strb r0, [r4,#oS2001c04_MapMusic]
locret_8036E72:
	pop {r4-r7,pc}
	.pool // 8036E74
	thumb_func_end playCertainMapMusicBasedOnEventByte_8036e44

	thumb_func_start PlayMapMusic
PlayMapMusic:
	push {r4-r7,lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_S2001c04_Ptr]
	ldrb r0, [r0,#oS2001c04_MapMusic]
	bl PlayMusic
	pop {r4-r7,pc}
	thumb_func_end PlayMapMusic

	thumb_func_start sub_8036E86
sub_8036E86:
	push {r4-r7,lr}
	mov r1, r10
	ldr r1, [r1,#oToolkit_S2001c04_Ptr]
	strb r0, [r1,#oS2001c04_MapMusic]
	pop {r4-r7,pc}
	thumb_func_end sub_8036E86

	thumb_func_start init_s_02011C50_8036E90
init_s_02011C50_8036E90:
	push {r5,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_CutsceneStatePtr]
	push {r0,r1}
	mov r0, r5
	mov r1, #oCutsceneState_Size
	bl ZeroFillByWord // (void *memBlock, int size) -> void
	pop {r0,r1}
	str r0, [r5,#oCutsceneState_CutsceneScriptPos] // s_02011C50.ptr_1C
	str r0, [r5,#oCutsceneState_originalCutsceneScriptPos_40] // s_02011C50.unk_40
	str r1, [r5,#oCutsceneState_Unk_04]
	ldr r0, off_8036F20 // =DummyCutsceneScript
	str r0, [r5,#oCutsceneState_CutsceneScriptPos2] // s_02011C50.ptr_20
	str r0, [r5,#oCutsceneState_CutsceneScriptPos3] // s_02011C50.ptr_24
	str r0, [r5,#oCutsceneState_CutsceneScriptPos4] // s_02011C50.ptr_28
	ldr r0, off_8036EBC // =eTextScript202DA04
	str r0, [r5,#oCutsceneState_TextArchivePtr] // s_02011C50.ptr_30
	ldr r0, off_8036EC0 // =off_8036EC4
	str r0, [r5,#oCutsceneState_Unk_34] // s_02011C50.ptr_34
	pop {r5,pc}
	.balign 4, 0x00
off_8036EBC: .word eTextScript202DA04
off_8036EC0: .word off_8036EC4
off_8036EC4: .word 0x4000000
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end init_s_02011C50_8036E90

	thumb_func_start cutscene_8036ED4
cutscene_8036ED4:
	push {r4-r7,lr}
	mov r1, r10
	ldr r1, [r1,#oToolkit_CutsceneStatePtr]
	mov r0, #CUTSCENE_SCRIPT_UNK_MAGIC_SCRIPT_VALUE_0x1
	str r0, [r1,#oCutsceneState_CutsceneScriptPos] // s_02011C50.ptr_1C
	ldr r0, off_8036F20 // =DummyCutsceneScript
	str r0, [r1,#oCutsceneState_CutsceneScriptPos2] // s_02011C50.ptr_20
	str r0, [r1,#oCutsceneState_CutsceneScriptPos3] // s_02011C50.ptr_24
	str r0, [r1,#oCutsceneState_CutsceneScriptPos4] // s_02011C50.ptr_28
	mov r0, #0
	str r0, [r1,#oCutsceneState_CutsceneScriptAfterCutsceneSkip] // s_02011C50.unk_38
	mov r1, r10
	ldr r1, [r1,#oToolkit_S2001c04_Ptr]
	mov r0, #0
	strh r0, [r1,#oS2001c04_Unk_12]
	strh r0, [r1,#oS2001c04_Unk_14]
	movflag EVENT_1731
	bl ClearEventFlagFromImmediate
	pop {r4-r7,pc}
	thumb_func_end cutscene_8036ED4

	thumb_func_start cutscene_8036EFE
cutscene_8036EFE:
	push {r4-r7,lr}
	mov r1, r10
	ldr r1, [r1,#oToolkit_CutsceneStatePtr]
	mov r0, #CUTSCENE_SCRIPT_UNK_MAGIC_SCRIPT_VALUE_0x1
	str r0, [r1,#oCutsceneState_CutsceneScriptPos] // s_02011C50.ptr_1C
	ldr r0, off_8036F20 // =DummyCutsceneScript
	str r0, [r1,#oCutsceneState_CutsceneScriptPos2] // s_02011C50.ptr_20
	str r0, [r1,#oCutsceneState_CutsceneScriptPos3] // s_02011C50.ptr_24
	str r0, [r1,#oCutsceneState_CutsceneScriptPos4] // s_02011C50.ptr_28
	mov r0, #NULL
	str r0, [r1,#oCutsceneState_CutsceneScriptAfterCutsceneSkip] // s_02011C50.unk_38
	movflag EVENT_1731
	bl ClearEventFlagFromImmediate
	pop {r4-r7,pc}
	.byte 0, 0
off_8036F20: .word DummyCutsceneScript
	thumb_func_end cutscene_8036EFE

	thumb_func_start clearCutsceneScriptPosIfMagicValue0x1_8036F24
clearCutsceneScriptPosIfMagicValue0x1_8036F24:
	mov r1, r10
	ldr r1, [r1,#oToolkit_CutsceneStatePtr]
	ldr r0, [r1,#oCutsceneState_CutsceneScriptPos] // s_02011C50.ptr_1C
	cmp r0, #CUTSCENE_SCRIPT_UNK_MAGIC_SCRIPT_VALUE_0x1
	bne .doNotClearCutsceneScript
	mov r0, #NULL
	str r0, [r1,#oCutsceneState_CutsceneScriptPos] // s_02011C50.ptr_1C
	str r0, [r1,#oCutsceneState_originalCutsceneScriptPos_40] // s_02011C50.unk_40
.doNotClearCutsceneScript
	mov pc, lr
	thumb_func_end clearCutsceneScriptPosIfMagicValue0x1_8036F24

// () -> zf
	thumb_func_start IsCutsceneScriptNonNull
IsCutsceneScriptNonNull:
	mov r0, r10
	ldr r0, [r0,#oToolkit_CutsceneStatePtr]
	ldr r0, [r0,#oCutsceneState_CutsceneScriptPos] // s_02011C50.ptr_1C
	tst r0, r0
	mov pc, lr
	thumb_func_end IsCutsceneScriptNonNull

// () -> zf
	thumb_func_start cutscene_checkOriginalCutsceneScriptPos_8036F40
cutscene_checkOriginalCutsceneScriptPos_8036F40:
	mov r0, r10
	ldr r0, [r0,#oToolkit_CutsceneStatePtr]
	mov r2, #1
	ldr r0, [r0,#oCutsceneState_originalCutsceneScriptPos_40] // s_02011C50.unk_40
	ldr r1, off_8036F54 // =CutsceneScript_80991F4
	cmp r0, r1
	beq loc_8036F50
	mov r2, #0
loc_8036F50:
	tst r2, r2
	mov pc, lr
off_8036F54: .word CutsceneScript_80991F4
	thumb_func_end cutscene_checkOriginalCutsceneScriptPos_8036F40

	thumb_func_start cutscene_checkOriginalCutsceneScriptPos_8036F58
cutscene_checkOriginalCutsceneScriptPos_8036F58:
	mov r0, r10
	ldr r0, [r0,#oToolkit_CutsceneStatePtr]
	mov r2, #1
	ldr r0, [r0,#oCutsceneState_originalCutsceneScriptPos_40]
	ldr r1, off_8036F6C // =CutsceneScript_80988E4
	cmp r0, r1
	beq loc_8036F68
	mov r2, #0
loc_8036F68:
	tst r2, r2
	mov pc, lr
off_8036F6C: .word CutsceneScript_80988E4
	thumb_func_end cutscene_checkOriginalCutsceneScriptPos_8036F58

	thumb_func_start cutscene_checkOriginalCutsceneScriptPos_8036F70
cutscene_checkOriginalCutsceneScriptPos_8036F70:
	mov r1, r10
	ldr r1, [r1,#oToolkit_CutsceneStatePtr]
	mov r2, #1
	ldr r1, [r1,#oCutsceneState_originalCutsceneScriptPos_40]
	cmp r1, r0
	beq loc_8036F7E
	mov r2, #0
loc_8036F7E:
	mov r0, r2
	tst r0, r0
	mov pc, lr
	thumb_func_end cutscene_checkOriginalCutsceneScriptPos_8036F70

	thumb_local_start
TryCutsceneSkip:
	push {r4-r7,lr}
	bl IsScreenFadeActive // () -> zf
	beq .screenFadeActive
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_Pressed]
	mov r1, #JOYPAD_SELECT
	tst r0, r1
.screenFadeActive
	pop {r4-r7,pc}
	thumb_func_end TryCutsceneSkip

	thumb_func_start cutsceneCamera_setCutsceneCameraScript_8036f98
cutsceneCamera_setCutsceneCameraScript_8036f98:
	push {lr}
	ldr r1, off_8036FD4 // =cutsceneCameraInfo_2011bd0
	str r0, [r1]
	mov r0, #0
	str r0, [r1,#0x4] // (dword_2011BD4 - 0x2011bd0)
	mov r0, #0
	bl camera_80301B2
	pop {pc}
	thumb_func_end cutsceneCamera_setCutsceneCameraScript_8036f98

	thumb_func_start cutsceneCamera_focusCameraOnPlayerMaybe_8036faa
cutsceneCamera_focusCameraOnPlayerMaybe_8036faa:
	push {lr}
	mov r0, #1
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	ldr r1, [r1,#oGameState_OverworldPlayerObjectPtr]
	add r1, #oOWPlayerObject_Coords
	bl camera_80301B2
	pop {pc}
	thumb_func_end cutsceneCamera_focusCameraOnPlayerMaybe_8036faa

	thumb_local_start
cutscene_cameraMaybe_8036FBC:
	push {r4-r7,lr}
	ldr r5, off_8036FD4 // =cutsceneCameraInfo_2011bd0
	ldr r1, [r5]
	ldrb r2, [r1]
	ldr r0, off_8036FD8 // =off_8036FDC
	add r0, r0, r2
	ldr r0, [r0]
	mov lr, pc
	bx r0
	str r1, [r5]
	tst r0, r0
	pop {r4-r7,pc}
off_8036FD4: .word cutsceneCameraInfo_2011bd0
off_8036FD8: .word off_8036FDC
off_8036FDC: .word cutsceneCamera_setCameraPosition_8037030+1
	.word cutsceneCamera_scrollCamera_803705a+1
	.word cutsceneCamera_end_80370b4+1
	.word sub_80370B8+1
	.word sub_80370E4+1
	.word sub_8037104+1
	.word sub_8037196+1
	.word sub_8037260+1
	.word sub_80372A2+1
	.word sub_80372EC+1
	.word sub_8037332+1
	.word sub_8037352+1
	.word sub_803736A+1
	.word sub_8037380+1
	.word sub_8037396+1
	.word sub_80373B6+1
	.word sub_80373CC+1
	.word sub_80373E4+1
	.word sub_80373FC+1
	.word sub_803741C+1
	.word sub_8037432+1
	thumb_func_end cutscene_cameraMaybe_8036FBC

	thumb_local_start
cutsceneCamera_setCameraPosition_8037030:
	push {lr}
	mov r0, #1
	bl ReadCutsceneCameraScriptSignedHalfword
	lsl r2, r0, #0xc
	mov r0, #3
	bl ReadCutsceneCameraScriptSignedHalfword
	lsl r3, r0, #0xc
	mov r0, #5
	bl ReadCutsceneCameraScriptSignedHalfword
	lsl r4, r0, #0xc
	mov r6, r10
	ldr r6, [r6,#oToolkit_CameraPtr]
	str r2, [r6,#oCamera_X]
	str r3, [r6,#oCamera_Y]
	str r4, [r6,#oCamera_Z]
	mov r0, #1
	add r1, #7
	pop {pc}
	thumb_func_end cutsceneCamera_setCameraPosition_8037030

	thumb_local_start
cutsceneCamera_scrollCamera_803705a:
	push {lr}
	ldrb r0, [r5,#6]
	cmp r0, #0
	bne loc_803706E
	mov r0, #1
	strb r0, [r5,#6]
	mov r0, #1
	bl ReadCutsceneCameraScriptHalfword
	strh r0, [r5,#4]
loc_803706E:
	mov r6, r10
	ldr r6, [r6,#oToolkit_CameraPtr]
	mov r0, #3
	bl ReadCutsceneCameraScriptSignedHalfword
	lsl r0, r0, #8
	ldr r3, [r6,#oCamera_X]
	add r0, r0, r3
	str r0, [r6,#oCamera_X]
	mov r0, #5
	bl ReadCutsceneCameraScriptSignedHalfword
	lsl r0, r0, #8
	ldr r3, [r6,#oCamera_Y]
	add r0, r0, r3
	str r0, [r6,#oCamera_Y]
	mov r0, #7
	bl ReadCutsceneCameraScriptSignedHalfword
	lsl r0, r0, #8
	ldr r3, [r6,#oCamera_Z]
	add r0, r0, r3
	str r0, [r6,#oCamera_Z]
	ldrh r0, [r5,#4]
	sub r0, #1
	strh r0, [r5,#4]
	cmp r0, #0
	bgt loc_80370B0
	mov r0, #0
	strb r0, [r5,#6]
	mov r0, #1
	add r1, #9
	pop {pc}
loc_80370B0:
	mov r0, #1
	pop {pc}
	thumb_func_end cutsceneCamera_scrollCamera_803705a

	thumb_local_start
cutsceneCamera_end_80370b4:
	mov r0, #0
	mov pc, lr
	thumb_func_end cutsceneCamera_end_80370b4

	thumb_local_start
sub_80370B8:
	push {lr}
	ldrb r2, [r5,#6]
	cmp r2, #0
	bne loc_80370CC
	mov r2, #1
	strb r2, [r5,#6]
	mov r0, #1
	bl ReadCutsceneCameraScriptHalfword
	strh r0, [r5,#4]
loc_80370CC:
	ldrh r2, [r5,#4]
	sub r2, #1
	strh r2, [r5,#4]
	cmp r2, #0
	bge loc_80370E0
	mov r2, #0
	strb r2, [r5,#6]
	mov r0, #1
	add r1, #3
	pop {pc}
loc_80370E0:
	mov r0, #1
	pop {pc}
	thumb_func_end sub_80370B8

	thumb_local_start
sub_80370E4:
	push {lr}
	push {r1}
	mov r0, #2
	bl ReadCutsceneCameraScriptByte
	mov r4, r0
	mov r0, #1
	bl ReadCutsceneCameraScriptByte
	mov r1, r4
	bl setCameraUnk0e_Unk0c_80302a8
	pop {r1}
	mov r0, #1
	add r1, #3
	pop {pc}
	thumb_func_end sub_80370E4

	thumb_local_start
sub_8037104:
	push {lr}
	mov r7, r10
	ldr r6, [r7,#oToolkit_CameraPtr]
	ldr r7, [r7,#oToolkit_GameStatePtr]
	ldr r7, [r7,#oGameState_OverworldPlayerObjectPtr]
	ldr r2, [r6,#0x30]
	ldr r3, [r7,#0x1c]
	sub r3, r3, r2
	bl sub_8037162
	add r3, r3, r2
	str r3, [r6,#0x30]
	ldr r2, [r6,#0x34]
	ldr r3, [r7,#0x20]
	sub r3, r3, r2
	bl sub_8037162
	add r3, r3, r2
	str r3, [r6,#0x34]
	ldr r2, [r6,#0x38]
	ldr r3, [r7,#0x24]
	sub r3, r3, r2
	bl sub_8037162
	add r3, r3, r2
	str r3, [r6,#0x38]
	ldr r0, [r6,#0x30]
	ldr r2, [r7,#0x1c]
	cmp r0, r2
	bne loc_8037152
	ldr r0, [r6,#0x34]
	ldr r2, [r7,#0x20]
	cmp r0, r2
	bne loc_8037152
	ldr r0, [r6,#0x38]
	ldr r2, [r7,#0x24]
	cmp r0, r2
	bne loc_8037152
	b loc_8037156
loc_8037152:
	mov r0, #1
	pop {pc}
loc_8037156:
	mov r2, #0
	strb r2, [r5,#6]
	strh r2, [r5,#4]
	mov r0, #1
	add r1, #1
	pop {pc}
	thumb_func_end sub_8037104

	thumb_local_start
sub_8037162:
	mov r4, #0x10
	lsl r4, r4, #0x10
	cmp r3, #0
	bge loc_8037182
	neg r3, r3
	mov r0, r3
	lsr r3, r3, #4
	cmp r3, r4
	ble loc_8037176
	mov r3, r4
loc_8037176:
	lsr r4, r4, #9
	cmp r3, r4
	bge loc_803717E
	mov r3, r0
loc_803717E:
	neg r3, r3
	mov pc, lr
loc_8037182:
	mov r0, r3
	lsr r3, r3, #4
	cmp r3, r4
	ble loc_803718C
	mov r3, r4
loc_803718C:
	lsr r4, r4, #9
	cmp r3, r4
	bge locret_8037194
	mov r3, r0
locret_8037194:
	mov pc, lr
	thumb_func_end sub_8037162

	thumb_local_start
sub_8037196:
	push {lr}
	ldrb r2, [r5,#6]
	cmp r2, #0
	bne loc_80371E8
	push {r0-r3}
	mov r2, #1
	strb r2, [r5,#6]
	mov r0, #1
	bl ReadCutsceneCameraScriptSignedHalfword
	lsl r0, r0, #0x10
	str r0, [r5,#0x14]
	mov r0, #3
	bl ReadCutsceneCameraScriptSignedHalfword
	lsl r0, r0, #0x10
	str r0, [r5,#0x18]
	mov r0, #5
	bl ReadCutsceneCameraScriptSignedHalfword
	lsl r0, r0, #0x10
	str r0, [r5,#0x1c]
loc_80371C2:
	mov r0, #7
	bl ReadCutsceneCameraScriptHalfword
	mov r1, r0
	strh r1, [r5,#4]
	mov r0, #0x40
	lsl r0, r0, #8
	svc 6
	str r0, [r5,#0x20]
	mov r0, #0x40
	lsl r0, r0, #8
	sub r0, r0, r1
	strh r0, [r5,#4]
	bl sub_80301D0
	str r0, [r5,#8]
	str r1, [r5,#0xc]
	str r2, [r5,#0x10]
	pop {r0-r3}
loc_80371E8:
	push {r0-r3}
	ldr r7, off_803725C // =math_sinTable
	ldrh r3, [r5,#4]
	ldr r4, [r5,#0x20]
	sub r4, r3, r4
	ble loc_8037242
	strh r4, [r5,#4]
	lsr r4, r4, #8
	mov r3, #0x40
	sub r4, r3, r4
	lsl r4, r4, #1
	ldr r0, off_803725C // =math_sinTable
	ldrsh r4, [r0,r4]
	ldr r0, [r5,#0x14]
	ldr r1, [r5,#8]
	sub r0, r0, r1
	asr r0, r0, #8
	mul r0, r4
	push {r0}
	ldr r0, [r5,#0x18]
	ldr r1, [r5,#0xc]
	sub r0, r0, r1
	asr r0, r0, #8
	mul r0, r4
	push {r0}
	ldr r0, [r5,#0x1c]
	ldr r1, [r5,#0x10]
	sub r0, r0, r1
	asr r0, r0, #8
	mul r0, r4
	push {r0}
	pop {r2}
	ldr r3, [r5,#0x10]
	add r2, r2, r3
	pop {r1}
	ldr r3, [r5,#0xc]
	add r1, r1, r3
	pop {r0}
	ldr r3, [r5,#8]
	add r0, r0, r3
	bl sub_80301DC
	pop {r0-r3}
	mov r0, #1
	pop {pc}
loc_8037242:
	ldr r0, [r5,#0x14]
	ldr r1, [r5,#0x18]
	ldr r2, [r5,#0x1c]
	bl sub_80301DC
	pop {r0-r3}
	mov r2, #0
	strb r2, [r5,#6]
	strh r2, [r5,#4]
	mov r0, #1
	add r1, #9
	pop {pc}
	.balign 4, 0x00
off_803725C: .word math_sinTable
	thumb_func_end sub_8037196

	thumb_local_start
sub_8037260:
	push {lr}
	ldrb r2, [r5,#6]
	cmp r2, #0
	bne loc_80372A0
	push {r0-r3}
	mov r2, #1
	strb r2, [r5,#6]
	mov r7, r10
	ldr r7, [r7,#oToolkit_GameStatePtr]
	ldr r7, [r7,#oGameState_OverworldPlayerObjectPtr]
	mov r0, #1
	bl ReadCutsceneCameraScriptSignedHalfword
	lsl r0, r0, #0x10
	ldr r3, [r7,#0x1c]
	add r0, r0, r3
	str r0, [r5,#0x14]
	mov r0, #3
	bl ReadCutsceneCameraScriptSignedHalfword
	lsl r0, r0, #0x10
	ldr r3, [r7,#0x20]
	add r0, r0, r3
	str r0, [r5,#0x18]
	mov r0, #5
	bl ReadCutsceneCameraScriptSignedHalfword
	lsl r0, r0, #0x10
	ldr r3, [r7,#0x24]
	add r0, r0, r3
	str r0, [r5,#0x1c]
	b loc_80371C2
loc_80372A0:
	b loc_80371E8
	thumb_func_end sub_8037260

	thumb_local_start
sub_80372A2:
	push {lr}
	ldrb r2, [r5,#6]
	cmp r2, #0
	bne loc_80372CC
	push {r0-r3}
	mov r2, #1
	strb r2, [r5,#6]
	mov r7, r10
	ldr r7, [r7,#oToolkit_GameStatePtr]
	ldr r7, [r7,#oGameState_OverworldPlayerObjectPtr]
	push {r0-r3}
	bl sub_81421E0
	bl sub_8142868
	str r0, [r5,#0x14]
	str r1, [r5,#0x18]
	ldr r2, [r7,#0x24]
	str r2, [r5,#0x1c]
	pop {r0-r3}
	b loc_80371C2
loc_80372CC:
	push {r0-r3}
	ldr r0, [r5,#0x14]
	ldr r1, [r5,#8]
	cmp r0, r1
	bne loc_80372E8
	ldr r0, [r5,#0x18]
	ldr r1, [r5,#0xc]
	cmp r0, r1
	bne loc_80372E8
	ldr r0, [r5,#0x1c]
	ldr r1, [r5,#0x10]
	cmp r0, r1
	bne loc_80372E8
	b loc_8037242
loc_80372E8:
	pop {r0-r3}
	b loc_80371E8
	thumb_func_end sub_80372A2

	thumb_local_start
sub_80372EC:
	push {lr}
	ldrb r2, [r5,#6]
	cmp r2, #0
	bne loc_8037312
	push {r0-r3}
	mov r2, #1
	strb r2, [r5,#6]
	push {r0-r3}
	mov r7, r10
	ldr r7, [r7,#oToolkit_CutsceneStatePtr]
	ldr r7, [r7,#4]
	ldr r0, [r7,#0xc]
	ldr r1, [r7,#0x10]
	ldr r2, [r7,#0x14]
	str r0, [r5,#0x14]
	str r1, [r5,#0x18]
	str r2, [r5,#0x1c]
	pop {r0-r3}
	b loc_80371C2
loc_8037312:
	push {r0-r3}
	ldr r0, [r5,#0x14]
	ldr r1, [r5,#8]
	cmp r0, r1
	bne loc_803732E
	ldr r0, [r5,#0x18]
	ldr r1, [r5,#0xc]
	cmp r0, r1
	bne loc_803732E
	ldr r0, [r5,#0x1c]
	ldr r1, [r5,#0x10]
	cmp r0, r1
	bne loc_803732E
	b loc_8037242
loc_803732E:
	pop {r0-r3}
	b loc_80371E8
	thumb_func_end sub_80372EC

	thumb_local_start
sub_8037332:
	push {lr}
	push {r1}
	mov r0, #1
	bl ReadCutsceneCameraScriptByte
	mov r4, r0
	mov r0, #2
	bl ReadCutsceneCameraScriptWord
	mov r1, r4
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	pop {r1}
	mov r0, #1
	add r1, #6
	pop {pc}
	thumb_func_end sub_8037332

	thumb_local_start
sub_8037352:
	push {lr}
	push {r1}
	mov r0, #0x80
	bl chatbox_check_eFlags2009F38
	pop {r1}
	bne loc_8037366
	mov r0, #1
	add r1, #1
	pop {pc}
loc_8037366:
	mov r0, #1
	pop {pc}
	thumb_func_end sub_8037352

	thumb_local_start
sub_803736A:
	push {lr}
	push {r1}
	mov r0, #1
	bl ReadCutsceneCameraScriptWord
	bl sub_8001B1C
	pop {r1}
	mov r0, #1
	add r1, #5
	pop {pc}
	thumb_func_end sub_803736A

	thumb_local_start
sub_8037380:
	push {lr}
	push {r1}
	mov r0, #1
	bl ReadCutsceneCameraScriptByte
	bl sub_8001B6C
	pop {r1}
	mov r0, #1
	add r1, #2
	pop {pc}
	thumb_func_end sub_8037380

	thumb_local_start
sub_8037396:
	push {lr}
	push {r1}
	mov r0, #2
	bl ReadCutsceneCameraScriptByte
	mov r4, r0
	mov r0, #1
	bl ReadCutsceneCameraScriptByte
	mov r1, r4
	bl SetScreenFade // (int a1, int a2) -> void
	pop {r1}
	mov r0, #1
	add r1, #3
	pop {pc}
	thumb_func_end sub_8037396

	thumb_local_start
sub_80373B6:
	push {lr}
	push {r1}
	bl IsScreenFadeActive // () -> zf
	pop {r1}
	beq loc_80373C8
	mov r0, #1
	add r1, #1
	pop {pc}
loc_80373C8:
	mov r0, #1
	pop {pc}
	thumb_func_end sub_80373B6

	thumb_local_start
sub_80373CC:
	push {lr}
	push {r1,r5}
	mov r0, #1
	bl ReadCutsceneCameraScriptHalfword
	mov r0, r0
	bl SetEventFlag
	pop {r1,r5}
	mov r0, #1
	add r1, #3
	pop {pc}
	thumb_func_end sub_80373CC

	thumb_local_start
sub_80373E4:
	push {lr}
	push {r1}
	mov r0, #1
	bl ReadCutsceneCameraScriptHalfword
	mov r0, r0
	bl ClearEventFlag // (u16 entryFlagBitfield) -> void
	pop {r1}
	mov r0, #1
	add r1, #3
	pop {pc}
	thumb_func_end sub_80373E4

	thumb_local_start
sub_80373FC:
	push {lr}
	push {r1}
	mov r0, #2
	bl ReadCutsceneCameraScriptByte
	mov r4, r0
	mov r0, #1
	bl ReadCutsceneCameraScriptByte
	mov r1, r4
	bl sub_800068A
	pop {r1}
	mov r0, #1
	add r1, #3
	pop {pc}
	thumb_func_end sub_80373FC

	thumb_local_start
sub_803741C:
	push {lr}
	push {r1}
	mov r0, #1
	bl ReadCutsceneCameraScriptHalfword
	bl PlayMusic
	pop {r1}
	mov r0, #1
	add r1, #3
	pop {pc}
	thumb_func_end sub_803741C

	thumb_local_start
sub_8037432:
	push {lr}
	push {r1}
	mov r0, #1
	bl ReadCutsceneCameraScriptWord
	mov r1, r0
	mov r0, #1
	bl camera_80301B2
	pop {r1}
	mov r0, #1
	add r1, #5
	pop {pc}
	thumb_func_end sub_8037432

	thumb_local_start
ReadCutsceneCameraScriptByte:
	push {r1-r3,lr}
	add r3, r1, r0
	ldrb r0, [r3]
	pop {r1-r3,pc}
	thumb_func_end ReadCutsceneCameraScriptByte

	thumb_local_start
ReadCutsceneCameraScriptSignedByte:
	push {r1-r3,lr}
	add r3, r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	pop {r1-r3,pc}
	thumb_func_end ReadCutsceneCameraScriptSignedByte

	thumb_local_start
ReadCutsceneCameraScriptHalfword:
	push {r1-r3,lr}
	add r3, r1, r0
	ldrb r0, [r3,#1]
	ldrb r2, [r3]
	lsl r0, r0, #8
	orr r0, r2
	pop {r1-r3,pc}
	thumb_func_end ReadCutsceneCameraScriptHalfword

	thumb_local_start
ReadCutsceneCameraScriptSignedHalfword:
	push {r1-r3,lr}
	add r3, r1, r0
	ldrb r0, [r3,#1]
	ldrb r2, [r3]
	lsl r0, r0, #8
	orr r0, r2
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	pop {r1-r3,pc}
	thumb_func_end ReadCutsceneCameraScriptSignedHalfword

	thumb_local_start
// (int a1, int a2) -> int
ReadCutsceneCameraScriptWord:
	push {r1-r3,lr}
	add r3, r1, r0
	ldrb r0, [r3,#3]
	ldrb r2, [r3,#2]
	lsl r0, r0, #8
	orr r0, r2
	ldrb r2, [r3,#1]
	lsl r0, r0, #8
	orr r0, r2
	ldrb r2, [r3]
	lsl r0, r0, #8
	orr r0, r2
	pop {r1-r3,pc}
	.balign 4, 0
// 803844c in JP
CutsceneCommandJumptable:
	.word MapScriptCmd_end_for_map_reload_maybe_8037c64+1
	.word MapScriptCmd_end_for_map_reload_maybe_80376dc+1
	.word MapScriptCmd_pause+1
	.word MapScriptCmd_long_pause+1
	.word MapScriptCmd_wait_chatbox+1
	.word MapScriptCmd_wait_if_player_sprite_cur_frame_not_equal_maybe+1
	.word MapScriptCmd_next_80377D0+1
	.word MapScriptCmd_wait_screen_fade+1
	.word MapScriptCmd_wait_camera_script+1
	.word MapScriptCmd_wait_var_equal+1
	.word MapScriptCmd_wait_cutscene_process+1
	.word MapScriptCmd_wait_if_eStruct200a6a0_initialized+1
	.word MapScriptCmd_wait_if_in_pet_menu+1
	.word MapScriptCmd_wait_if_flag_clear+1
	.word MapScriptCmd_wait_if_flag_set+1
	.word MapScriptCmd_wait_if_eStruct2000780_initialized+1
	.word MapScriptCmd_wait_if_eStruct2001010_initialized+1
	.word MapScriptCmd_cutscene_end+1
	.word MapScriptCmd_spawn_cutscene_process+1
	.word MapScriptCmd_kill_cutscene_process+1
	.word MapScriptCmd_set_post_execution_cutscene_script+1
	.word MapScriptCmd_jump+1
	.word MapScriptCmd_jump_if_progress_in_range+1
	.word MapScriptCmd_jump_if_flag_set+1
	.word MapScriptCmd_jump_if_flag_range_set+1
	.word MapScriptCmd_jump_if_flag_clear+1
	.word MapScriptCmd_jump_if_flag_range_clear+1
	.word MapScriptCmd_jump_if_mem_equals+1
	.word MapScriptCmd_jump_if_var_equal+1
	.word MapScriptCmd_jump_if_unk_navicust_range+1
	.word MapScriptCmd_jump_if_chip_count_in_range+1
	.word MapScriptCmd_jump_if_eStruct200A008_unk01_equals+1
	.word MapScriptCmd_jump_if_eStruct200A008_unk01_not_equal+1
	.word MapScriptCmd_cmd_8035afa+1
	.word MapScriptCmd_cmd_8035b44+1
	.word MapScriptCmd_jump_if_current_navi_equals+1
	.word MapScriptCmd_jump_if_current_navi_not_equal+1
	.word MapScriptCmd_jump_if_title_screen_icon_count_equals+1
	.word MapScriptCmd_jump_if_title_screen_icon_count_not_equal+1
	.word MapScriptCmd_set_screen_fade+1
	.word MapScriptCmd_set_game_state_16_17+1
	.word MapScriptCmd_set_event_flag+1
	.word MapScriptCmd_clear_event_flag+1
	.word MapScriptCmd_set_event_flag_range+1
	.word MapScriptCmd_clear_event_flag_range+1
	.word MapScriptCmd_set_event_flag_list+1
	.word MapScriptCmd_clear_event_flag_list+1
	.word MapScriptCmd_write_byte+1
	.word MapScriptCmd_write_hword+1
	.word MapScriptCmd_write_word+1
	.word MapScriptCmd_write_gamestate_byte+1
	.word MapScriptCmd_write_eStruct2001c04_byte+1
	.word MapScriptCmd_write_byte_to_extended_var_plus_param+1
	.word MapScriptCmd_set_var+1
	.word MapScriptCmd_call_sub_8001B1C+1
	.word MapScriptCmd_call_sub_8001B1C_multiple+1
	.word MapScriptCmd_call_sub_8030A30_8035194+1
	.word MapScriptCmd_cmd_8035F6A+1
	.word MapScriptCmd_run_text_script+1
	.word MapScriptCmd_chatbox_cmd_8037a70+1
	.word MapScriptCmd_set_or_clear_chatbox_flags+1
	.word MapScriptCmd_switch_case_from_chatbox_flags_bit0_to_2+1
	.word MapScriptCmd_decomp_text_archive+1
	.word MapScriptCmd_sprite_special_maybe_8037b08+1
	.word MapScriptCmd_ow_player_sprite_8037b6c+1
	.word MapScriptCmd_ow_player_coord_special_8037bb4+1
	.word MapScriptCmd_move_player_in_facing_direction+1
	.word MapScriptCmd_ow_player_8037cc4+1
	.word MapScriptCmd_write_S200ace0_unk_20+1
	.word MapScriptCmd_transform_player_navi_sprite+1
	.word MapScriptCmd_set_ow_player_navi_color_shader+1
	.word MapScriptCmd_write_or_offset_ow_player_fixed_anim_select_8037dac+1
	.word MapScriptCmd_set_player_coords_anim_facing_as_npc+1
	.word MapScriptCmd_spawn_free_ow_map_object_specials+1
	.word MapScriptCmd_spawn_or_free_ow_map_or_npc_objects+1
	.word MapScriptCmd_call_native_with_return_value+1
	.word MapScriptCmd_warp_cmd_8038040+1
	.word MapScriptCmd_play_sound+1
	.word MapScriptCmd_play_music+1
	.word MapScriptCmd_sound_cmd_80380ea+1
	.word MapScriptCmd_sound_cmd_803810e+1
	.word MapScriptCmd_stop_sound+1
	.word MapScriptCmd_navicust_maybe_803813e+1
	.word MapScriptCmd_call_sub_8033FC0+1
	.word MapScriptCmd_run_or_stop_cutscene_camera_script+1
	.word MapScriptCmd_start_fixed_battle+1
	.word MapScriptCmd_start_random_battle+1
	.word NULL
	.word MapScriptCmd_init_eStruct200a6a0+1
	.word MapScriptCmd_run_eStruct200a6a0_callback+1
	.word MapScriptCmd_set_camera_unk0e_unk0c+1
	.word MapScriptCmd_nop_8038246+1
	.word MapScriptCmd_nop_8038256+1
	.word MapScriptCmd_nop_803825e+1
	.word MapScriptCmd_nop_8038266+1
	.word MapScriptCmd_call_sub_8001974+1
	.word MapScriptCmd_init_scenario_effect+1
	.word MapScriptCmd_end_scenario_effect+1
	.word MapScriptCmd_init_minigame_effect+1
	.word MapScriptCmd_end_minigame_effect+1
	.word NULL
	.word NULL
	.word NULL
	.word MapScriptCmd_add_bbs_message_range+1
	.word MapScriptCmd_encryption_cmd_80382de+1
	.word MapScriptCmd_navi_cmd_80340f6+1
	.word MapScriptCmd_change_navi_maybe_80382fe+1
	.word MapScriptCmd_add_mail_range+1
	.word MapScriptCmd_cmd_8038346+1
	.word NULL
	.word NULL
	.word MapScriptCmd_give_or_take_zenny+1
	.word MapScriptCmd_give_or_take_bugfrags+1
	.word NULL
	.word NULL
	.word MapScriptCmd_give_or_take_chips+1
	.word MapScriptCmd_give_or_take_navicust_programs+1
	.word MapScriptCmd_run_or_end_continuous_secondary_map_script+1
	.word MapScriptCmd_store_or_load_game_progress_buffer_maybe_803843c+1
	.word MapScriptCmd_flag_8038466+1
	.word MapScriptCmd_add_request_range+1
	.word MapScriptCmd_rush_food_80384A8+1
	.word MapScriptCmd_set_beast_out_counter_to_3+1
	.word MapScriptCmd_jump_if_req_bbs_master_rank+1
	.word MapScriptCmd_if_in_real_world_jump_else_jump+1
DummyCutsceneScript: .word 0x11
byte_8037694: .byte 0x0, 0xFF, 0xFF, 0xFF, 0x48, 0xFF, 0x34, 0xFF, 0x54, 0xFF
	.byte 0x57, 0xFF, 0xFF, 0xFF, 0x4B, 0xFF, 0x35, 0xFF, 0x56
	.byte 0xFF, 0x55, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF
	thumb_func_end ReadCutsceneCameraScriptWord

	thumb_local_start
// 0x00
MapScriptCmd_end_for_map_reload_maybe_8037c64:
	push {lr}
	movflag EVENT_1741
	bl TestEventFlagFromImmediate
	bne .eventActive
	bl reloadCurNaviStatBoosts_813c3ac
.eventActive
	bl cutscene_8036EFE
	mov r0, #0
	pop {pc}
	thumb_func_end MapScriptCmd_end_for_map_reload_maybe_8037c64

	thumb_local_start
MapScriptCmd_end_for_map_reload_maybe_80376dc:
	push {lr}
	movflag EVENT_1741
	bl TestEventFlagFromImmediate
	bne .eventActive
	bl reloadCurNaviStatBoosts_813c3ac
.eventActive
	bl cutscene_8036ED4
	mov r0, #0
	pop {pc}
	thumb_func_end MapScriptCmd_end_for_map_reload_maybe_80376dc

	thumb_local_start
MapScriptCmd_pause:
	push {lr}
	ldrb r0, [r5,#oCutsceneState_WhichCutsceneScript]
	add r0, #CUTSCENE_FLAG_0x2c_SCRIPT_1_PAUSED
	bl cutscene_testFlag0x2c_80385E0
	bne .scriptPauseAlreadyInitialized

	ldrb r0, [r5,#oCutsceneState_WhichCutsceneScript]
	add r0, #CUTSCENE_FLAG_0x2c_SCRIPT_1_PAUSED
	bl cutscene_setFlag0x2c_80385C0
	mov r6, #1
	bl ReadMapScriptByte
	cmp r4, #0xff
	beq .immediateParam
	ldrb r4, [r5,r4]
	b .gotParam
.immediateParam
	mov r6, #2
	bl ReadMapScriptByte
.gotParam
	// set pause timer of current cutscene script
	ldrb r1, [r5,#oCutsceneState_WhichCutsceneScript]
	add r1, #oCutsceneState_CutsceneScript1PauseTimer
	strb r4, [r5,r1]

.scriptPauseAlreadyInitialized
	// decrement cutscene timer
	ldrb r1, [r5,#oCutsceneState_WhichCutsceneScript]
	add r1, #oCutsceneState_CutsceneScript1PauseTimer
	ldrb r0, [r5,r1]
	sub r0, #1
	strb r0, [r5,r1]
	bge .timerStillActive

	// clear pause flag
	ldrb r0, [r5,#oCutsceneState_WhichCutsceneScript]
	add r0, #CUTSCENE_FLAG_0x2c_SCRIPT_1_PAUSED
	bl cutscene_clearFlag0x2c_80385D0
	// advance to the next command
	add r7, #3
	mov r0, #1
	pop {pc}
.timerStillActive
	mov r0, #0
	pop {pc}
	thumb_func_end MapScriptCmd_pause

	thumb_local_start
MapScriptCmd_long_pause:
	push {lr}
	ldrb r0, [r5,#oCutsceneState_WhichCutsceneScript]
	add r0, #CUTSCENE_FLAG_0x2c_SCRIPT_1_PAUSED_LONG
	bl cutscene_testFlag0x2c_80385E0
	bne .scriptPauseAlreadyInitialized
	ldrb r0, [r5,#oCutsceneState_WhichCutsceneScript]
	add r0, #CUTSCENE_FLAG_0x2c_SCRIPT_1_PAUSED_LONG
	bl cutscene_setFlag0x2c_80385C0
	mov r6, #1
	bl ReadMapScriptByte
	cmp r4, #0xff
	beq .immediateParam
	ldrh r4, [r5,r4]
	b .gotParam
.immediateParam
	mov r6, #2
	bl ReadMapScriptHalfword
.gotParam
	ldrb r1, [r5,#oCutsceneState_WhichCutsceneScript]
	lsl r1, r1, #1
	add r1, #oCutsceneState_CutsceneScript1LongPauseTimer
	strh r4, [r5,r1]
.scriptPauseAlreadyInitialized
	ldrb r1, [r5,#oCutsceneState_WhichCutsceneScript]
	lsl r1, r1, #1
	add r1, #oCutsceneState_CutsceneScript1LongPauseTimer
	ldrh r0, [r5,r1]
	sub r0, #1
	strh r0, [r5,r1]
	bge .timerStillActive
	ldrb r0, [r5,#oCutsceneState_WhichCutsceneScript]
	add r0, #CUTSCENE_FLAG_0x2c_SCRIPT_1_PAUSED_LONG
	bl cutscene_clearFlag0x2c_80385D0
	add r7, #4
	mov r0, #1
	pop {pc}
.timerStillActive
	mov r0, #0
	pop {pc}
	thumb_func_end MapScriptCmd_long_pause

	thumb_local_start
MapScriptCmd_wait_chatbox:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	mov r0, #0x80
	and r0, r4
	bl chatbox_check_eFlags2009F38
	beq loc_80377AC
	mov r0, #0x38
	and r0, r4
	bl chatbox_check_eFlags2009F38
	beq loc_80377B2
loc_80377AC:
	add r7, #2
	mov r0, #1
	pop {pc}
loc_80377B2:
	mov r0, #0
	pop {pc}
	thumb_func_end MapScriptCmd_wait_chatbox

	thumb_local_start
MapScriptCmd_wait_if_player_sprite_cur_frame_not_equal_maybe:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	bl getOWPlayerSpriteFrameParameters_809E434 // sprite_getFrameParameters
	cmp r0, r4
	bne loc_80377CC
	add r7, #2
	mov r0, #1
	pop {pc}
loc_80377CC:
	mov r0, #0
	pop {pc}
	thumb_func_end MapScriptCmd_wait_if_player_sprite_cur_frame_not_equal_maybe

	thumb_local_start
MapScriptCmd_next_80377D0:
	push {lr}
	// always returns zero
	bl returnZero_809E228
	cmp r0, #0
	bne .haltScript
	add r7, #1
	mov r0, #1
	pop {pc}
.haltScript
	mov r0, #0
	pop {pc}
	thumb_func_end MapScriptCmd_next_80377D0

	thumb_local_start
MapScriptCmd_wait_screen_fade:
	push {lr}
	bl IsScreenFadeActive // () -> zf
	beq .screenFadeActive
	add r7, #1
	mov r0, #1
	pop {pc}
.screenFadeActive
	mov r0, #0
	pop {pc}
	thumb_func_end MapScriptCmd_wait_screen_fade

	thumb_local_start
MapScriptCmd_wait_camera_script:
	push {lr}
	ldrb r0, [r5,#oCutsceneState_CutsceneCameraScriptActive]
	tst r0, r0
	bne .cameraScriptActive
	add r7, #1
	mov r0, #1
	pop {pc}
.cameraScriptActive
	mov r0, #0
	pop {pc}
	thumb_func_end MapScriptCmd_wait_camera_script

	thumb_local_start
MapScriptCmd_wait_var_equal:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	ldrb r0, [r5,r4]
	mov r6, #2
	bl ReadMapScriptByte
	cmp r0, r4
	bne .varNotEqual
	add r7, #3
	mov r0, #1
	pop {pc}
.varNotEqual
	mov r0, #0
	pop {pc}
	thumb_func_end MapScriptCmd_wait_var_equal

	thumb_local_start
MapScriptCmd_wait_cutscene_process:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	ldr r0, [r5,r4]
	ldrb r0, [r0]
	cmp r0, #0x11
	bne .notEndOpcode
	add r7, #2
	mov r0, #1
	pop {pc}
.notEndOpcode
	mov r0, #0
	pop {pc}
	thumb_func_end MapScriptCmd_wait_cutscene_process

	thumb_local_start
MapScriptCmd_wait_if_eStruct200a6a0_initialized:
	push {lr}
	bl Is_eStruct200a6a0_Initialized
	bne .structInitialized
	add r7, #1
	mov r0, #1
	pop {pc}
.structInitialized
	mov r0, #0
	pop {pc}
	thumb_func_end MapScriptCmd_wait_if_eStruct200a6a0_initialized

	thumb_local_start
MapScriptCmd_wait_if_in_pet_menu:
	push {lr}
	mov r0, #1
	bl TestPETMenuDataFlag
	bne .inPETMenu
	add r7, #1
	mov r0, #1
	pop {pc}
.inPETMenu
	mov r0, #0
	pop {pc}
	thumb_func_end MapScriptCmd_wait_if_in_pet_menu

	thumb_local_start
MapScriptCmd_wait_if_flag_clear:
	push {lr}
	mov r6, #1
	bl ReadMapScriptHalfword
	mov r0, r4
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	beq .flagClear
	add r7, #3
	mov r0, #1
	pop {pc}
.flagClear
	mov r0, #0
	pop {pc}
	thumb_func_end MapScriptCmd_wait_if_flag_clear

	thumb_local_start
MapScriptCmd_wait_if_flag_set:
	push {lr}
	mov r6, #1
	bl ReadMapScriptHalfword
	mov r0, r4
	bl TestEventFlag // (u16 entryFlagBitfield) -> zf
	bne .flagSet
	add r7, #3
	mov r0, #1
	pop {pc}
.flagSet
	mov r0, #0
	pop {pc}
	thumb_func_end MapScriptCmd_wait_if_flag_set

	thumb_local_start
MapScriptCmd_wait_if_eStruct2000780_initialized:
	push {lr}
	bl Is_eStruct2000780_Initialized
	bne .structInitialized
	add r7, #1
	mov r0, #1
	pop {pc}
.structInitialized
	mov r0, #0
	pop {pc}
	thumb_func_end MapScriptCmd_wait_if_eStruct2000780_initialized

	thumb_local_start
MapScriptCmd_wait_if_eStruct2001010_initialized:
	push {lr}
	bl Is_eStruct2001010_Initialized
	bne loc_80378BA
	add r7, #1
	mov r0, #1
	pop {pc}
loc_80378BA:
	mov r0, #0
	pop {pc}
	thumb_func_end MapScriptCmd_wait_if_eStruct2001010_initialized

	thumb_local_start
MapScriptCmd_cutscene_end:
	mov r0, #0
	mov pc, lr
	thumb_func_end MapScriptCmd_cutscene_end

	thumb_local_start
MapScriptCmd_spawn_cutscene_process:
	push {lr}
	// read cutscene script pointer
	mov r6, #2
	bl ReadMapScriptWord
	mov r0, r4

	// read cutscene script process offset
	mov r6, #1
	bl ReadMapScriptByte
	str r0, [r5,r4]

	// get index of cutscene script
	sub r4, #oCutsceneState_CutsceneScriptPos
	lsr r4, r4, #2
	mov r0, r4

	// clear timer flags
	add r0, #CUTSCENE_FLAG_0x2c_SCRIPT_1_PAUSED
	bl cutscene_clearFlag0x2c_80385D0
	mov r0, r4
	add r0, #CUTSCENE_FLAG_0x2c_SCRIPT_1_PAUSED_LONG
	bl cutscene_clearFlag0x2c_80385D0

	// advance to next command
	add r7, #6
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_spawn_cutscene_process

	thumb_local_start
MapScriptCmd_kill_cutscene_process:
	push {lr}
	ldr r0, =DummyCutsceneScript
	mov r6, #1
	bl ReadMapScriptByte
	str r0, [r5,r4]
	add r7, #2
	mov r0, #1
	pop {pc}
	.pool // 8037900
	thumb_func_end MapScriptCmd_kill_cutscene_process

	thumb_local_start
MapScriptCmd_set_post_execution_cutscene_script:
	push {lr}
	mov r6, #1
	bl ReadMapScriptWord
	str r4, [r5,#oCutsceneState_CutsceneScriptAfterCutsceneSkip]
	add r7, #5
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_set_post_execution_cutscene_script

	thumb_local_start
MapScriptCmd_jump_if_var_equal:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	ldrb r0, [r5,r4]
	mov r6, #2
	bl ReadMapScriptByte
	cmp r0, r4
	bne .notEqual
	mov r6, #3
	bl ReadMapScriptWord
	mov r7, r4
	mov r0, #1
	pop {pc}
.notEqual
	add r7, #7
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_jump_if_var_equal

	thumb_local_start
MapScriptCmd_jump_if_eStruct200A008_unk01_equals:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	bl eStruct200A008_getUnk01 // possibly battle related
	cmp r0, r4
	bne .notEqual
	mov r6, #2
	bl ReadMapScriptWord
	mov r7, r4
	mov r0, #1
	pop {pc}
.notEqual
	add r7, #6
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_jump_if_eStruct200A008_unk01_equals

	thumb_local_start
MapScriptCmd_jump_if_eStruct200A008_unk01_not_equal:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	bl eStruct200A008_getUnk01
	cmp r0, r4
	beq .isEqual
	mov r6, #2
	bl ReadMapScriptWord
	mov r7, r4
	mov r0, #1
	pop {pc}
.isEqual
	add r7, #6
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_jump_if_eStruct200A008_unk01_not_equal

	thumb_local_start
MapScriptCmd_jump_if_current_navi_equals:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	bl GetCurPETNavi // () -> u8
	cmp r0, r4
	bne .currentNaviNotEqual
	mov r6, #2
	bl ReadMapScriptWord
	mov r7, r4
	mov r0, #1
	pop {pc}
.currentNaviNotEqual
	add r7, #6
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_jump_if_current_navi_equals

	thumb_local_start
MapScriptCmd_jump_if_current_navi_not_equal:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	bl GetCurPETNavi // () -> u8
	cmp r0, r4
	beq .currentNaviEqual
	mov r6, #2
	bl ReadMapScriptWord
	mov r7, r4
	mov r0, #1
	pop {pc}
.currentNaviEqual
	add r7, #6
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_jump_if_current_navi_not_equal

	thumb_local_start
MapScriptCmd_jump_if_title_screen_icon_count_equals:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	bl GetTitleScreenIconCount
	cmp r0, r4
	bne .countNotEqual
	mov r6, #2
	bl ReadMapScriptWord
	mov r7, r4
	mov r0, #1
	pop {pc}
.countNotEqual
	add r7, #6
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_jump_if_title_screen_icon_count_equals

	thumb_local_start
MapScriptCmd_jump_if_title_screen_icon_count_not_equal:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	bl GetTitleScreenIconCount
	cmp r0, r4
	beq .countEqual
	mov r6, #2
	bl ReadMapScriptWord
	mov r7, r4
	mov r0, #1
	pop {pc}
.countEqual
	add r7, #6
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_jump_if_title_screen_icon_count_not_equal

	thumb_local_start
MapScriptCmd_write_byte_to_extended_var_plus_param:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	lsl r0, r4, #2
	add r0, #oCutsceneState_owMapObjectPtrs_44
	mov r6, #2
	bl ReadMapScriptByte
	ldr r0, [r5,r0]
	add r0, r0, r4
	mov r6, #3
	bl ReadMapScriptByte
	strb r4, [r0]
	add r7, #4
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_write_byte_to_extended_var_plus_param

	thumb_local_start
MapScriptCmd_set_var:
	push {lr}
	mov r6, #2
	bl ReadMapScriptByte
	mov r0, r4
	mov r6, #1
	bl ReadMapScriptByte
	strb r0, [r5,r4]
	add r7, #3
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_set_var

	thumb_local_start
MapScriptCmd_run_text_script:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	cmp r4, #0xff
	beq .notFromMem
	ldr r0, [r5,#oCutsceneState_TextArchivePtr]
	ldrb r1, [r5,r4]
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	add r7, #2
	mov r0, #1
	pop {pc}
.notFromMem
	mov r6, #2
	bl ReadMapScriptByte
	mov r1, r4
	ldr r0, [r5,#oCutsceneState_TextArchivePtr]
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	add r7, #3
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_run_text_script

	thumb_local_start
// ex. called after getting a chip from the numbertrader
MapScriptCmd_chatbox_cmd_8037a70:
	push {lr}
	bl chatbox_8040818
	add r7, #1
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_chatbox_cmd_8037a70

	thumb_local_start
MapScriptCmd_set_or_clear_chatbox_flags:
	push {lr}
	mov r6, #2
	bl ReadMapScriptByte
	mov r0, r4
	mov r6, #1
	bl ReadMapScriptByte
	cmp r4, #1
	beq .clearChatboxFlags
	bl chatbox_set_eFlags2009F38
	b .done
.clearChatboxFlags
	bl chatbox_clear_eFlags2009F38 // (int a1) ->
.done
	add r7, #3
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_set_or_clear_chatbox_flags

	thumb_local_start
MapScriptCmd_switch_case_from_chatbox_flags_bit0_to_2:
	push {lr}
	bl chatbox_8045F4C
	lsl r0, r0, #2
	add r0, #1
	mov r6, r0
	bl ReadMapScriptWord
	mov r7, r4
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_switch_case_from_chatbox_flags_bit0_to_2

	thumb_local_start
MapScriptCmd_decomp_text_archive:
	push {lr}
	mov r6, #1
	bl ReadMapScriptWord
	mov r0, r4
	cmp r0, #0
	bge .uncompressedPtr
	bl DecompressTextArchiveForCutscene // (void *a1) -> void*
.uncompressedPtr
	str r0, [r5,#oCutsceneState_TextArchivePtr]
	add r7, #5
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_decomp_text_archive

// (void *a1) -> void*
	thumb_local_start
DecompressTextArchiveForCutscene:
	push {lr}
	cmp r0, #0
	bge .uncompressedPtr
	lsl r0, r0, #1
	lsr r0, r0, #1
	// dest
	ldr r1, =unk_2034A00
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	ldr r0, =unk_2034A00
	add r0, #4
.uncompressedPtr
	pop {pc}
	.balign 4, 0
	.pool // 8037AE8
	thumb_func_end DecompressTextArchiveForCutscene

	thumb_func_start uncomp_8037AEC
uncomp_8037AEC:
	push {lr}
	cmp r0, #0
	bge locret_8037B00
	lsl r0, r0, #1
	lsr r0, r0, #1
	// dest
	ldr r1, off_8037B04 // =unk_2033400
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	ldr r0, off_8037B04 // =unk_2033400
	add r0, #4
locret_8037B00:
	pop {pc}
	.balign 4, 0
off_8037B04: .word unk_2033400
	thumb_func_end uncomp_8037AEC

	thumb_local_start
MapScriptCmd_sprite_special_maybe_8037b08:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	ldr r0, =off_8037B24
	ldr r0, [r0,r4]
	mov lr, pc
	bx r0
	add r7, #2
	mov r0, #1
	pop {pc}
	.balign 4, 0
	.pool // 8037B20
off_8037B24: .word owPlayer_lockPlayerForNonNPCDialogue_809E0B0+1
	.word owPlayer_unlockPlayerAfterNonNPCDialogue_809E122+1
	.word owPlayer_809E0FC+1
	.word sub_809E114+1
	.word sub_809E230+1
	.word sub_809E23C+1
	.word sub_809E248+1
	.word sub_809E254+1
	.word sub_809E26A+1
	.word sub_809E276+1
	.word sub_809E284+1
	.word sub_809E292+1
	.word sub_809E442+1
	.word sub_809E452+1
	.word sub_809E4AE+1
	.word sub_809E4BC+1
	.word owPlayer_zeroS2000AA0Param0x4_809e312+1
	.word setCurNaviHPToFull_803ceb8+1
	thumb_func_end MapScriptCmd_sprite_special_maybe_8037b08

	thumb_local_start
MapScriptCmd_ow_player_sprite_8037b6c:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	ldr r3, =off_8037B9C
	ldr r3, [r3,r4]
	mov r6, #2
	bl ReadMapScriptByte
	cmp r4, #0xff
	beq .readFromParam
	ldrb r4, [r5,r4]
	b .gotVar
.readFromParam
	mov r6, #3
	bl ReadMapScriptByte
.gotVar
	mov r0, r4
	mov lr, pc
	bx r3
	add r7, #4
	mov r0, #1
	pop {pc}
	.pool // 8037B98
off_8037B9C: .word owPlayer_writeLayerIndexOverride_809e260+1
	.word SetOWPlayerFacingDirection+1
	.word owPlayer_setPalette_809e2a0+1
	.word owPlayer_setMosaicScalingParameters_8002c7a_809e4a0+1
	.word SetOWPlayerNaviPaletteIndex+1
	.word owPlayer_setS2000AA0Param0x4_809e314+1
	thumb_func_end MapScriptCmd_ow_player_sprite_8037b6c

	thumb_local_start
MapScriptCmd_ow_player_coord_special_8037bb4:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	cmp r4, #8
	blt .lessThanEight
	ldrb r0, [r5,#oCutsceneState_WhichCutsceneScript]
	tst r0, r0
	beq .waitCommand
.lessThanEight
	mov r0, #CUTSCENE_FLAG_0x2c_8
	bl cutscene_testFlag0x2c_80385E0
	bne .flagAlreadySet
	mov r0, #CUTSCENE_FLAG_0x2c_8
	bl cutscene_setFlag0x2c_80385C0
	mov r6, #2
	bl ReadMapScriptByte
	cmp r4, #0xff
	beq .immediateParam
	ldrb r4, [r5,r4]
	b .gotParam
.immediateParam
	mov r6, #3
	bl ReadMapScriptByte
.gotParam
	strb r4, [r5,#oCutsceneState_Unk_10]
.flagAlreadySet
	mov r6, #4
	bl ReadMapScriptSignedHalfword
	mov r0, r4
	mov r6, #6
	bl ReadMapScriptSignedHalfword
	mov r1, r4
	mov r6, #8
	bl ReadMapScriptSignedHalfword
	mov r2, r4
	lsl r0, r0, #0xc
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	mov r6, #1
	bl ReadMapScriptByte
	ldr r3, =off_8037C34
	ldr r3, [r3,r4]
	mov lr, pc
	bx r3
	ldrb r0, [r5,#oCutsceneState_Unk_10]
	sub r0, #1
	strb r0, [r5,#oCutsceneState_Unk_10]
	bgt .waitCommand
	mov r0, #8
	bl cutscene_clearFlag0x2c_80385D0
	add r7, #0xa
	mov r0, #1
	pop {pc}
.waitCommand
	mov r0, #0
	pop {pc}
	.balign 4, 0
	.pool // 8037C30
off_8037C34: .word owPlayer_indirectlySetPlayerCoordsMaybe_809e1a4+1
	.word owPlayer_indirectlySetPlayerCoordsMaybe_809e188+1
	.word owPlayer_offsetS200ace0Coords_809e1fa+1
	.word owPlayer_copyCoordsToNextCoordsThenAddOffsetToCoords_809e1d8+1
	thumb_func_end MapScriptCmd_ow_player_coord_special_8037bb4

	thumb_local_start
// paramType0 immediateParam1 movementSpeed2
MapScriptCmd_move_player_in_facing_direction:
	push {lr}
	ldrb r0, [r5,#oCutsceneState_WhichCutsceneScript]
	tst r0, r0
	beq .waitCommand
	bl GetOWPlayerFacingDirection
	mov r3, r0
	mov r0, #CUTSCENE_FLAG_0x2c_8
	bl cutscene_testFlag0x2c_80385E0
	bne .flagAlreadySet
	mov r0, #CUTSCENE_FLAG_0x2c_8
	bl cutscene_setFlag0x2c_80385C0
	mov r6, #1
	bl ReadMapScriptByte
	cmp r4, #0xff
	beq .immediateParam
	ldrb r4, [r5,r4]
	b .gotParam
.immediateParam
	mov r6, #2
	bl ReadMapScriptByte
.gotParam
	strb r4, [r5,#oCutsceneState_Unk_10]
.flagAlreadySet
	mov r6, #3
	bl ReadMapScriptSignedHalfword
	mov r0, r4
	lsl r0, r0, #8
	mov r1, r0
	ldr r4, =byte_8037CB4
	lsl r3, r3, #1
	ldrsb r2, [r4,r3]
	mul r0, r2
	add r3, #1
	ldrsb r2, [r4,r3]
	mul r1, r2
	mov r2, #0
	bl owPlayer_offsetS200ace0Coords_809e1fa
	ldrb r0, [r5,#oCutsceneState_Unk_10]
	sub r0, #1
	strb r0, [r5,#oCutsceneState_Unk_10]
	bgt .waitCommand
	mov r0, #8
	bl cutscene_clearFlag0x2c_80385D0
	add r7, #5
	mov r0, #1
	pop {pc}
.waitCommand
	mov r0, #0
	pop {pc}
	.balign 4, 0
	.pool // 8037CB0
byte_8037CB4:
	.byte 0x10, 0xF0
	.byte 0x10, 0x0
	.byte 0x8, 0x8
	.byte 0x0, 0x10
	.byte 0xF0, 0x10
	.byte 0xF0, 0x0
	.byte 0xF8, 0xF8
	.byte 0x0, 0xF0
	thumb_func_end MapScriptCmd_move_player_in_facing_direction

	thumb_local_start
MapScriptCmd_ow_player_8037cc4:
	push {lr}
	mov r6, #2
	bl ReadMapScriptByte
	mov r0, r4
	mov r6, #1
	bl ReadMapScriptByte
	cmp r4, #0xff
	beq .useImmediateParam
	ldrb r0, [r5,r4]
.useImmediateParam
	bl owPlayer_809e218
	add r7, #3
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_ow_player_8037cc4

	thumb_local_start
MapScriptCmd_write_S200ace0_unk_20:
	push {lr}
	mov r6, #1
	bl ReadMapScriptWord
	mov r0, r4
	bl owPlayer_writeS200aec0_Unk20_809e496
	add r7, #5
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_write_S200ace0_unk_20

	thumb_local_start
MapScriptCmd_transform_player_navi_sprite:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	cmp r4, #0
	beq .subcmdZero
	cmp r4, #1
	beq .subcmdOne
	b .subcmdTwo
.subcmdZero // set custom transform
	mov r6, #2
	bl ReadMapScriptByte
	mov r0, r4
	mov r6, #3
	bl ReadMapScriptByte
	mov r1, r4
	mov r6, #4
	bl ReadMapScriptByte
	mov r2, r4
	bl owPlayer_setS2000aa0_param0x0to0x2_809e2c8
	add r7, #5
	mov r0, #1
	pop {pc}
.subcmdOne // set default transform
	bl owPlayer_setS2000aa0_param0x0to0x2_with0x40_0x40_0x0_respectively_809e2c2
	add r7, #2
	mov r0, #1
	pop {pc}
.subcmdTwo // set transform offset
	mov r0, #CUTSCENE_FLAG_0x2c_9
	bl cutscene_testFlag0x2c_80385E0
	bne .flagAlreadySet
	mov r0, #CUTSCENE_FLAG_0x2c_9
	bl cutscene_setFlag0x2c_80385C0
	mov r6, #2
	bl ReadMapScriptByte
	strb r4, [r5,#oCutsceneState_Unk_11]
.flagAlreadySet
	mov r6, #3
	bl ReadMapScriptSignedByte
	mov r0, r4
	mov r6, #4
	bl ReadMapScriptSignedByte
	mov r1, r4
	mov r6, #5
	bl ReadMapScriptSignedByte
	mov r2, r4
	bl owPlayer_offsetS2000aa0_param0x0to0x2_809e2dc
	ldrb r0, [r5,#oCutsceneState_Unk_11]
	sub r0, #1
	strb r0, [r5,#oCutsceneState_Unk_11]
	bgt .timerStillActive
	mov r0, #CUTSCENE_FLAG_0x2c_9
	bl cutscene_clearFlag0x2c_80385D0
	add r7, #6
	mov r0, #1
	pop {pc}
.timerStillActive
	mov r0, #0
	pop {pc}
	thumb_func_end MapScriptCmd_transform_player_navi_sprite

	thumb_local_start
MapScriptCmd_set_ow_player_navi_color_shader:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	cmp r4, #0
	beq .customOWPlayerNaviColorShader
	cmp r4, #1
	beq .defaultOWPlayerNaviColorShader
.customOWPlayerNaviColorShader
	mov r6, #2
	bl ReadMapScriptHalfword
	mov r0, r4
	bl SetOWPlayerNaviColorShader
	add r7, #4
	mov r0, #1
	pop {pc}
.defaultOWPlayerNaviColorShader
	bl SetDefaultOWPlayerNaviColorShader
	add r7, #2
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_set_ow_player_navi_color_shader

	thumb_local_start
// two modes
// 00 - write anim select
// 01 - offset from current facing
MapScriptCmd_write_or_offset_ow_player_fixed_anim_select_8037dac:
	push {lr}
	mov r6, #2
	bl ReadMapScriptByte
	cmp r4, #0xff
	beq .immediateParam
	ldrb r4, [r5,r4]
	b .gotParam
.immediateParam
	mov r6, #3
	bl ReadMapScriptByte
.gotParam
	mov r0, r4
	mov r6, #1
	bl ReadMapScriptByte
	cmp r4, #0
	beq .writeAnimSelect
	// offset anim select
	mov r4, r0
	bl GetOWPlayerFacingDirection
	add r0, r0, r4
.writeAnimSelect
	bl owPlayer_setS200ace0_fixedAnimationSelect_809e13c
	add r7, #4
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_write_or_offset_ow_player_fixed_anim_select_8037dac

	thumb_local_start
MapScriptCmd_set_player_coords_anim_facing_as_npc:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	mov r0, #oOverworldNPCObject_Size
	mul r4, r0
	ldr r0, =eOverworldNPCObjects
	add r4, r4, r0
	ldr r0, [r4,#oOverworldNPCObject_X]
	ldr r1, [r4,#oOverworldNPCObject_Y]
	ldr r2, [r4,#oOverworldNPCObject_Z]
	bl owPlayer_indirectlySetPlayerCoordsMaybe_809e1a4
	ldrb r0, [r4,#oOverworldNPCObject_AnimationSelect]
	bl owPlayer_setS200ace0_fixedAnimationSelect_809e13c
	mov r6, #2
	bl ReadMapScriptByte
	mov r0, r4
	bl SetOWPlayerFacingDirection
	add r7, #3
	mov r0, #1
	pop {pc}
	.balign 4, 0
	// 8037E14
	.pool
	thumb_func_end MapScriptCmd_set_player_coords_anim_facing_as_npc

	thumb_local_start
MapScriptCmd_spawn_free_ow_map_object_specials:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	mov r0, r4
	mov r1, #0xf0
	and r1, r4
	lsr r2, r1, #2
	ldr r3, =off_8037E38
	ldr r3, [r3,r2]
	mov lr, pc
	bx r3
	pop {pc}
	.balign 4, 0
	.pool // 8037E34
off_8037E38: .word MapScriptSubCmd_spawn_ow_map_object+1
	.word MapScriptSubCmd_spawn_ow_map_object_relative_to_ow_player+1
	.word MapScriptSubCmd_spawn_ow_map_object_relative_to_ow_npc+1
	.word MapScriptSubCmd_free_ow_map_object+1
	.word MapScriptSubCmd_free_all_spawned_ow_map_objects+1
	thumb_func_end MapScriptCmd_spawn_free_ow_map_object_specials

	thumb_local_start
MapScriptSubCmd_spawn_ow_map_object:
	push {lr}
	mov r1, #0xf
	and r4, r1
	lsl r4, r4, #2
	add r4, #oCutsceneState_owMapObjectPtrs_44
	push {r5}
	add r5, r5, r4 // eCutsceneState_extendedVars_44 + wordparam
	mov r6, #2
	bl ReadMapScriptByte
	mov r0, r4
	mov r6, #3
	bl ReadMapScriptHalfword
	mov r1, r4
	mov r6, #5
	bl ReadMapScriptHalfword
	mov r2, r4
	mov r6, #7
	bl ReadMapScriptHalfword
	mov r3, r4
	mov r6, #9
	bl ReadMapScriptWord
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	mov r6, r5
	bl SpawnOverworldMapObject
	str r5, [r6]
	pop {r5}
	add r7, #0xd
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptSubCmd_spawn_ow_map_object

	thumb_local_start
	.set oStack_OWPlayerObject_X, 0x0
	.set oStack_OWPlayerObject_Y, 0x4
	.set oStack_OWPlayerObject_Z, 0x8
MapScriptSubCmd_spawn_ow_map_object_relative_to_ow_player:
	push {lr}
	mov r1, #0xf
	and r4, r1
	lsl r4, r4, #2
	add r4, #oCutsceneState_owMapObjectPtrs_44
	push {r5}
	add r5, r5, r4
	bl ReadOWPlayerObjectCoords
	sub sp, sp, #0xc
	str r0, [sp,#oStack_OWPlayerObject_X]
	str r1, [sp,#oStack_OWPlayerObject_Y]
	str r2, [sp,#oStack_OWPlayerObject_Z]
	mov r6, #3
	bl ReadMapScriptHalfword
	mov r1, r4
	mov r6, #5
	bl ReadMapScriptHalfword
	mov r2, r4
	mov r6, #7
	bl ReadMapScriptHalfword
	mov r3, r4
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	ldr r4, [sp,#oStack_OWPlayerObject_X]
	add r1, r1, r4
	ldr r4, [sp,#oStack_OWPlayerObject_Y]
	add r2, r2, r4
	ldr r4, [sp,#oStack_OWPlayerObject_Z]
	add r3, r3, r4
	add sp, sp, #0xc
	mov r6, #2
	bl ReadMapScriptByte
	mov r0, r4
	mov r6, #9
	bl ReadMapScriptWord
	mov r6, r5
	bl SpawnOverworldMapObject
	str r5, [r6]
	pop {r5}
	add r7, #0xd
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptSubCmd_spawn_ow_map_object_relative_to_ow_player

	thumb_local_start
	.set oStack_OverworldNPCObject_X, 0x0
	.set oStack_OverworldNPCObject_Y, 0x4
	.set oStack_OverworldNPCObject_Z, 0x8
MapScriptSubCmd_spawn_ow_map_object_relative_to_ow_npc:
	push {lr}
	mov r1, #0xf
	and r4, r1
	lsl r4, r4, #2
	add r4, #oCutsceneState_owMapObjectPtrs_44
	push {r5}
	add r5, r5, r4
	mov r6, #2
	bl ReadMapScriptByte
	mov r1, #0xd8
	mul r1, r4
	ldr r4, off_8037FB4 // =eOverworldNPCObjects
	add r4, r4, r1
	ldr r0, [r4,#oOverworldNPCObject_X]
	ldr r1, [r4,#oOverworldNPCObject_Y]
	ldr r2, [r4,#oOverworldNPCObject_Z]
	sub sp, sp, #0xc
	str r0, [sp,#oStack_OverworldNPCObject_X]
	str r1, [sp,#oStack_OverworldNPCObject_Y]
	str r2, [sp,#oStack_OverworldNPCObject_Z]
	mov r6, #4
	bl ReadMapScriptHalfword
	mov r1, r4
	mov r6, #6
	bl ReadMapScriptHalfword
	mov r2, r4
	mov r6, #8
	bl ReadMapScriptHalfword
	mov r3, r4
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	ldr r4, [sp,#oStack_OverworldNPCObject_X]
	add r1, r1, r4
	ldr r4, [sp,#oStack_OverworldNPCObject_Y]
	add r2, r2, r4
	ldr r4, [sp,#oStack_OverworldNPCObject_Z]
	add r3, r3, r4
	add sp, sp, #0xc
	mov r6, #3
	bl ReadMapScriptByte
	mov r0, r4
	mov r6, #0xa
	bl ReadMapScriptWord
	mov r6, r5
	bl SpawnOverworldMapObject
	str r5, [r6]
	pop {r5}
	add r7, #0xe
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptSubCmd_spawn_ow_map_object_relative_to_ow_npc

	thumb_local_start
MapScriptSubCmd_free_ow_map_object:
	push {lr}
	mov r1, #0xf
	and r4, r1
	lsl r4, r4, #2
	add r4, #oCutsceneState_owMapObjectPtrs_44
	push {r5}
	ldr r5, [r5,r4]
	tst r5, r5
	beq .mapObjectNull
	mov r0, #0
	str r0, [r5,r4]
	bl FreeOverworldMapObject
.mapObjectNull
	pop {r5}
	add r7, #2
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptSubCmd_free_ow_map_object

	thumb_local_start
MapScriptSubCmd_free_all_spawned_ow_map_objects:
	push {lr}
	mov r4, #oCutsceneState_owMapObjectPtrs_44
.freeAllMapObjectsLoop
	ldr r0, [r5,r4]
	tst r0, r0
	beq .mapObjectNull
	mov r1, #0
	str r1, [r5,r4]
	push {r5}
	mov r5, r0
	bl FreeOverworldMapObject
	pop {r5}
.mapObjectNull
	add r4, #4
	cmp r4, #(oCutsceneState_owMapObjectPtrsEnd_70 - 4)
	ble .freeAllMapObjectsLoop
	add r7, #2
	mov r0, #1
	pop {pc}
off_8037FB4: .word eOverworldNPCObjects
	thumb_func_end MapScriptSubCmd_free_all_spawned_ow_map_objects

	thumb_local_start
MapScriptCmd_spawn_or_free_ow_map_or_npc_objects:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	cmp r4, #1
	beq .freeAllObjectsOfSpecifiedTypes
	cmp r4, #2
	beq .freeThenSpawnNPCObjects
	cmp r4, #3
	beq .spawnNPCObjectsForMap
	cmp r4, #4
	beq .spawnMapObjectsForMap
	cmp r4, #5
	beq .freeNPCObjectsIfDifferentMap
	// spawn objects from list
	mov r6, #2
	bl ReadMapScriptWord
	mov r0, r4
	bl SpawnObjectsFromList
	add r7, #6
	mov r0, #1
	pop {pc}
.freeAllObjectsOfSpecifiedTypes
	mov r6, #2
	bl ReadMapScriptByte
	mov r0, r4
	bl FreeAllObjectsOfSpecifiedTypes
	add r7, #3
	mov r0, #1
	pop {pc}
.freeThenSpawnNPCObjects
	mov r6, #2
	bl ReadMapScriptWord
	mov r0, r4
	bl npc_freeAllObjectsThenSpawnObjectsFromGameStatePtr20
	add r7, #6
	mov r0, #1
	pop {pc}
.spawnNPCObjectsForMap
	bl npc_spawnOverworldNPCObjectsForMap
	add r7, #2
	mov r0, #1
	pop {pc}
.spawnMapObjectsForMap
	bl mapObject_spawnMapObjectsForMap
	add r7, #2
	mov r0, #1
	pop {pc}
.freeNPCObjectsIfDifferentMap
	bl npc_freeAllObjectsIfDifferentMap_80351b4
	add r7, #2
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_spawn_or_free_ow_map_or_npc_objects

	thumb_local_start
MapScriptCmd_call_native_with_return_value:
	push {lr}
	mov r6, #1
	bl ReadMapScriptWord
	mov lr, pc
	bx r4
	bne .halt
	add r7, #5
	mov r0, #1
	pop {pc}
.halt
	mov r0, #0
	pop {pc}
	thumb_func_end MapScriptCmd_call_native_with_return_value

	thumb_local_start
MapScriptCmd_warp_cmd_8038040:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	mov r3, r4
	mov r0, #0x40
	tst r3, r0
	bne .subcmd0x40
	mov r0, #0x20
	tst r3, r0
	bne .subcmd0x20
	mov r6, #3
	bl ReadMapScriptWord
	mov r2, r4
	mov r0, #0x80
	tst r3, r0
	beq .param0bit7clear
	ldr r2, [r5,#oCutsceneState_Unk_34]
.param0bit7clear
	mov r0, #1
	tst r3, r0
	bne .param0bit0set
	mov r0, r2
	mov r1, #0
	mov r6, #2
	bl ReadMapScriptByte
	mov r2, r4
	bl warp_setSubsystemIndexTo0x10AndOthers_8005f00
	add r7, #7
	mov r0, #1
	pop {pc}
.param0bit0set
	mov r0, r2
	mov r1, #0
	mov r6, #2
	bl ReadMapScriptByte
	mov r2, r4
	bl warp_setSubsystemIndexTo0x14AndOthers_8005f14
	add r7, #7
	mov r0, #1
	pop {pc}
.subcmd0x40
	bl warp_8005f32
	bl warp_setSubsystemIndexTo0x10AndOthers_8005f00
	add r7, #2
	mov r0, #1
	pop {pc}
.subcmd0x20
	mov r6, #2
	bl ReadMapScriptWord
	str r4, [r5,#oCutsceneState_Unk_34]
	add r7, #6
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_warp_cmd_8038040

	thumb_local_start
MapScriptCmd_play_sound:
	push {lr}
	mov r6, #1
	bl ReadMapScriptHalfword
	mov r0, r4
	bl PlaySoundEffect
	add r7, #3
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_play_sound

	thumb_local_start
MapScriptCmd_play_music:
	push {lr}
	mov r6, #1
	bl ReadMapScriptSignedHalfword
	cmp r4, #0
	bge .regularPlayMusic
	bl playCertainMapMusicBasedOnEventByte_8036e44
	bl PlayMapMusic
	b .done
.regularPlayMusic
	mov r0, r4
	bl PlayMusic
.done
	add r7, #3
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_play_music

	thumb_local_start
MapScriptCmd_sound_cmd_80380ea:
	push {lr}
	mov r6, #1
	bl ReadMapScriptHalfword
	mov r0, r4
	mov r6, #3
	bl ReadMapScriptByte
	mov r1, r4
	mov r6, #4
	bl ReadMapScriptByte
	mov r2, r4
	bl sound_80006A2
	add r7, #5
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_sound_cmd_80380ea

	thumb_local_start
MapScriptCmd_sound_cmd_803810e:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	mov r1, r4
	mov r6, #2
	bl ReadMapScriptByte
	mov r0, r4
	bl sub_800068A
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	mov r0, #0x63
	strb r0, [r1,#oGameState_BGMusicIndicator]
	add r7, #3
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_sound_cmd_803810e

	thumb_local_start
MapScriptCmd_stop_sound:
	push {lr}
	bl musicGameState_8000784 // () -> void
	add r7, #1
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_stop_sound

	thumb_local_start
MapScriptCmd_navicust_maybe_803813e:
	push {lr}
	mov r6, #2
	bl ReadMapScriptByte
	mov r0, r4
	mov r6, #3
	bl ReadMapScriptByte
	mov r1, r4
	mov r6, #1
	bl ReadMapScriptByte
	cmp r4, #1
	beq loc_8038160
	bl sub_803CD98
	b loc_8038164
loc_8038160:
	bl sub_803CE08
loc_8038164:
	add r7, #4
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_navicust_maybe_803813e

	thumb_local_start
MapScriptCmd_run_or_stop_cutscene_camera_script:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	cmp r4, #0
	bne .resetCamera
	mov r6, #2
	bl ReadMapScriptWord
	str r4, [r5,#oCutsceneState_Unk_3c]
	mov r0, r4
	bl cutsceneCamera_setCutsceneCameraScript_8036f98
	mov r0, #TRUE
	strb r0, [r5,#oCutsceneState_CutsceneCameraScriptActive]
	add r7, #6
	mov r0, #1
	pop {pc}
.resetCamera
	mov r0, #NULL
	str r0, [r5,#oCutsceneState_Unk_3c]
	bl cutsceneCamera_focusCameraOnPlayerMaybe_8036faa
	mov r0, #FALSE
	strb r0, [r5,#oCutsceneState_CutsceneCameraScriptActive]
	add r7, #2
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_run_or_stop_cutscene_camera_script

	thumb_local_start
MapScriptCmd_start_fixed_battle:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_MapGroup]
	cmp r0, #INTERNET_MAP_GROUP_START
	bge .inInternetMap
	bl SetBeastOutCounterTo3
	bl ZeroAllNaviStatsMood
.inInternetMap
	mov r6, #1
	bl ReadMapScriptHalfword
	mov r0, r4
	bl getBattleSettingsFromList0 // (int battleSettingsIdx) -> BattleSettings*
	mov r1, #1
	bl gameState_8005BC8 // (BattleSettings *r0Bt, bool r1) -> void
	mov r6, #1
	bl ReadMapScriptHalfword
	mov r0, r4
	bl sub_803522E
	mov r0, #0x2c
	mov r1, #0x10
	bl SetScreenFade // (int a1, int a2) -> void
	add r7, #3
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_start_fixed_battle

	thumb_local_start
MapScriptCmd_start_random_battle:
	push {lr}
	bl chooseRandomEncounterMaybe_80aa5e4
	mov r1, #1
	bl gameState_8005BC8 // (BattleSettings *r0Bt, bool r1) -> void
	mov r0, #0x2c
	mov r1, #0x10
	bl SetScreenFade // (int a1, int a2) -> void
	add r7, #1
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_start_random_battle

	thumb_local_start
MapScriptCmd_init_eStruct200a6a0:
	push {lr}
	mov r6, #1
	bl ReadMapScriptWord
	mov r0, r4
	mov r6, #5
	bl ReadMapScriptWord
	mov r1, r4
	mov r6, #9
	bl ReadMapScriptWord
	mov r2, r4
	bl Initialize_eStruct200a6a0
	add r7, #0xd
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_init_eStruct200a6a0

	thumb_local_start
MapScriptCmd_run_eStruct200a6a0_callback:
	push {lr}
	bl run_eStruct200a6a0_Callback_8002484
	add r7, #1
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_run_eStruct200a6a0_callback

	thumb_local_start
MapScriptCmd_set_camera_unk0e_unk0c:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	mov r0, r4
	mov r6, #2
	bl ReadMapScriptByte
	mov r1, r4
	bl setCameraUnk0e_Unk0c_80302a8
	add r7, #4
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_set_camera_unk0e_unk0c

	thumb_local_start
MapScriptCmd_nop_8038246:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	mov r0, r4
	add r7, #2
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_nop_8038246

	thumb_local_start
MapScriptCmd_nop_8038256:
	push {lr}
	add r7, #1
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_nop_8038256

	thumb_local_start
MapScriptCmd_nop_803825e:
	push {lr}
	add r7, #1
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_nop_803825e

	thumb_local_start
MapScriptCmd_nop_8038266:
	push {lr}
	add r7, #1
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_nop_8038266

	thumb_local_start
MapScriptCmd_call_sub_8001974:
	push {lr}
	bl sub_8001974
	add r7, #1
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_call_sub_8001974

	thumb_local_start
MapScriptCmd_init_scenario_effect:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	mov r0, r4
	bl initScenarioEffect_8003914
	add r7, #2
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_init_scenario_effect

	thumb_local_start
MapScriptCmd_end_scenario_effect:
	push {lr}
	bl endScenarioEffectMaybe_8003940
	add r7, #1
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_end_scenario_effect

	thumb_local_start
MapScriptCmd_init_minigame_effect:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	mov r0, r4
	bl initMinigameEffect_8003a64
	add r7, #2
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_init_minigame_effect

	thumb_local_start
MapScriptCmd_end_minigame_effect:
	push {lr}
	bl endMinigameEffectMaybe_8003a90
	add r7, #1
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_end_minigame_effect

	thumb_local_start
MapScriptCmd_add_bbs_message_range:
	push {lr}
	mov r6, #1
	bl ReadMapScriptHalfword
	mov r0, r4
	mov r6, #3
	bl ReadMapScriptByte
	mov r6, r0
.addBBSMessageLoop
	mov r0, r6
	bl reqBBS_addBBSMessage_813e5dc
	add r6, #1
	sub r4, #1
	bgt .addBBSMessageLoop
	add r7, #4
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_add_bbs_message_range

	thumb_local_start
MapScriptCmd_encryption_cmd_80382de:
	push {lr}
	mov r6, #1
	bl ReadMapScriptHalfword
	// idx_20008A0
	mov r0, r4
	bl encryption_8006e70 // (int idx_20008A0) -> void
	add r7, #3
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_encryption_cmd_80382de

	thumb_local_start
MapScriptCmd_navi_cmd_80340f6:
	push {lr}
	bl navi_80340F6
	add r7, #1
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_navi_cmd_80340f6

	thumb_local_start
MapScriptCmd_change_navi_maybe_80382fe:
	push {lr}
	bl writeCurPETNaviToS2001c04_Unk07_80010c6
	mov r6, #1
	bl ReadMapScriptByte
	mov r0, r4
	bl SetCurPETNavi
	bl reloadCurNaviBaseStats_8120df0
	bl reloadCurNaviStatBoosts_813c3ac
	bl setCurNaviHPToFull_803ceb8
	add r7, #2
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_change_navi_maybe_80382fe

	thumb_local_start
MapScriptCmd_add_mail_range:
	push {lr}
	mov r6, #1
	bl ReadMapScriptHalfword
	mov r0, r4
	mov r6, #3
	bl ReadMapScriptByte
	mov r6, r0
.addMailLoop
	mov r0, r6
	bl addMail_802f238
	add r6, #1
	sub r4, #1
	bgt .addMailLoop
	add r7, #4
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_add_mail_range

	thumb_local_start
MapScriptCmd_cmd_8038346:
	push {lr}
	mov r6, #1
	bl ReadMapScriptWord
	mov r0, r4
	mov r6, #5
	bl ReadMapScriptWord
	mov r1, r4
	bl sub_80356F8
	add r7, #9
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_cmd_8038346

	thumb_local_start
MapScriptCmd_give_or_take_zenny:
	push {lr}
	mov r6, #2
	bl ReadMapScriptHalfword
	mov r0, r4
	mov r6, #1
	bl ReadMapScriptByte
	cmp r4, #1
	beq .takeZenny
	bl GiveZenny
	b .done
.takeZenny
	bl TakeZenny
.done
	add r7, #4
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_give_or_take_zenny

	thumb_local_start
MapScriptCmd_give_or_take_bugfrags:
	push {lr}
	mov r6, #2
	bl ReadMapScriptHalfword
	mov r0, r4
	mov r6, #1
	bl ReadMapScriptByte
	cmp r4, #1
	beq .takeBugfrags
	bl GiveBugfrags
	b .done
.takeBugfrags
	bl TakeBugfrags
.done
	add r7, #4
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_give_or_take_bugfrags

	thumb_local_start
MapScriptCmd_give_or_take_chips:
	push {lr}
	mov r6, #2
	bl ReadMapScriptHalfword
	mov r0, r4
	mov r6, #4
	bl ReadMapScriptByte
	mov r1, r4
	mov r6, #5
	bl ReadMapScriptByte
	mov r2, r4
	mov r6, #1
	bl ReadMapScriptByte
	cmp r4, #1
	beq .takeChip
	bl GiveChips
	b .done
.takeChip
	bl TakeChips // (int idx, int searchItem, int off) -> void*
.done
	add r7, #6
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_give_or_take_chips

	thumb_local_start
MapScriptCmd_give_or_take_navicust_programs:
	push {lr}
	mov r6, #2
	bl ReadMapScriptHalfword
	mov r0, r4
	mov r6, #4
	bl ReadMapScriptByte
	mov r1, r4
	mov r6, #5
	bl ReadMapScriptByte
	mov r2, r4
	mov r6, #1
	bl ReadMapScriptByte
	cmp r4, #1
	beq .takeNaviCustProgram
	bl GiveNaviCustPrograms
	b .done
.takeNaviCustProgram
	bl TakeNaviCustPrograms
.done
	add r7, #6
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_give_or_take_navicust_programs

	thumb_local_start
MapScriptCmd_run_or_end_continuous_secondary_map_script:
	push {lr}
	ldr r3, =eMapScriptState
	mov r6, #1
	bl ReadMapScriptByte
	cmp r4, #1
	beq .endContinuousMapScript2
	mov r6, #2
	bl ReadMapScriptWord
	str r4, [r3,#oMapScriptState_SecondaryContinuousMapScriptPtr]
	add r7, #6
	mov r0, #1
	pop {pc}
.endContinuousMapScript2
	mov r0, #NULL
	str r0, [r3,#oMapScriptState_SecondaryContinuousMapScriptPtr]
	add r7, #2
	mov r0, #1
	pop {pc}
	// 8038438
	.pool
	thumb_func_end MapScriptCmd_run_or_end_continuous_secondary_map_script

	thumb_local_start
MapScriptCmd_store_or_load_game_progress_buffer_maybe_803843c:
	push {lr}
	mov r3, r10
	ldr r2, [r3,#oToolkit_GameStatePtr]
	mov r6, #2
	bl ReadMapScriptByte
	mov r0, r4
	mov r6, #1
	bl ReadMapScriptByte
	cmp r4, #0
	beq .store
	b .load
.store
	bl storeGameProgressToGameProgressBuffer_8035364
	b .done
.load
	bl loadGameProgressFromGameProgressBuffer_8035354
.done
	add r7, #3
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_store_or_load_game_progress_buffer_maybe_803843c

	thumb_local_start
MapScriptCmd_flag_8038466:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	cmp r4, #0
	beq .loc_8038474
	b .loc_803847A
.loc_8038474:
	bl testSetClearFlags_803553c
	b .loc_803847E
.loc_803847A:
	bl clearSetFlags_80355a8
.loc_803847E:
	add r7, #2
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_flag_8038466

	thumb_local_start
MapScriptCmd_add_request_range:
	push {lr}
	mov r6, #1
	bl ReadMapScriptHalfword
	mov r0, r4
	mov r6, #3
	bl ReadMapScriptByte
	mov r6, r0
.addRequestLoop
	mov r0, r6
	bl reqBBS_addRequest_813F9A0
	add r6, #1
	sub r4, #1
	bgt .addRequestLoop
	add r7, #4
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_add_request_range

	thumb_local_start
// isn't triggered when using a piece of rush food, maybe unused?
MapScriptCmd_rush_food_80384A8:
	push {lr}
	mov r0, #0x2c // rush food
	bl CheckKeyItem
	beq .done
	mov r0, r10
	ldr r0, [r0,#oToolkit_JoypadPtr]
	ldrh r0, [r0,#oJoypad_Pressed]
	mov r1, #JOYPAD_A
	tst r0, r1
	beq .done
	mov r6, #4
	bl ReadMapScriptWord
	mov r7, r4
	mov r0, #1
	pop {pc}
.done
	add r7, #8
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_rush_food_80384A8

	thumb_local_start
MapScriptCmd_set_beast_out_counter_to_3:
	push {lr}
	bl SetBeastOutCounterTo3
	add r7, #1
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_set_beast_out_counter_to_3

	thumb_local_start
MapScriptCmd_jump_if_req_bbs_master_rank:
	push {lr}
	bl reqBBS_getRequestBBSRank // () -> u8
	cmp r0, #4
	bne .notMasterRank
	mov r6, #4
	bl ReadMapScriptWord
	mov r7, r4
	mov r0, #1
	pop {pc}
.notMasterRank
	add r7, #8
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_jump_if_req_bbs_master_rank

	thumb_local_start
MapScriptCmd_if_in_real_world_jump_else_jump:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_MapGroup]
	cmp r0, #INTERNET_MAP_GROUP_START
	bge .inInternet
	// in real world
	mov r6, #4
	bl ReadMapScriptWord
	mov r7, r4
	mov r0, #1
	pop {pc}
.inInternet
	mov r6, #8
	bl ReadMapScriptWord
	mov r7, r4
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_if_in_real_world_jump_else_jump

	thumb_func_start runCutscene_803851C
runCutscene_803851C:
	push {r4-r7,lr}
	mov r4, r8
	mov r5, r12
	push {r4,r5}
	mov r5, r10
	ldr r5, [r5,#oToolkit_CutsceneStatePtr]
	mov r0, #0
	strb r0, [r5,#oCutsceneState_WhichCutsceneScript]
	mov r0, #oCutsceneState_CutsceneScriptPos
	mov r8, r0
.executeCutsceneScriptsLoop
	ldr r6, =CutsceneCommandJumptable
	mov r12, r6
	mov r7, r8
	ldr r7, [r5,r7]
.cutsceneCommandLoop
	// retrieve the jumptable pointer
	mov r6, r12

	// read current command byte
	ldrb r0, [r7]
	lsl r0, r0, #2

	// read command pointer and execute
	ldr r0, [r6,r0]
	mov lr, pc
	bx r0

	// loop if we haven't reached the return signal
	bne .cutsceneCommandLoop

	// increment cutscene script index?
	ldrb r0, [r5,#oCutsceneState_WhichCutsceneScript]
	add r0, #1
	strb r0, [r5,#oCutsceneState_WhichCutsceneScript]

	// get current cutscene script struct offset
	mov r0, r8

	// read current script pointer
	ldr r1, [r5,r0]
	// ??? comparing against 1?
	cmp r1, #1
	beq .loc_8038556
	// store new pointer
	str r7, [r5,r0]
.loc_8038556:
	// advance struct offset to the next cutscene script
	add r0, #4
	mov r8, r0

	// loop if we haven't executed all scripts
	cmp r0, #oCutsceneState_CutsceneScriptPos4
	ble .executeCutsceneScriptsLoop
	ldr r0, [r5,#oCutsceneState_Unk_3c]
	tst r0, r0
	beq .loc_803856A
	bl cutscene_cameraMaybe_8036FBC
	strb r0, [r5,#oCutsceneState_CutsceneCameraScriptActive]
.loc_803856A:
	bl TryCutsceneSkip
	beq .doneCutsceneIteration
	ldr r0, [r5,#oCutsceneState_CutsceneScriptAfterCutsceneSkip]
	tst r0, r0
	beq .doneCutsceneIteration

	// end cutscene
	str r0, [r5,#oCutsceneState_CutsceneScriptPos]

	ldr r0, =DummyCutsceneScript
	mov r0, #NULL
	str r0, [r5,#oCutsceneState_CutsceneScriptAfterCutsceneSkip]

	// clear bits of some flag?
	mov r0, #CUTSCENE_FLAG_0x2c_SCRIPT_1_PAUSED
	bl cutscene_clearFlag0x2c_80385D0
	mov r0, #CUTSCENE_FLAG_0x2c_SCRIPT_2_PAUSED
	bl cutscene_clearFlag0x2c_80385D0
	mov r0, #CUTSCENE_FLAG_0x2c_SCRIPT_3_PAUSED
	bl cutscene_clearFlag0x2c_80385D0
	mov r0, #CUTSCENE_FLAG_0x2c_SCRIPT_4_PAUSED
	bl cutscene_clearFlag0x2c_80385D0
	mov r0, #CUTSCENE_FLAG_0x2c_SCRIPT_1_PAUSED_LONG
	bl cutscene_clearFlag0x2c_80385D0
	mov r0, #CUTSCENE_FLAG_0x2c_SCRIPT_2_PAUSED_LONG
	bl cutscene_clearFlag0x2c_80385D0
	mov r0, #CUTSCENE_FLAG_0x2c_SCRIPT_3_PAUSED_LONG
	bl cutscene_clearFlag0x2c_80385D0
	mov r0, #CUTSCENE_FLAG_0x2c_SCRIPT_4_PAUSED_LONG
	bl cutscene_clearFlag0x2c_80385D0
.doneCutsceneIteration
	pop {r4,r5}
	mov r8, r4
	mov r12, r5
	pop {r4-r7,pc}
	.balign 4, 0
// 0x80385B8
	.pool
	thumb_func_end runCutscene_803851C

	thumb_local_start
cutscene_setFlag0x2c_80385C0:
	push {r1}
	mov r1, #1
	lsl r1, r0
	ldr r0, [r5,#oCutsceneState_Flag_2c]
	orr r0, r1
	str r0, [r5,#oCutsceneState_Flag_2c]
	pop {r1}
	mov pc, lr
	thumb_func_end cutscene_setFlag0x2c_80385C0

	thumb_local_start
cutscene_clearFlag0x2c_80385D0:
	push {r1}
	mov r1, #1
	lsl r1, r0
	ldr r0, [r5,#oCutsceneState_Flag_2c]
	bic r0, r1
	str r0, [r5,#oCutsceneState_Flag_2c]
	pop {r1}
	mov pc, lr
	thumb_func_end cutscene_clearFlag0x2c_80385D0

	thumb_local_start
cutscene_testFlag0x2c_80385E0:
	push {r1}
	mov r1, #1
	lsl r1, r0
	ldr r0, [r5,#oCutsceneState_Flag_2c]
	tst r0, r1
	pop {r1}
	mov pc, lr
	// file boundary?
	.byte 0, 0
	thumb_func_end cutscene_testFlag0x2c_80385E0
