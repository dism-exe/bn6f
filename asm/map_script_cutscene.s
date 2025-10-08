
// possible file boundary
MapScriptCommandJumptable:
	.word MapScriptCmd_end+1
	.word MapScriptCutsceneCmd_jump+1
	.word MapScriptCutsceneCmd_jump_if_progress_in_range+1
	.word MapScriptCutsceneCmd_jump_if_flag_set+1
	.word MapScriptCutsceneCmd_jump_if_flag_range_set+1
	.word MapScriptCutsceneCmd_jump_if_flag_clear+1
	.word MapScriptCutsceneCmd_jump_if_flag_range_clear+1
	.word MapScriptCutsceneCmd_jump_if_mem_equals+1
	.word MapScriptCutsceneCmd_jump_if_key_item_in_range+1
	.word MapScriptCutsceneCmd_jump_if_chip_count_in_range+1
	.word MapScriptCutsceneCmd_jump_if_battle_result_equals+1
	.word MapScriptCutsceneCmd_jump_if_battle_result_not_equal+1
	.word MapScriptCutsceneCmd_coordinate_trigger_equals_cmd_8035afa+1
	.word MapScriptCutsceneCmd_coordinate_trigger_not_equal_cmd_8035b44+1
	.word MapScriptCmd_jump_if_coord_interaction_value_equals+1
	.word MapScriptCmd_jump_if_coord_interaction_value_not_equal+1
	.word MapScriptCutsceneCmd_jump_if_current_navi_equals+1
	.word MapScriptCutsceneCmd_jump_if_current_navi_not_equal+1
	.word MapScriptCmd_jump_if_player_z_equals+1
	.word MapScriptCmd_jump_if_player_z_not_equal+1
	.word MapScriptCmd_jump_if_game_state_44_equals+1
	.word MapScriptCmd_jump_if_game_state_44_not_equal+1
	.word MapScriptCmd_jump_if_map_group_compare_last_map_group+1
	.word MapScriptCmd_switch_case_from_navi_stats_4c+1
	.word MapScriptCmd_cmd_8035cd6+1
	.word MapScriptCmd_cmd_8035cf8+1
	.word MapScriptCmd_jump_if_fade_active+1
	.word MapScriptCmd_jump_if_eStruct200a6a0_initialized+1
	.word MapScriptCmd_jump_if_in_pet_menu+1
	.word MapScriptCutsceneCmd_set_screen_fade+1
	.word MapScriptCutsceneCmd_set_enter_map_screen_fade+1
	.word MapScriptCutsceneCmd_set_event_flag+1
	.word MapScriptCutsceneCmd_clear_event_flag+1
	.word MapScriptCutsceneCmd_set_event_flag_range+1
	.word MapScriptCutsceneCmd_clear_event_flag_range+1
	.word MapScriptCutsceneCmd_set_event_flag_list+1
	.word MapScriptCutsceneCmd_clear_event_flag_list+1
	.word MapScriptCmd_call_native_function+1
	.word MapScriptCmd_start_cutscene+1
	.word MapScriptCutsceneCmd_write_byte+1
	.word MapScriptCutsceneCmd_write_hword+1
	.word MapScriptCutsceneCmd_write_word+1
	.word MapScriptCutsceneCmd_write_gamestate_byte+1
	.word MapScriptCutsceneCmd_write_eStruct2001c04_byte+1
	.word MapScriptCutsceneCmd_load_gfx_anim+1
	.word MapScriptCutsceneCmd_load_gfx_anims+1
	.word MapScriptCutsceneCmd_load_map_gfx_anims_bg_anim+1
	.word MapScriptCutsceneCmd_terminate_one_or_all_gfx_anims+1
	.word MapScriptCutsceneCmd_play_sound+1
	.word MapScriptCutsceneCmd_play_music+1
	.word MapScriptCutsceneCmd_sound_cmd_80380ea+1
	.word MapScriptCutsceneCmd_sound_cmd_803810e+1
	.word MapScriptCutsceneCmd_stop_sound+1
	.word MapScriptCutsceneCmd_give_or_take_item+1
	.word MapScriptCutsceneCmd_do_pet_effect+1
	.word NULL
	.word MapScriptCutsceneCmd_init_eStruct200a6a0+1
	.word MapScriptCutsceneCmd_run_eStruct200a6a0_callback+1
	.word MapScriptCmd_run_or_end_secondary_continuous_map_script+1
	.word MapScriptCutsceneCmd_init_scenario_effect+1
	.word MapScriptCutsceneCmd_end_scenario_effect+1
	.word MapScriptCutsceneCmd_init_minigame_effect+1
	.word MapScriptCutsceneCmd_end_minigame_effect+1
	.word NULL
	.word MapScriptCmd_spawn_or_free_objects+1
	.word MapScriptCutsceneCmd_add_bbs_message_range+1
	.word MapScriptCutsceneCmd_add_mail_range+1
	.word MapScriptCutsceneCmd_cmd_8038346+1
	.word MapScriptCutsceneCmd_add_request_range+1
	.word MapScriptCutsceneCmd_rush_food_cmd_80384A8+1
	thumb_func_end sub_80357AE

	thumb_local_start
// 0x00
// return from script
MapScriptCmd_end: // 8035920
	mov r0, #0
	mov pc, lr
	thumb_func_end MapScriptCmd_end

	thumb_local_start
// 0x01/0x15 destination1
// jump to another script
// destination1 - script to jump to
MapScriptCutsceneCmd_jump: // 8035924
	push {lr}
	mov r6, #1
	bl ReadMapScriptWord
	mov r7, r4
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCutsceneCmd_jump

	thumb_local_start
// 0x02/0x16 byte1 byte2 destination3
// jump if byte1 <= progress byte <= byte2
// byte1 - lower bound for progress byte
// byte2 - upper bound for progress byte
// destination3 - script to jump to
MapScriptCutsceneCmd_jump_if_progress_in_range: // 8035932
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
	thumb_func_end MapScriptCutsceneCmd_jump_if_progress_in_range

	thumb_local_start
// 0x03/0x17 byte1 hword2 destination4
// jump if event flag in mem or immediate is set
// byte1 - memory param
// hword2 - flag to test
// destination4 - script to jump to
MapScriptCutsceneCmd_jump_if_flag_set: // 8035962
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
	bl TestEventFlag // (u16 flag) -> !zf
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
	thumb_func_end MapScriptCutsceneCmd_jump_if_flag_set

	thumb_local_start
// 0x04/0x18 byte1 hword2 destination4
// jump if (all) event flags in the event flag range are set
// byte1 - number of flags to test
// hword2 - starting flag to test
// destination4 - script to jump to
MapScriptCutsceneCmd_jump_if_flag_range_set: // 8035992
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
	thumb_func_end MapScriptCutsceneCmd_jump_if_flag_range_set

	thumb_local_start
// 0x05/0x19 byte1 hword2 destination4
// jump if event flag in mem or immediate is clear
// byte1 - memory param
// hword2 - flag to test
// destination4 - script to jump to
MapScriptCutsceneCmd_jump_if_flag_clear: // 80359BE
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
	bl TestEventFlag // (u16 flag) -> !zf
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
	thumb_func_end MapScriptCutsceneCmd_jump_if_flag_clear

	thumb_local_start
// 0x06/0x1a byte1 hword2 destination4
// jump if not all event flags in the event flag range are set
// byte1 - number of flags to test
// hword2 - starting flag to test
// destination4 - script to jump to
MapScriptCutsceneCmd_jump_if_flag_range_clear: // 80359EE
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
	thumb_func_end MapScriptCutsceneCmd_jump_if_flag_range_clear

	thumb_local_start
// 0x07/0x1b 0x00 word2 destination6 byte10
// jump if [word2] == byte10
// word2 - pointer to read from
// destination6 - script to jump to
// byte10 - value to compare [word2] with

// 0x07/0x1b 0x01 word2 destination6 hword10
// jump if [word2] == hword10
// word2 - pointer to read from
// destination6 - script to jump to
// hword10 - value to compare [word2] with

// 0x07/0x1b 0x02 word2 destination6 word10
// jump if [word2] == word10
// word2 - pointer to read from
// destination6 - script to jump to
// word10 - value to compare [word2] with
MapScriptCutsceneCmd_jump_if_mem_equals: // 8035A1A
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
	thumb_func_end MapScriptCutsceneCmd_jump_if_mem_equals

	thumb_local_start
// 0x08/0x1d byte1 byte2 byte3 destination4
// jump if the specified key item is in the given range
// i.e. byte2 <= CheckKeyItem(byte1) <= byte3
// byte1 - key item to check
// byte2 - lower bound of key item range, inclusive
// byte3 - upper bound of key item range, inclusive
// destination4 - script to jump to
MapScriptCutsceneCmd_jump_if_key_item_in_range: // 8035A74
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
	blt .keyItemOutOfRange
	cmp r0, r4
	bgt .keyItemOutOfRange
	mov r6, #4
	bl ReadMapScriptWord
	mov r7, r4
	mov r0, #1
	pop {pc}
.keyItemOutOfRange
	add r7, #8
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCutsceneCmd_jump_if_key_item_in_range

	thumb_local_start
// 0x09/0x1e hword1 byte3 byte4 byte5 destination6
// jump if the number of the specified chip with optional code is in the given range
// hword1 - chip to count
// byte3 - code of chip to be counted, or 0xff to ignore code
// byte4 - lower bound of chip count, inclusive
// byte5 - upper bound of chip count, inclusive
// destination6 - script to jump to
MapScriptCutsceneCmd_jump_if_chip_count_in_range: // 8035AAA
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
	thumb_func_end MapScriptCutsceneCmd_jump_if_chip_count_in_range

	thumb_local_start
// 0x0c/0x21 byte1 signedbyte2 destination3
// jump if the return value of the coordinate trigger function (checkCoordinateTrigger_8031a7a) equals byte1
// checkCoordinateTrigger_8031a7a returns r0, r1. if r0 == 0, r1 is used in comparison
// byte1 - byte to compare return value of checkCoordinateTrigger_8031a7a
// signedbyte2 - signed offset to overworld player object coordinates
// destination3 - script to jump to
MapScriptCutsceneCmd_coordinate_trigger_equals_cmd_8035afa: // 8035afa
	push {lr}
	mov r6, #2
	bl ReadMapScriptSignedByte
	mov r3, r10
	ldr r3, [r3,#oToolkit_GameStatePtr]
	ldr r3, [r3,#oGameState_OverworldPlayerObjectPtr]
	ldr r0, [r3,#oOWPlayerObject_X]
	ldr r1, [r3,#oOWPlayerObject_Y]
	ldr r2, [r3,#oOWPlayerObject_Z]
	lsl r4, r4, #0x10
	add r2, r2, r4
	sub sp, sp, #0xc
	str r0, [sp]
	str r1, [sp,#4]
	str r2, [sp,#8]
	mov r0, sp
	bl checkCoordinateTrigger_8031a7a
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
	thumb_func_end MapScriptCutsceneCmd_coordinate_trigger_equals_cmd_8035afa

	thumb_local_start
// 0x0d/0x22 byte1 signedbyte2 destination3
// jump if the return value of the coordinate trigger function (checkCoordinateTrigger_8031a7a) doesn't equal byte1
// checkCoordinateTrigger_8031a7a returns r0, r1. if r0 == 0, r1 is used in comparison
// byte1 - byte to compare return value of checkCoordinateTrigger_8031a7a
// signedbyte2 - signed offset to overworld player object coordinates
// destination3 - script to jump to
MapScriptCutsceneCmd_coordinate_trigger_not_equal_cmd_8035b44: // 8035b44
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
	bl checkCoordinateTrigger_8031a7a
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
	thumb_func_end MapScriptCutsceneCmd_coordinate_trigger_not_equal_cmd_8035b44

	thumb_local_start
// 0x0e byte1 destination2
// jump if the coord interaction value equals byte1
// the coord interaction value is set when the player presses A in the overworld and is facing coordinates with a defined interaction value
// byte1 - byte to compare the coord interaction value with
// destination2 - script to jump to
MapScriptCmd_jump_if_coord_interaction_value_equals: // 8035b8e
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_CoordInteractionValue]
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
	thumb_func_end MapScriptCmd_jump_if_coord_interaction_value_equals

	thumb_local_start
// 0x0f byte1 destination2
// jump if the coord interaction value does not equal byte1
// the coord interaction value is set when the player presses A in the overworld and is facing coordinates with a defined interaction value
// byte1 - byte to compare the coord interaction value with
// destination2 - script to jump to
MapScriptCmd_jump_if_coord_interaction_value_not_equal: // 8035BB2
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_CoordInteractionValue]
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
	thumb_func_end MapScriptCmd_jump_if_coord_interaction_value_not_equal

	thumb_local_start
// 0x12 signedhword1 destination2
// jump if the the player's z coordinate equals signedhword1
// signedhword1 - z coordinate to compare the player's z coordinate with
// destination2 - script to jump to
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
// 0x13 signedhword1 destination2
// jump if the the player's z coordinate does not equal signedhword1
// signedhword1 - z coordinate to compare the player's z coordinate with
// destination2 - script to jump to
MapScriptCmd_jump_if_player_z_not_equal: // 8035BFE
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
	thumb_func_end MapScriptCmd_jump_if_player_z_not_equal

	thumb_local_start
// 0x14 hword1 destination2
// jump if hword1 equals eGameState_Unk_44
// hword1 - value to compare eGameState_Unk_44 with
// destination2 - script to jump to
MapScriptCmd_jump_if_game_state_44_equals: // 8035C26
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldr r0, [r0,#oGameState_SavedRealWorldMapId]
	mov r6, #1
	bl ReadMapScriptHalfword
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
	thumb_func_end MapScriptCmd_jump_if_game_state_44_equals

	thumb_local_start
// 0x15 hword1 destination2
// jump if hword1 doesn't equal eGameState_Unk_44
// hword1 - value to compare eGameState_Unk_44 with
// destination2 - script to jump to
MapScriptCmd_jump_if_game_state_44_not_equal: // 8035C4A
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldr r0, [r0,#oGameState_SavedRealWorldMapId]
	mov r6, #1
	bl ReadMapScriptHalfword
	cmp r0, r4
	beq .equals
	mov r6, #3
	bl ReadMapScriptWord
	mov r7, r4
	mov r0, #1
	pop {pc}
.equals
	add r7, #7
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_jump_if_game_state_44_not_equal

	thumb_local_start
// 0x16 0x00 destination2
// jump if the current map group does not equal the last map group
// destination2 - script to jump to

// 0x16 0x01 destination2
// jump if the current map group equals the last map group
// destination2 - script to jump to
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
// jumptable, using [eNaviStats + 0x4c] as the base index
// default is destination1
// destination1 - script to jump to if [eNaviStats + 0x4c] is not 1 or 2
// destination5 - script to jump to if [eNaviStats + 0x4c] is 1
// destination9 - script to jump to if [eNaviStats + 0x4c] is 2
MapScriptCmd_switch_case_from_navi_stats_4c: // 8035CA0
	push {lr}
	mov r0, #0
	mov r1, #oNaviStats_Unk_4c
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
	thumb_func_end MapScriptCmd_switch_case_from_navi_stats_4c

	thumb_local_start
// 0x18 byte1 destination2
// jump if byte1 == sub_800B734()
// sub_800B734 performs a summation on the 12 halfwords at word_2000FA0
//  returns 0 if the summation is greater than 0x2a30
//  returns 1 if 0x1c20 < summation <= 0x2a30
//  else returns 2
// byte1 - value to compare the return value of sub_800B734 with
// destination2 - script to jump to
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
// jump if byte1 != sub_800B734()
// sub_800B734 performs a summation on the 12 halfwords at word_2000FA0
//  returns 0 if the summation is greater than 0x2a30
//  returns 1 if 0x1c20 < summation <= 0x2a30
//  else returns 2
// byte1 - value to compare the return value of sub_800B734 with
// destination2 - script to jump to
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
// jump if the screen is fading
// destination1 - script to jump to
MapScriptCmd_jump_if_fade_active: // 8035D1A
	push {lr}
	mov r6, #1
	bl ReadMapScriptWord
	bl IsScreenFadeActive // () -> zf
	beq .screenFading
	add r7, #5
	mov r0, #1
	pop {pc}
.screenFading
	mov r7, r4
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_jump_if_fade_active

	thumb_local_start
// 0x1b destination1
// jump if [eStruct200a6a0] != 0
// destination1 - script to jump to
MapScriptCmd_jump_if_eStruct200a6a0_initialized: // 8035D34
	push {lr}
	mov r6, #1
	bl ReadMapScriptWord
	bl Is_eStruct200a6a0_Initialized
	bne .structInitialized
	add r7, #5
	mov r0, #1
	pop {pc}
.structInitialized
	mov r7, r4
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_jump_if_eStruct200a6a0_initialized

	thumb_local_start
// 0x1c destination1
// jump if the PET menu or a submenu is open (ePETMenuData+5)
// destination1 - script to jump to
MapScriptCmd_jump_if_in_pet_menu: // 8035D4E
	push {lr}
	mov r6, #1
	bl ReadMapScriptWord
	mov r0, #1
	bl TestPETMenuDataFlag
	bne .PETMenuOpen
	add r7, #5
	mov r0, #1
	pop {pc}
.PETMenuOpen
	mov r7, r4
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_jump_if_in_pet_menu

	thumb_local_start
// 0x1d/0x27 byte1 byte2 byte3
// set screen fade
// byte1 - memory param (base index, memory for byte3 is [eMapScriptState + byte1 + 1])
// byte2 or mem1 - argument 1 for screen fade
// byte3 or mem2 - argument 2 for screen fade
MapScriptCutsceneCmd_set_screen_fade: // 8035D6A
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	cmp r4, #0xff
	beq .immediateParam
	ldrb r0, [r5,r4]
	add r4, #1
	ldrb r1, [r5,r4]
	b .gotParam
.immediateParam
	mov r6, #2
	bl ReadMapScriptByte
	mov r0, r4
	mov r6, #3
	bl ReadMapScriptByte
	mov r1, r4
.gotParam
	bl SetScreenFade // (int a1, int a2) -> void
	add r7, #4
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCutsceneCmd_set_screen_fade

	thumb_local_start
// 0x1e/0x28 byte1 byte2
// sets screen fade params for the screen fade when entering a map
// byte1 - argument 1 for enter map screen fade
// byte2 - argument 2 for enter map screen fade
MapScriptCutsceneCmd_set_enter_map_screen_fade: // 8035D98
	push {lr}
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	mov r6, #1
	bl ReadMapScriptByte
	strb r4, [r1,#oGameState_EnterMapFadeParam1]
	mov r6, #2
	bl ReadMapScriptByte
	strb r4, [r1,#oGameState_EnterMapFadeParam2]
	add r7, #3
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCutsceneCmd_set_enter_map_screen_fade

	thumb_local_start
// 0x1f/0x29 byte1 hword2
// set event flag
// byte1 - memory param
// hword2 or mem - event flag to set
MapScriptCutsceneCmd_set_event_flag: // 8035DB4
	push {lr}
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
	// bitfield
	mov r0, r4
	bl SetEventFlag
	add r7, #4
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCutsceneCmd_set_event_flag

	thumb_local_start
// 0x20/0x2a byte1 hword2
// clear event flag
// byte1 - memory param
// hword2 or mem - event flag to clear
MapScriptCutsceneCmd_clear_event_flag: // 8035DD6
	push {lr}
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
	mov r0, r4
	bl ClearEventFlag // (u16 entryFlagBitfield) -> void
	add r7, #4
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCutsceneCmd_clear_event_flag

	thumb_local_start
// 0x21/0x2b byte1 hword2
// set byte1 event flags starting at the event flag hword2
// event flags set are in the range [hword2, hword2+byte1) (interval notation)
// byte1 - number of event flags to set
// hword2 - starting event flag
MapScriptCutsceneCmd_set_event_flag_range: // 8035DF8
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
	thumb_func_end MapScriptCutsceneCmd_set_event_flag_range

	thumb_local_start
// 0x22/0x2c byte1 hword2
// clear byte1 event flags starting at the event flag hword2
// event flags cleared are in the range [hword2, hword2+byte1) (interval notation)
// byte1 - number of event flags to clear
// hword2 - starting event flag
MapScriptCutsceneCmd_clear_event_flag_range: // 8035E16
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
	thumb_func_end MapScriptCutsceneCmd_clear_event_flag_range

	thumb_local_start
// 0x23/0x2d word1
// set the list of event flags at word1, terminated by (presumably) -1
// word1 - list of event flags to set, terminated by a negative number (presumably -1)
MapScriptCutsceneCmd_set_event_flag_list: // 8035E34
	push {lr}
	mov r6, #1
	bl ReadMapScriptWord
.setEventFlagLoop
	mov r1, #0
	ldrsh r0, [r4,r1]
	cmp r0, #0
	blt .doneSettingFlags
	mov r0, r0
	bl SetEventFlag
	add r4, #2
	b .setEventFlagLoop
.doneSettingFlags
	add r7, #5
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCutsceneCmd_set_event_flag_list

	thumb_local_start
// 0x24/0x2e word1
// clear the list of event flags at word1, terminated by (presumably) -1
// word1 - list of event flags to clear, terminated by a negative number (presumably -1)
MapScriptCutsceneCmd_clear_event_flag_list: // 8035E54
	push {lr}
	mov r6, #1
	bl ReadMapScriptWord
.clearEventFlagLoop
	mov r1, #0
	ldrsh r0, [r4,r1]
	cmp r0, #0
	blt .doneClearingFlags
	mov r0, r0
	bl ClearEventFlag // (u16 entryFlagBitfield) -> void
	add r4, #2
	b .clearEventFlagLoop
.doneClearingFlags
	add r7, #5
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCutsceneCmd_clear_event_flag_list

	thumb_local_start
// 0x25 word1 word5
// call the native function word1 with word5 in r0
// word1 - native function to call
// word5 - parameter to native function
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
// start a cutscene
// word1 - cutscene script to start
// word5 - cutscene parameter
MapScriptCmd_start_cutscene: // 8035E8E
	push {lr}
	mov r6, #5
	bl ReadMapScriptWord
	mov r1, r4
	mov r6, #1
	bl ReadMapScriptWord
	mov r0, r4
	bl StartCutscene
	add r7, #9
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_start_cutscene

	thumb_local_start
// 0x27/0x2f word1 byte5
// write byte5 to the memory at word1
// [word1] = byte5
// word1 - pointer to write to
// byte5 - value to write
MapScriptCutsceneCmd_write_byte: // 8035EAA
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
	thumb_func_end MapScriptCutsceneCmd_write_byte

	thumb_local_start
// 0x28/0x30 word1 hword5
// write hword5 to the memory at word1
// [word1] = hword5
// word1 - pointer to write to
// hword5 - value to write
MapScriptCutsceneCmd_write_hword: // 8035EC2
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
	thumb_func_end MapScriptCutsceneCmd_write_hword

	thumb_local_start
// 0x29/0x31 word1 word5
// write word5 to the memory at word1
// [word1] = word5
// word1 - pointer to write to
// word5 - value to write
MapScriptCutsceneCmd_write_word: // 8035EDA
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
	thumb_func_end MapScriptCutsceneCmd_write_word

	thumb_local_start
// 0x2a/0x32 byte1 byte2
// write byte2 to the eGameState field byte1
// [eGameState + byte1] = byte2
// byte1 - eGameState field to write to
// byte2 - value to write
MapScriptCutsceneCmd_write_gamestate_byte: // 8035EF2
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
	thumb_func_end MapScriptCutsceneCmd_write_gamestate_byte

	thumb_local_start
// 0x2b/0x33 byte1 byte2
// write byte2 to the eStruct2001c04 field byte1
// [eStruct2001c04 + byte1] = byte2
// byte1 - eStruct2001c04 field to write to
// byte2 - value to write
MapScriptCutsceneCmd_write_eStruct2001c04_byte: // 8035F0E
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
	thumb_func_end MapScriptCutsceneCmd_write_eStruct2001c04_byte

	thumb_local_start
// 0x2c/0x36 word1
// load a gfx anim
// e.g. the animated tiles on the background of the net
// gfx anims can also do palette animations
// see include/bytecode/gfx_anim_script.inc
// word1 - gfx anim to load
MapScriptCutsceneCmd_load_gfx_anim: // 8035F2A
	push {lr}
	mov r6, #1
	bl ReadMapScriptWord
	mov r0, r4
	bl LoadGFXAnim
	add r7, #5
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCutsceneCmd_load_gfx_anim

	thumb_local_start
// 0x2d/0x37 word1
// load multiple gfx anims
// e.g. the animated tiles on the background of the net
// gfx anims can also do palette animations
// see include/bytecode/gfx_anim_script.inc
// word1 - list of gfx anims to load, terminated by negative
MapScriptCutsceneCmd_load_gfx_anims: // 8035F3E
	push {lr}
	mov r6, #1
	bl ReadMapScriptWord
	mov r0, r4
	bl LoadGFXAnims
	add r7, #5
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCutsceneCmd_load_gfx_anims

	thumb_local_start
// 0x2e/0x38
// load the gfx anims and BG anim for the current map
MapScriptCutsceneCmd_load_map_gfx_anims_bg_anim: // 8035F52
	push {lr}
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	ldrb r0, [r1,#oGameState_MapGroup]
	ldrb r1, [r1,#oGameState_MapNumber]
	bl LoadGFXAnimsForMapGroup
	bl LoadBGAnimForMapGroup
	add r7, #1
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCutsceneCmd_load_map_gfx_anims_bg_anim

	thumb_local_start
// 0x2f/0x39 byte1
// terminate the given gfx anim
// byte1 - index of gfx anim to terminate

// 0x2f/0x39 0xff
// terminate all gfx anims
MapScriptCutsceneCmd_terminate_one_or_all_gfx_anims: // 8035F6A
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	mov r0, r4
	cmp r0, #0xff
	beq .terminateAllGFXAnims
	b .terminateOneGFXAnim
.terminateAllGFXAnims
	mov r4, #0
.terminateGFXAnimLoop
	mov r0, r4
	bl TerminateGFXAnim
	add r4, #1
	cmp r4, #NUM_GFX_ANIMS
	blt .terminateGFXAnimLoop
	add r7, #2
	mov r0, #1
	pop {pc}
.terminateOneGFXAnim
	bl TerminateGFXAnim
	add r7, #2
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCutsceneCmd_terminate_one_or_all_gfx_anims

	thumb_local_start
// 0x36/0x53 byte1 byte2
// trigger a PET overworld effect
// byte1 - memory param
// byte2 or mem - PET overworld effect to trigger
MapScriptCutsceneCmd_do_pet_effect: // 8035F98
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	cmp r4, #0xff
	beq .notFromMem
	ldrb r0, [r5,r4]
	b .gotParam
.notFromMem
	mov r6, #2
	bl ReadMapScriptByte
	mov r0, r4
.gotParam
	bl doPETEffect_8033fc0
	add r7, #3
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCutsceneCmd_do_pet_effect

	thumb_local_start
// 0x3a 0x0 word2
// set the secondary continuous map script pointer
// word2 - map script pointer to set the secondary continuous map script pointer to

// 0x3a 0x1
// end execution of the secondary continuous map script pointer
MapScriptCmd_run_or_end_secondary_continuous_map_script: // 8035FBA
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	cmp r4, #1
	beq .endContinuousMapScript2
	mov r6, #2
	bl ReadMapScriptWord
	str r4, [r5,#oMapScriptState_SecondaryContinuousMapScriptPtr]
	add r7, #6
	mov r0, #1
	pop {pc}
.endContinuousMapScript2
	mov r0, #NULL
	str r0, [r5,#oMapScriptState_SecondaryContinuousMapScriptPtr]
	add r7, #2
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_run_or_end_secondary_continuous_map_script

	thumb_local_start
// 0x40 0x0 word2
// spawn objects from list
// word2 - list of structs corresponding to which objects to spawn and params
// list terminated by 0xff
// struct format: byte0 byte1 word4 word8 word0xc word0x10
// byte0 - object type
// byte1 - object index
// word4 - x coordinate
// word8 - y coordinate
// word0xc - z coordinate
// word0x10 - param (written to field 0x4)

// 0x40 0x01 byte2
// free all objects of specified types
// byte2 - bitfield of objects to free
// see constants/constants.inc for object type flags
MapScriptCmd_spawn_or_free_objects: // 8035FDE
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	cmp r4, #1
	beq .freeObjectsOfSpecifiedTypes
	mov r6, #2
	bl ReadMapScriptWord
	mov r0, r4
	bl SpawnObjectsFromList // (void *a1) -> int
	add r7, #6
	mov r0, #1
	pop {pc}
.freeObjectsOfSpecifiedTypes
	mov r6, #2
	bl ReadMapScriptByte
	mov r0, r4
	bl FreeAllObjectsOfSpecifiedTypes
	add r7, #3
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCmd_spawn_or_free_objects

	thumb_func_start StoreMapScriptsThenRunOnInitMapScript
// called once
StoreMapScriptsThenRunOnInitMapScript:
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
	bl ZeroFillByWord // (mut_mem: *mut (), num_bytes: usize) -> ()
	str r4, [r5,#oMapScriptState_OnInitMapScriptPtr] // (dword_2011E68 - 0x2011e60)
	str r6, [r5,#oMapScriptState_ContinuousMapScriptPtr] // (dword_2011E6C - 0x2011e60)
	ldr r6, off_803608C // =MapScriptCommandJumptable
	mov r12, r6
	mov r7, r4
.mapScriptCommandLoop
	mov r6, r12
	ldrb r0, [r7]
	lsl r0, r0, #2
	ldr r0, [r6,r0]
	mov lr, pc
	bx r0
	bne .mapScriptCommandLoop
	pop {r4}
	mov r12, r4
	pop {r4-r7,pc}
	thumb_func_end StoreMapScriptsThenRunOnInitMapScript

	thumb_func_start RunContinuousMapScript
// called every frame
RunContinuousMapScript:
	push {r4-r7,lr}
	mov r4, r12
	push {r4}
	ldr r5, off_8036090 // =eMapScriptState
	ldr r0, [r5,#oMapScriptState_ContinuousMapScriptPtr] // (dword_2011E6C - 0x2011e60)
	ldr r6, off_803608C // =MapScriptCommandJumptable
	mov r12, r6
	mov r7, r0
.mapScriptCommandLoop
	mov r6, r12
	ldrb r0, [r7]
	lsl r0, r0, #2
	ldr r0, [r6,r0]
	mov lr, pc
	bx r0
	bne .mapScriptCommandLoop
	pop {r4}
	mov r12, r4
	pop {r4-r7,pc}
	thumb_func_end RunContinuousMapScript

	thumb_func_start RunSecondaryContinuousMapScript
// called every frame
RunSecondaryContinuousMapScript:
	push {r4-r7,lr}
	mov r4, r12
	push {r4}
	ldr r5, off_8036090 // =eMapScriptState
	ldr r0, [r5,#oMapScriptState_SecondaryContinuousMapScriptPtr] // (dword_2011E70 - 0x2011e60)
	tst r0, r0
	beq loc_8036086
	ldr r6, off_803608C // =MapScriptCommandJumptable
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
	.balign 4, 0
off_803608C: .word MapScriptCommandJumptable
off_8036090: .word eMapScriptState
	thumb_func_end RunSecondaryContinuousMapScript

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
	strb r0, [r4,#oS2001c04_MapMusic]
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
	bl PlayMusic // (int song) -> void
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

	thumb_func_start StartCutscene
// r0 - cutscene script to run
// r1 - parameter
StartCutscene:
	push {r5,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_CutsceneStatePtr]
	push {r0,r1}
	mov r0, r5
	mov r1, #oCutsceneState_Size
	bl ZeroFillByWord // (mut_mem: *mut (), num_bytes: usize) -> ()
	pop {r0,r1}
	str r0, [r5,#oCutsceneState_CutsceneScriptPos] // s_02011C50.ptr_1C
	str r0, [r5,#oCutsceneState_originalCutsceneScriptPos_40] // s_02011C50.unk_40
	str r1, [r5,#oCutsceneState_Unk_04]
	ldr r0, off_8036F20 // =DummyCutsceneScript
	str r0, [r5,#oCutsceneState_CutsceneScriptPos2] // s_02011C50.ptr_20
	str r0, [r5,#oCutsceneState_CutsceneScriptPos3] // s_02011C50.ptr_24
	str r0, [r5,#oCutsceneState_CutsceneScriptPos4] // s_02011C50.ptr_28
	ldr r0, =eTextScript202DA04
	str r0, [r5,#oCutsceneState_TextArchivePtr] // s_02011C50.ptr_30
	ldr r0, =off_8036EC4
	str r0, [r5,#oCutsceneState_Unk_34] // s_02011C50.ptr_34
	pop {r5,pc}
	.balign 4, 0
	.pool // 8036EBC
off_8036EC4: .word 0x4000000
	.byte 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	thumb_func_end StartCutscene

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
	.balign 4, 0
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

	thumb_func_start IsCutsceneScriptNonNull
IsCutsceneScriptNonNull: // () -> zf
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
	mov r2, #TRUE
	ldr r0, [r0,#oCutsceneState_originalCutsceneScriptPos_40] // s_02011C50.unk_40
	ldr r1, off_8036F54 // =CutsceneScript_80991F4
	cmp r0, r1
	beq loc_8036F50
	mov r2, #FALSE
loc_8036F50:
	tst r2, r2
	mov pc, lr
	.balign 4, 0
off_8036F54: .word CutsceneScript_80991F4
	thumb_func_end cutscene_checkOriginalCutsceneScriptPos_8036F40

	thumb_func_start cutscene_checkOriginalCutsceneScriptPos_8036F58
cutscene_checkOriginalCutsceneScriptPos_8036F58:
	mov r0, r10
	ldr r0, [r0,#oToolkit_CutsceneStatePtr]
	mov r2, #TRUE
	ldr r0, [r0,#oCutsceneState_originalCutsceneScriptPos_40]
	ldr r1, off_8036F6C // =CutsceneScript_80988E4
	cmp r0, r1
	beq loc_8036F68
	mov r2, #FALSE
loc_8036F68:
	tst r2, r2
	mov pc, lr
	.balign 4, 0
off_8036F6C: .word CutsceneScript_80988E4
	thumb_func_end cutscene_checkOriginalCutsceneScriptPos_8036F58

	thumb_func_start cutscene_checkOriginalCutsceneScriptPos_8036F70
cutscene_checkOriginalCutsceneScriptPos_8036F70:
	mov r1, r10
	ldr r1, [r1,#oToolkit_CutsceneStatePtr]
	mov r2, #CUTSCENE_SCRIPT_UNK_MAGIC_SCRIPT_VALUE_0x1
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

	thumb_func_start SetCutsceneCameraScript
SetCutsceneCameraScript:
	push {lr}
	ldr r1, =eCutsceneCameraInfo
	str r0, [r1,#oCutsceneCameraInfo_CutsceneCameraScriptPtr]
	mov r0, #0
	str r0, [r1,#oCutsceneCameraInfo_Timer_CommandInitialized] // (dword_2011BD4 - 0x2011bd0)
	mov r0, #0
	bl camera_writeUnk03_14_80301b2
	pop {pc}
	thumb_func_end SetCutsceneCameraScript

	thumb_func_start cutsceneCamera_focusCameraOnPlayerMaybe_8036faa
cutsceneCamera_focusCameraOnPlayerMaybe_8036faa:
	push {lr}
	mov r0, #1
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	ldr r1, [r1,#oGameState_OverworldPlayerObjectPtr]
	add r1, #oOWPlayerObject_Coords
	bl camera_writeUnk03_14_80301b2
	pop {pc}
	thumb_func_end cutsceneCamera_focusCameraOnPlayerMaybe_8036faa

	thumb_local_start
RunCutsceneCameraCommand:
	push {r4-r7,lr}
	ldr r5, =eCutsceneCameraInfo
	ldr r1, [r5,#oCutsceneCameraInfo_CutsceneCameraScriptPtr]
	ldrb r2, [r1]
	ldr r0, =CutsceneCameraCommandJumptable
	add r0, r0, r2
	ldr r0, [r0]
	mov lr, pc
	bx r0
	str r1, [r5,#oCutsceneCameraInfo_CutsceneCameraScriptPtr]
	tst r0, r0
	pop {r4-r7,pc}
	.balign 4, 0
	.pool // off_8036FD4
CutsceneCameraCommandJumptable: .word CutsceneCameraCmd_set_camera_pos+1
	.word CutsceneCameraCmd_simple_scroll+1
	.word CutsceneCameraCmd_end+1
	.word CutsceneCameraCmd_wait+1
	.word CutsceneCameraCmd_init_shake_effect+1
	.word CutsceneCameraCmd_auto_scroll_to_player+1
	.word CutsceneCameraCmd_smooth_auto_scroll_to_pos+1
	.word CutsceneCameraCmd_smooth_auto_scroll_to_pos_relative_to_ow_player+1
	.word CutsceneCameraCmd_smooth_auto_scroll_to_soul_weapons_cursor+1
	.word CutsceneCameraCmd_smooth_auto_scroll_cmd_80372ec+1
	.word CutsceneCameraCmd_run_text_script+1
	.word CutsceneCameraCmd_wait_chatbox+1
	.word CutsceneCameraCmd_call_sub_8001B1C+1
	.word CutsceneCameraCmd_call_sub_8001B6C+1
	.word CutsceneCameraCmd_set_screen_fade+1
	.word CutsceneCameraCmd_wait_screen_fade+1
	.word CutsceneCameraCmd_set_event_flag+1
	.word CutsceneCameraCmd_clear_event_flag+1
	.word CutsceneCameraCmd_sound_cmd_80373fc+1
	.word CutsceneCameraCmd_play_music+1
	.word CutsceneCameraCmd_write_camera_field_03_14+1
	thumb_func_end RunCutsceneCameraCommand

	thumb_local_start
// 0x00 hword1 hword3 hword5
// set the camera position
// hword1 - x coord
// hword3 - y coord
// hword5 - z coord
CutsceneCameraCmd_set_camera_pos:
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
	thumb_func_end CutsceneCameraCmd_set_camera_pos

	thumb_local_start
// 0x04 hword1 hword3 hword5 hword7
// scroll the camera
// hword1 - scroll duration
// signedhword3 - x offset
// signedhword5 - y offset
// signedhword7 - z offset
CutsceneCameraCmd_simple_scroll:
	push {lr}
	ldrb r0, [r5,#oCutsceneCameraInfo_CommandInitialized]
	cmp r0, #0
	bne .commandAlreadyInitialized
	mov r0, #TRUE
	strb r0, [r5,#oCutsceneCameraInfo_CommandInitialized]
	mov r0, #1
	bl ReadCutsceneCameraScriptHalfword
	strh r0, [r5,#oCutsceneCameraInfo_Timer]
.commandAlreadyInitialized
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
	ldrh r0, [r5,#oCutsceneCameraInfo_Timer]
	sub r0, #1
	strh r0, [r5,#oCutsceneCameraInfo_Timer]
	cmp r0, #0
	bgt .commandNotDone
	mov r0, #FALSE
	strb r0, [r5,#oCutsceneCameraInfo_CommandInitialized]
	mov r0, #1
	add r1, #9
	pop {pc}
.commandNotDone
	mov r0, #1
	pop {pc}
	thumb_func_end CutsceneCameraCmd_simple_scroll

	thumb_local_start
// 0x08
// end cutscene camera script
CutsceneCameraCmd_end:
	mov r0, #0
	mov pc, lr
	thumb_func_end CutsceneCameraCmd_end

	thumb_local_start
// 0x0c hword1
// wait a certain amount of frames
// hword1 - number of frames to wait
CutsceneCameraCmd_wait:
	push {lr}
	ldrb r2, [r5,#oCutsceneCameraInfo_CommandInitialized]
	cmp r2, #0
	bne .commandAlreadyInitialized
	mov r2, #TRUE
	strb r2, [r5,#oCutsceneCameraInfo_CommandInitialized]
	mov r0, #1
	bl ReadCutsceneCameraScriptHalfword
	strh r0, [r5,#oCutsceneCameraInfo_Timer]
.commandAlreadyInitialized
	ldrh r2, [r5,#oCutsceneCameraInfo_Timer]
	sub r2, #1
	strh r2, [r5,#oCutsceneCameraInfo_Timer]
	cmp r2, #0
	bge .commandNotDone
	mov r2, #0
	strb r2, [r5,#oCutsceneCameraInfo_CommandInitialized]
	mov r0, #1
	add r1, #3
	pop {pc}
.commandNotDone
	mov r0, #1
	pop {pc}
	thumb_func_end CutsceneCameraCmd_wait

	thumb_local_start
// 0x10 byte1 byte2
// shake the screen
// byte1 = shake duration
// byte2 = shake intensity
CutsceneCameraCmd_init_shake_effect:
	push {lr}
	push {r1}
	mov r0, #2
	bl ReadCutsceneCameraScriptByte
	mov r4, r0
	mov r0, #1
	bl ReadCutsceneCameraScriptByte
	mov r1, r4
	bl camera_initShakeEffect_80302a8
	pop {r1}
	mov r0, #1
	add r1, #3
	pop {pc}
	thumb_func_end CutsceneCameraCmd_init_shake_effect

	thumb_local_start
// 0x14
// scroll the camera to the player automatically
// the scroll starts off fast, then progressively deaccelerates
// see CutsceneCamera_GetAutoScrollDeltaForCoord for how the scroll works
CutsceneCameraCmd_auto_scroll_to_player:
	push {lr}
	mov r7, r10
	ldr r6, [r7,#oToolkit_CameraPtr]
	ldr r7, [r7,#oToolkit_GameStatePtr]
	ldr r7, [r7,#oGameState_OverworldPlayerObjectPtr]

	ldr r2, [r6,#oCamera_X]
	ldr r3, [r7,#oOWPlayerObject_X]
	sub r3, r3, r2
	bl CutsceneCamera_GetAutoScrollDeltaForCoord
	add r3, r3, r2
	str r3, [r6,#oCamera_X]

	ldr r2, [r6,#oCamera_Y]
	ldr r3, [r7,#oOWPlayerObject_Y]
	sub r3, r3, r2
	bl CutsceneCamera_GetAutoScrollDeltaForCoord
	add r3, r3, r2
	str r3, [r6,#oCamera_Y]

	ldr r2, [r6,#oCamera_Z]
	ldr r3, [r7,#oOWPlayerObject_Z]
	sub r3, r3, r2
	bl CutsceneCamera_GetAutoScrollDeltaForCoord
	add r3, r3, r2
	str r3, [r6,#oCamera_Z]

	ldr r0, [r6,#oCamera_X]
	ldr r2, [r7,#oOWPlayerObject_X]
	cmp r0, r2
	bne .coordsNotEqual
	ldr r0, [r6,#oCamera_Y]
	ldr r2, [r7,#oOWPlayerObject_Y]
	cmp r0, r2
	bne .coordsNotEqual
	ldr r0, [r6,#oCamera_Z]
	ldr r2, [r7,#oOWPlayerObject_Z]
	cmp r0, r2
	bne .coordsNotEqual
	b .done
.coordsNotEqual
	mov r0, #1
	pop {pc}
.done
	mov r2, #0
	strb r2, [r5,#6]
	strh r2, [r5,#4]
	mov r0, #1
	add r1, #1
	pop {pc}
	thumb_func_end CutsceneCameraCmd_auto_scroll_to_player

	thumb_local_start
// input is camera coord - player coord
// i.e. delta
// take absolute value of delta (coordinate)
// delta = delta >> 4
// delta = min(delta, 0x100000)
// delta = max(delta, 0x800)
// restore delta sign and return
CutsceneCamera_GetAutoScrollDeltaForCoord:
	mov r4, #0x10
	lsl r4, r4, #0x10
	cmp r3, #0
	bge .deltaIsPositive
	neg r3, r3
	mov r0, r3
	lsr r3, r3, #4
	cmp r3, r4
	ble .deltaLessThan0x1000000
	mov r3, r4
.deltaLessThan0x1000000
	lsr r4, r4, #9
	cmp r3, r4
	bge .deltaGreaterThan0x8000
	mov r3, r0
.deltaGreaterThan0x8000
	neg r3, r3
	mov pc, lr

.deltaIsPositive
	mov r0, r3
	lsr r3, r3, #4
	cmp r3, r4
	ble .deltaLessThan0x1000000_2
	mov r3, r4
.deltaLessThan0x1000000_2
	lsr r4, r4, #9
	cmp r3, r4
	bge .deltaGreaterThan0x8000_2
	mov r3, r0
.deltaGreaterThan0x8000_2
	mov pc, lr
	thumb_func_end CutsceneCamera_GetAutoScrollDeltaForCoord

	thumb_local_start
// 0x18 hword1 hword3 hword5 hword7
// perform a smooth automatic scroll to the given camera position
// hword1 - new X coordinate
// hword3 - new Y coordinate
// hword5 - new Z coordinate
// hword7 - scroll time
CutsceneCameraCmd_smooth_auto_scroll_to_pos:
	push {lr}
	ldrb r2, [r5,#oCutsceneCameraInfo_CommandInitialized]
	cmp r2, #FALSE
	bne CutsceneCamera_UpdateSmoothAutoScroll
	push {r0-r3}
	mov r2, #TRUE
	strb r2, [r5,#oCutsceneCameraInfo_CommandInitialized]
	mov r0, #1
	bl ReadCutsceneCameraScriptSignedHalfword
	lsl r0, r0, #0x10
	str r0, [r5,#oCutsceneCameraInfo_NewX]
	mov r0, #3
	bl ReadCutsceneCameraScriptSignedHalfword
	lsl r0, r0, #0x10
	str r0, [r5,#oCutsceneCameraInfo_NewY]
	mov r0, #5
	bl ReadCutsceneCameraScriptSignedHalfword
	lsl r0, r0, #0x10
	str r0, [r5,#oCutsceneCameraInfo_NewZ]

// fallthrough

// the smooth auto scroll will multiply the distance between the old and new coordinates
// using a sin table, add the partial value to the original camera cooord, then store the
// new camera coord to produce a smooth scroll effect
CutsceneCamera_InitializeSmoothAutoScroll:
	// read the timer value
	mov r0, #7
	bl ReadCutsceneCameraScriptHalfword
	mov r1, r0
	strh r1, [r5,#oCutsceneCameraInfo_Timer] // useless store

	// get and store the delta amount by dividing 0x4000 (the max scroll time) with the timer value
	mov r0, #0x40
	lsl r0, r0, #8 // r0 = 0x4000
	svc 6
	str r0, [r5,#oCutsceneCameraInfo_SmoothAutoScrollDelta]

	// round down the timer so that the delta divides the timer value with no remainder
	mov r0, #0x40
	lsl r0, r0, #8 // r0 = 0x4000
	sub r0, r0, r1 // subtract remainder
	strh r0, [r5,#oCutsceneCameraInfo_Timer]

	// save the original camera coordinates
	bl GetCameraXYZ
	str r0, [r5,#oCutsceneCameraInfo_OldX]
	str r1, [r5,#oCutsceneCameraInfo_OldY]
	str r2, [r5,#oCutsceneCameraInfo_OldZ]
	pop {r0-r3}

// fallthrough
CutsceneCamera_UpdateSmoothAutoScroll:
	push {r0-r3}
	ldr r7, =math_sinTable // useless load

	// subtract delta from timer, and end if the timer is <= 0
	ldrh r3, [r5,#oCutsceneCameraInfo_Timer]
	ldr r4, [r5,#oCutsceneCameraInfo_SmoothAutoScrollDelta]
	sub r4, r3, r4
	ble CutsceneCamera_DoneSmoothAutoScroll

	// store new timer value
	strh r4, [r5,#oCutsceneCameraInfo_Timer]

	// scale timer value to the length of the sin table
	lsr r4, r4, #8

	// as the timer counts down, do a reverse subtract so that we read from the sin table going forwards
	mov r3, #0x40
	sub r4, r3, r4
	lsl r4, r4, #1 // hword read
	ldr r0, =math_sinTable
	ldrsh r4, [r0,r4]

	// calculate the distance between the old and new coordinates
	ldr r0, [r5,#oCutsceneCameraInfo_NewX]
	ldr r1, [r5,#oCutsceneCameraInfo_OldX]
	sub r0, r0, r1

	// divide by 0x100, then multiply by the sin value (which caps at 0xff)
	asr r0, r0, #8
	mul r0, r4
	// save intermediate offset
	push {r0}

	// do the same for the Y and Z coordinates
	ldr r0, [r5,#oCutsceneCameraInfo_NewY]
	ldr r1, [r5,#oCutsceneCameraInfo_OldY]
	sub r0, r0, r1
	asr r0, r0, #8
	mul r0, r4
	push {r0}

	ldr r0, [r5,#oCutsceneCameraInfo_NewZ]
	ldr r1, [r5,#oCutsceneCameraInfo_OldZ]
	sub r0, r0, r1
	asr r0, r0, #8
	mul r0, r4
	push {r0}

	// restore Z intermediate offset and add it to the original
	// Z value to get the intermediate coordinate value
	pop {r2}
	ldr r3, [r5,#oCutsceneCameraInfo_OldZ]
	add r2, r2, r3

	// do the same for Y and X coordinates
	pop {r1}
	ldr r3, [r5,#oCutsceneCameraInfo_OldY]
	add r1, r1, r3

	pop {r0}
	ldr r3, [r5,#oCutsceneCameraInfo_OldX]
	add r0, r0, r3

	// set the camera coordinates
	bl SetCameraXYZ
	pop {r0-r3}
	mov r0, #1
	pop {pc}

CutsceneCamera_DoneSmoothAutoScroll:
	// get the new camera coordinates
	ldr r0, [r5,#oCutsceneCameraInfo_NewX]
	ldr r1, [r5,#oCutsceneCameraInfo_NewY]
	ldr r2, [r5,#oCutsceneCameraInfo_NewZ]
	
	// set the camera coordinates
	bl SetCameraXYZ
	pop {r0-r3}

	// de-initialize command
	mov r2, #FALSE
	strb r2, [r5,#oCutsceneCameraInfo_CommandInitialized]
	strh r2, [r5,#oCutsceneCameraInfo_Timer]
	mov r0, #1
	add r1, #9
	pop {pc}
	.balign 4, 0x00
	// 803725C
	.pool
	thumb_func_end CutsceneCameraCmd_smooth_auto_scroll_to_pos

	thumb_local_start
// 0x1c hword1 hword3 hword5 hword7
// perform a smooth automatic scroll to a location relative to the player
// hword1 - relative X coordinate offset to the player
// hword3 - relative Y coordinate offset to the player
// hword5 - relative Z coordinate offset to the player
// hword7 - scroll time
CutsceneCameraCmd_smooth_auto_scroll_to_pos_relative_to_ow_player:
	push {lr}
	ldrb r2, [r5,#oCutsceneCameraInfo_CommandInitialized]
	cmp r2, #FALSE
	bne .updateSmoothAutoScroll
	push {r0-r3}
	mov r2, #TRUE
	strb r2, [r5,#oCutsceneCameraInfo_CommandInitialized]
	mov r7, r10
	ldr r7, [r7,#oToolkit_GameStatePtr]
	ldr r7, [r7,#oGameState_OverworldPlayerObjectPtr]
	mov r0, #1
	bl ReadCutsceneCameraScriptSignedHalfword
	lsl r0, r0, #0x10
	ldr r3, [r7,#oOWPlayerObject_X]
	add r0, r0, r3
	str r0, [r5,#oCutsceneCameraInfo_NewX]
	mov r0, #3
	bl ReadCutsceneCameraScriptSignedHalfword
	lsl r0, r0, #0x10
	ldr r3, [r7,#oOWPlayerObject_Y]
	add r0, r0, r3
	str r0, [r5,#oCutsceneCameraInfo_NewY]
	mov r0, #5
	bl ReadCutsceneCameraScriptSignedHalfword
	lsl r0, r0, #0x10
	ldr r3, [r7,#oOWPlayerObject_Z]
	add r0, r0, r3
	str r0, [r5,#oCutsceneCameraInfo_NewZ]
	b CutsceneCamera_InitializeSmoothAutoScroll
.updateSmoothAutoScroll
	b CutsceneCamera_UpdateSmoothAutoScroll
	thumb_func_end CutsceneCameraCmd_smooth_auto_scroll_to_pos_relative_to_ow_player

	thumb_local_start
// 0x20 unused1to6 hword7
// perform a smooth automatic scroll to the soul weapon's cursor
// unused1to6 - unused
// hword7 - timer
CutsceneCameraCmd_smooth_auto_scroll_to_soul_weapons_cursor:
	push {lr}
	ldrb r2, [r5,#oCutsceneCameraInfo_CommandInitialized]
	cmp r2, #FALSE
	bne .commandAlreadyInitialized
	push {r0-r3}
	mov r2, #1
	strb r2, [r5,#oCutsceneCameraInfo_CommandInitialized]
	mov r7, r10
	ldr r7, [r7,#oToolkit_GameStatePtr]
	ldr r7, [r7,#oGameState_OverworldPlayerObjectPtr]
	push {r0-r3}
	bl getField0x18OfScenarioEffectState2000780_81421e0
	bl GetSoulWeaponCursorCameraCoords
	str r0, [r5,#oCutsceneCameraInfo_NewX]
	str r1, [r5,#oCutsceneCameraInfo_NewY]
	ldr r2, [r7,#oCutsceneCameraInfo_Unk_24]
	str r2, [r5,#oCutsceneCameraInfo_NewZ]
	pop {r0-r3}
	b CutsceneCamera_InitializeSmoothAutoScroll
.commandAlreadyInitialized
	push {r0-r3}

	ldr r0, [r5,#oCutsceneCameraInfo_NewX]
	ldr r1, [r5,#oCutsceneCameraInfo_OldX]
	cmp r0, r1
	bne .updateSmoothAutoScroll

	ldr r0, [r5,#oCutsceneCameraInfo_NewY]
	ldr r1, [r5,#oCutsceneCameraInfo_OldY]
	cmp r0, r1
	bne .updateSmoothAutoScroll

	ldr r0, [r5,#oCutsceneCameraInfo_NewZ]
	ldr r1, [r5,#oCutsceneCameraInfo_OldZ]
	cmp r0, r1
	bne .updateSmoothAutoScroll

	b CutsceneCamera_DoneSmoothAutoScroll
.updateSmoothAutoScroll
	pop {r0-r3}
	b CutsceneCamera_UpdateSmoothAutoScroll
	thumb_func_end CutsceneCameraCmd_smooth_auto_scroll_to_soul_weapons_cursor

	thumb_local_start
// 0x24 unused1to6 hword7
// perform a smooth automatic scroll to the coords at [eCutsceneState_Unk_04]+0xc
// unused1to6 - unused
// hword7 - timer
CutsceneCameraCmd_smooth_auto_scroll_cmd_80372ec:
	push {lr}
	ldrb r2, [r5,#oCutsceneCameraInfo_CommandInitialized]
	cmp r2, #FALSE
	bne .commandAlreadyInitialized
	push {r0-r3}
	mov r2, #TRUE
	strb r2, [r5,#oCutsceneCameraInfo_CommandInitialized]
	push {r0-r3}
	mov r7, r10
	ldr r7, [r7,#oToolkit_CutsceneStatePtr]
	ldr r7, [r7,#oCutsceneState_Unk_04]
	ldr r0, [r7,#0xc]
	ldr r1, [r7,#0x10]
	ldr r2, [r7,#0x14]
	str r0, [r5,#oCutsceneCameraInfo_NewX]
	str r1, [r5,#oCutsceneCameraInfo_NewY]
	str r2, [r5,#oCutsceneCameraInfo_NewZ]
	pop {r0-r3}
	b CutsceneCamera_InitializeSmoothAutoScroll
.commandAlreadyInitialized
	push {r0-r3}

	ldr r0, [r5,#oCutsceneCameraInfo_NewX]
	ldr r1, [r5,#oCutsceneCameraInfo_OldX]
	cmp r0, r1
	bne .updateSmoothAutoScroll

	ldr r0, [r5,#oCutsceneCameraInfo_NewY]
	ldr r1, [r5,#oCutsceneCameraInfo_OldY]
	cmp r0, r1
	bne .updateSmoothAutoScroll

	ldr r0, [r5,#oCutsceneCameraInfo_NewZ]
	ldr r1, [r5,#oCutsceneCameraInfo_OldZ]
	cmp r0, r1
	bne .updateSmoothAutoScroll

	b CutsceneCamera_DoneSmoothAutoScroll
.updateSmoothAutoScroll
	pop {r0-r3}
	b CutsceneCamera_UpdateSmoothAutoScroll
	thumb_func_end CutsceneCameraCmd_smooth_auto_scroll_cmd_80372ec

	thumb_local_start
// 0x28 byte1 word2
// run the text script given the arguments
// byte1 - script index
// word2 - text archive
CutsceneCameraCmd_run_text_script:
	push {lr}
	push {r1}
	mov r0, #1
	bl ReadCutsceneCameraScriptByte
	mov r4, r0
	mov r0, #2
	bl ReadCutsceneCameraScriptWord
	mov r1, r4
	bl chatbox_runScript // (TextScriptArchive *archive, u8 scriptIdx) -> void
	pop {r1}
	mov r0, #1
	add r1, #6
	pop {pc}
	thumb_func_end CutsceneCameraCmd_run_text_script

	thumb_local_start
// 0x2c
// wait for the chatbox to be cleared
CutsceneCameraCmd_wait_chatbox:
	push {lr}
	push {r1}
	mov r0, #0x80
	bl chatbox_mask_eFlags2009F38 // (int flag) -> int
	pop {r1}
	bne .textboxStillUp
	mov r0, #1
	add r1, #1
	pop {pc}
.textboxStillUp
	mov r0, #1
	pop {pc}
	thumb_func_end CutsceneCameraCmd_wait_chatbox

	thumb_local_start
// 0x30 word1
// call LoadGFXAnim with r0=word1
CutsceneCameraCmd_call_sub_8001B1C:
	push {lr}
	push {r1}
	mov r0, #1
	bl ReadCutsceneCameraScriptWord
	bl LoadGFXAnim
	pop {r1}
	mov r0, #1
	add r1, #5
	pop {pc}
	thumb_func_end CutsceneCameraCmd_call_sub_8001B1C

	thumb_local_start
// 0x34 word1
// call TerminateGFXAnim with r0=word1
CutsceneCameraCmd_call_sub_8001B6C:
	push {lr}
	push {r1}
	mov r0, #1
	bl ReadCutsceneCameraScriptByte
	bl TerminateGFXAnim
	pop {r1}
	mov r0, #1
	add r1, #2
	pop {pc}
	thumb_func_end CutsceneCameraCmd_call_sub_8001B6C

	thumb_local_start
// 0x38 byte1 byte2
// set screen fade with r0=byte1 and r1=byte2
CutsceneCameraCmd_set_screen_fade:
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
	thumb_func_end CutsceneCameraCmd_set_screen_fade

	thumb_local_start
// 0x3c
// wait for the screen to finish fading
CutsceneCameraCmd_wait_screen_fade:
	push {lr}
	push {r1}
	bl IsScreenFadeActive // () -> zf
	pop {r1}
	beq .screenFadeActive
	mov r0, #1
	add r1, #1
	pop {pc}
.screenFadeActive
	mov r0, #1
	pop {pc}
	thumb_func_end CutsceneCameraCmd_wait_screen_fade

	thumb_local_start
// 0x40 hword1
// set event flag
// hword1 - event flag to set
CutsceneCameraCmd_set_event_flag:
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
	thumb_func_end CutsceneCameraCmd_set_event_flag

	thumb_local_start
// 0x44 hword1
// clear event flag
// hword1 - event flag to clear
CutsceneCameraCmd_clear_event_flag:
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
	thumb_func_end CutsceneCameraCmd_clear_event_flag

	thumb_local_start
// 0x48 byte1 byte2
// call sound_800068A with r0=byte1 and r1=byte2
CutsceneCameraCmd_sound_cmd_80373fc:
	push {lr}
	push {r1}
	mov r0, #2
	bl ReadCutsceneCameraScriptByte
	mov r4, r0
	mov r0, #1
	bl ReadCutsceneCameraScriptByte
	mov r1, r4
	bl sound_800068A
	pop {r1}
	mov r0, #1
	add r1, #3
	pop {pc}
	thumb_func_end CutsceneCameraCmd_sound_cmd_80373fc

	thumb_local_start
// 0x4c hword1
// play music
// hword1 - music to play
CutsceneCameraCmd_play_music:
	push {lr}
	push {r1}
	mov r0, #1
	bl ReadCutsceneCameraScriptHalfword
	bl PlayMusic // (int song) -> void
	pop {r1}
	mov r0, #1
	add r1, #3
	pop {pc}
	thumb_func_end CutsceneCameraCmd_play_music

	thumb_local_start
// 0x50 word1
// call camera_writeUnk03_14_80301b2 with r0=1 and r1=word1
CutsceneCameraCmd_write_camera_field_03_14:
	push {lr}
	push {r1}
	mov r0, #1
	bl ReadCutsceneCameraScriptWord
	mov r1, r0
	mov r0, #1
	bl camera_writeUnk03_14_80301b2
	pop {r1}
	mov r0, #1
	add r1, #5
	pop {pc}
	thumb_func_end CutsceneCameraCmd_write_camera_field_03_14

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
	.word CutsceneCmd_end_for_map_reload_maybe_8037c64+1
	.word CutsceneCmd_end_for_map_reload_maybe_80376dc+1
	.word CutsceneCmd_pause+1
	.word CutsceneCmd_long_pause+1
	.word CutsceneCmd_wait_chatbox+1
	.word CutsceneCmd_wait_if_player_sprite_cur_frame_not_equal_maybe+1
	.word CutsceneCmd_nop_80377d0+1
	.word CutsceneCmd_wait_screen_fade+1
	.word CutsceneCmd_wait_camera_script+1
	.word CutsceneCmd_wait_var_equal+1
	.word CutsceneCmd_wait_cutscene_process+1
	.word CutsceneCmd_wait_if_eStruct200a6a0_initialized+1
	.word CutsceneCmd_wait_if_in_pet_menu+1
	.word CutsceneCmd_wait_if_flag_clear+1
	.word CutsceneCmd_wait_if_flag_set+1
	.word CutsceneCmd_wait_if_scenario_effect_state_initialized+1
	.word CutsceneCmd_wait_if_eStruct2001010_initialized+1
	.word CutsceneCmd_cutscene_end+1
	.word CutsceneCmd_spawn_cutscene_process+1
	.word CutsceneCmd_kill_cutscene_process+1
	.word CutsceneCmd_set_cutscene_skip_script+1
	.word MapScriptCutsceneCmd_jump+1
	.word MapScriptCutsceneCmd_jump_if_progress_in_range+1
	.word MapScriptCutsceneCmd_jump_if_flag_set+1
	.word MapScriptCutsceneCmd_jump_if_flag_range_set+1
	.word MapScriptCutsceneCmd_jump_if_flag_clear+1
	.word MapScriptCutsceneCmd_jump_if_flag_range_clear+1
	.word MapScriptCutsceneCmd_jump_if_mem_equals+1
	.word CutsceneCmd_jump_if_var_equal+1
	.word MapScriptCutsceneCmd_jump_if_key_item_in_range+1
	.word MapScriptCutsceneCmd_jump_if_chip_count_in_range+1
	.word MapScriptCutsceneCmd_jump_if_battle_result_equals+1
	.word MapScriptCutsceneCmd_jump_if_battle_result_not_equal+1
	.word MapScriptCutsceneCmd_coordinate_trigger_equals_cmd_8035afa+1
	.word MapScriptCutsceneCmd_coordinate_trigger_not_equal_cmd_8035b44+1
	.word MapScriptCutsceneCmd_jump_if_current_navi_equals+1
	.word MapScriptCutsceneCmd_jump_if_current_navi_not_equal+1
	.word CutsceneCmd_jump_if_title_screen_icon_count_equals+1
	.word CutsceneCmd_jump_if_title_screen_icon_count_not_equal+1
	.word MapScriptCutsceneCmd_set_screen_fade+1
	.word MapScriptCutsceneCmd_set_enter_map_screen_fade+1
	.word MapScriptCutsceneCmd_set_event_flag+1
	.word MapScriptCutsceneCmd_clear_event_flag+1
	.word MapScriptCutsceneCmd_set_event_flag_range+1
	.word MapScriptCutsceneCmd_clear_event_flag_range+1
	.word MapScriptCutsceneCmd_set_event_flag_list+1
	.word MapScriptCutsceneCmd_clear_event_flag_list+1
	.word MapScriptCutsceneCmd_write_byte+1
	.word MapScriptCutsceneCmd_write_hword+1
	.word MapScriptCutsceneCmd_write_word+1
	.word MapScriptCutsceneCmd_write_gamestate_byte+1
	.word MapScriptCutsceneCmd_write_eStruct2001c04_byte+1
	.word CutsceneCmd_write_byte_to_extended_var_plus_param+1
	.word CutsceneCmd_set_var+1
	.word MapScriptCutsceneCmd_load_gfx_anim+1
	.word MapScriptCutsceneCmd_load_gfx_anims+1
	.word MapScriptCutsceneCmd_load_map_gfx_anims_bg_anim+1
	.word MapScriptCutsceneCmd_terminate_one_or_all_gfx_anims+1
	.word CutsceneCmd_run_text_script+1
	.word CutsceneCmd_chatbox_cmd_8037a70+1
	.word CutsceneCmd_set_or_clear_chatbox_flags+1
	.word CutsceneCmd_switch_case_from_chatbox_flags_bit0_to_2+1
	.word CutsceneCmd_decomp_text_archive+1
	.word CutsceneCmd_ow_player_sprite_special+1
	.word CutsceneCmd_ow_player_sprite_special_with_arg+1
	.word CutsceneCmd_ow_player_coord_special+1
	.word CutsceneCmd_move_player_in_facing_direction+1
	.word CutsceneCmd_ow_player_cmd_8037cc4+1
	.word CutsceneCmd_write_S200ace0_unk_20+1
	.word CutsceneCmd_transform_player_navi_sprite+1
	.word CutsceneCmd_set_ow_player_navi_color_shader+1
	.word CutsceneCmd_write_or_offset_ow_player_fixed_anim_select_8037dac+1
	.word CutsceneCmd_set_player_coords_anim_facing_as_npc+1
	.word CutsceneCmd_spawn_free_ow_map_object_specials+1
	.word CutsceneCmd_spawn_or_free_ow_map_or_npc_objects+1
	.word CutsceneCmd_call_native_with_return_value+1
	.word CutsceneCmd_warp_cmd_8038040+1
	.word MapScriptCutsceneCmd_play_sound+1
	.word MapScriptCutsceneCmd_play_music+1
	.word MapScriptCutsceneCmd_sound_cmd_80380ea+1
	.word MapScriptCutsceneCmd_sound_cmd_803810e+1
	.word MapScriptCutsceneCmd_stop_sound+1
	.word MapScriptCutsceneCmd_give_or_take_item+1
	.word MapScriptCutsceneCmd_do_pet_effect+1
	.word CutsceneCmd_run_or_stop_cutscene_camera_script+1
	.word CutsceneCmd_start_fixed_battle+1
	.word CutsceneCmd_start_random_battle+1
	.word NULL
	.word MapScriptCutsceneCmd_init_eStruct200a6a0+1
	.word MapScriptCutsceneCmd_run_eStruct200a6a0_callback+1
	.word CutsceneCmd_do_camera_shake+1
	.word CutsceneCmd_nop_8038246+1
	.word CutsceneCmd_nop_8038256+1
	.word CutsceneCmd_nop_803825e+1
	.word CutsceneCmd_nop_8038266+1
	.word CutsceneCmd_terminate_bg_scroll_effect+1
	.word MapScriptCutsceneCmd_init_scenario_effect+1
	.word MapScriptCutsceneCmd_end_scenario_effect+1
	.word MapScriptCutsceneCmd_init_minigame_effect+1
	.word MapScriptCutsceneCmd_end_minigame_effect+1
	.word NULL
	.word NULL
	.word NULL
	.word MapScriptCutsceneCmd_add_bbs_message_range+1
	.word CutsceneCmd_encryption_cmd_80382de+1
	.word CutsceneCmd_navi_cmd_80340f6+1
	.word CutsceneCmd_change_navi_maybe_80382fe+1
	.word MapScriptCutsceneCmd_add_mail_range+1
	.word MapScriptCutsceneCmd_cmd_8038346+1
	.word NULL
	.word NULL
	.word CutsceneCmd_give_or_take_zenny+1
	.word CutsceneCmd_give_or_take_bugfrags+1
	.word NULL
	.word NULL
	.word CutsceneCmd_give_or_take_chips+1
	.word CutsceneCmd_give_or_take_navicust_programs+1
	.word CutsceneCmd_cutscene_run_or_end_secondary_continuous_map_script+1
	.word CutsceneCmd_store_or_load_game_progress_buffer_maybe_803843c+1
	.word CutsceneCmd_flag_cmd_8038466+1
	.word MapScriptCutsceneCmd_add_request_range+1
	.word MapScriptCutsceneCmd_rush_food_cmd_80384A8+1
	.word CutsceneCmd_set_beast_out_counter_to_3+1
	.word CutsceneCmd_jump_if_req_bbs_master_rank+1
	.word CutsceneCmd_if_in_real_world_jump_else_jump+1
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
// end script for map reload?
CutsceneCmd_end_for_map_reload_maybe_8037c64:
	push {lr}
	movflag EVENT_1741
	bl TestEventFlagFromImmediate // (u8 eventGroupOffset, u8 byteAndFlagOffset) -> !zf
	bne .eventActive
	bl reloadCurNaviStatBoosts_813c3ac
.eventActive
	bl cutscene_8036EFE
	mov r0, #0
	pop {pc}
	thumb_func_end CutsceneCmd_end_for_map_reload_maybe_8037c64

	thumb_local_start
// 0x01
// end script for map reload?
CutsceneCmd_end_for_map_reload_maybe_80376dc:
	push {lr}
	movflag EVENT_1741
	bl TestEventFlagFromImmediate // (u8 eventGroupOffset, u8 byteAndFlagOffset) -> !zf
	bne .eventActive
	bl reloadCurNaviStatBoosts_813c3ac
.eventActive
	bl cutscene_8036ED4
	mov r0, #0
	pop {pc}
	thumb_func_end CutsceneCmd_end_for_map_reload_maybe_80376dc

	thumb_local_start
// 0x02 byte1 byte2
// pause the current cutscene script for a given number of frames (up to 255)
// byte1 - memory param
// byte2 or mem - number of frames to pause
CutsceneCmd_pause:
	push {lr}
	ldrb r0, [r5,#oCutsceneState_WhichCutsceneScript]
	add r0, #CUTSCENE_FLAG_SCRIPT_1_PAUSED
	bl TestCutsceneFlag
	bne .scriptPauseAlreadyInitialized

	ldrb r0, [r5,#oCutsceneState_WhichCutsceneScript]
	add r0, #CUTSCENE_FLAG_SCRIPT_1_PAUSED
	bl SetCutsceneFlag
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
	add r0, #CUTSCENE_FLAG_SCRIPT_1_PAUSED
	bl ClearCutsceneFlag
	// advance to the next command
	add r7, #3
	mov r0, #1
	pop {pc}
.timerStillActive
	mov r0, #0
	pop {pc}
	thumb_func_end CutsceneCmd_pause

	thumb_local_start
// 0x03 byte1 hword2
// pause the current cutscene script for a given number of frames (up to 65535)
// unlike pause, this supports a longer pause time
// byte1 - memory param
// hword2 or mem - number of frames to pause
CutsceneCmd_long_pause:
	push {lr}
	ldrb r0, [r5,#oCutsceneState_WhichCutsceneScript]
	add r0, #CUTSCENE_FLAG_SCRIPT_1_PAUSED_LONG
	bl TestCutsceneFlag
	bne .scriptPauseAlreadyInitialized
	ldrb r0, [r5,#oCutsceneState_WhichCutsceneScript]
	add r0, #CUTSCENE_FLAG_SCRIPT_1_PAUSED_LONG
	bl SetCutsceneFlag
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
	add r0, #CUTSCENE_FLAG_SCRIPT_1_PAUSED_LONG
	bl ClearCutsceneFlag
	add r7, #4
	mov r0, #1
	pop {pc}
.timerStillActive
	mov r0, #0
	pop {pc}
	thumb_func_end CutsceneCmd_long_pause

	thumb_local_start
// 0x04 byte1
// wait for the chatbox to be cleared
// byte1 - mask for unknown chatbox flags
CutsceneCmd_wait_chatbox:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	mov r0, #0x80
	and r0, r4
	bl chatbox_mask_eFlags2009F38 // (int flag) -> int
	beq loc_80377AC
	mov r0, #0x38
	and r0, r4
	bl chatbox_mask_eFlags2009F38 // (int flag) -> int
	beq loc_80377B2
loc_80377AC:
	add r7, #2
	mov r0, #1
	pop {pc}
loc_80377B2:
	mov r0, #0
	pop {pc}
	thumb_func_end CutsceneCmd_wait_chatbox

	thumb_local_start
// 0x05 byte1
// wait script if the player sprite's current frame doesn't equal byte1
// byte1 - anim frame to compare
CutsceneCmd_wait_if_player_sprite_cur_frame_not_equal_maybe:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	bl getOWPlayerSpriteFrameParameters_809E434 // sprite_getFrameParameters
	cmp r0, r4
	bne .curFrameNotEqual
	add r7, #2
	mov r0, #1
	pop {pc}
.curFrameNotEqual
	mov r0, #0
	pop {pc}
	thumb_func_end CutsceneCmd_wait_if_player_sprite_cur_frame_not_equal_maybe

	thumb_local_start
// 0x06
// functions as a nop
CutsceneCmd_nop_80377d0:
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
	thumb_func_end CutsceneCmd_nop_80377d0

	thumb_local_start
// 0x07
// wait for screen to fade
CutsceneCmd_wait_screen_fade:
	push {lr}
	bl IsScreenFadeActive // () -> zf
	beq .screenFadeActive
	add r7, #1
	mov r0, #1
	pop {pc}
.screenFadeActive
	mov r0, #0
	pop {pc}
	thumb_func_end CutsceneCmd_wait_screen_fade

	thumb_local_start
// 0x08
// wait for cutscene camera script to finish
CutsceneCmd_wait_camera_script:
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
	thumb_func_end CutsceneCmd_wait_camera_script

	thumb_local_start
// 0x09 byte1 byte2
// wait for cutscene variable to be equal to byte2
// byte1 - cutscene variable to read from
// byte2 - value to compare cutscene variable with
CutsceneCmd_wait_var_equal:
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
	thumb_func_end CutsceneCmd_wait_var_equal

	thumb_local_start
// 0x0a byte1
// wait for cutscene process to end
// byte1 - offset to cutscene script in cutscene state (which cutscene process)
CutsceneCmd_wait_cutscene_process:
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
	thumb_func_end CutsceneCmd_wait_cutscene_process

	thumb_local_start
// 0x0b
// wait if eStruct200a6a0 is initialized
CutsceneCmd_wait_if_eStruct200a6a0_initialized:
	push {lr}
	bl Is_eStruct200a6a0_Initialized
	bne .structInitialized
	add r7, #1
	mov r0, #1
	pop {pc}
.structInitialized
	mov r0, #0
	pop {pc}
	thumb_func_end CutsceneCmd_wait_if_eStruct200a6a0_initialized

	thumb_local_start
// 0x0c
// wait if in the PET menu
CutsceneCmd_wait_if_in_pet_menu:
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
	thumb_func_end CutsceneCmd_wait_if_in_pet_menu

	thumb_local_start
// 0x0d hword1
// wait if the given event flag is clear
// hword1 - flag to test
CutsceneCmd_wait_if_flag_clear:
	push {lr}
	mov r6, #1
	bl ReadMapScriptHalfword
	mov r0, r4
	bl TestEventFlag // (u16 flag) -> !zf
	beq .flagClear
	add r7, #3
	mov r0, #1
	pop {pc}
.flagClear
	mov r0, #0
	pop {pc}
	thumb_func_end CutsceneCmd_wait_if_flag_clear

	thumb_local_start
// 0x0e hword1
// wait if the given event flag is set
// hword1 - flag to test
CutsceneCmd_wait_if_flag_set:
	push {lr}
	mov r6, #1
	bl ReadMapScriptHalfword
	mov r0, r4
	bl TestEventFlag // (u16 flag) -> !zf
	bne .flagSet
	add r7, #3
	mov r0, #1
	pop {pc}
.flagSet
	mov r0, #0
	pop {pc}
	thumb_func_end CutsceneCmd_wait_if_flag_set

	thumb_local_start
// 0xf
// wait if the scenario effect state is initialized
// scenario effects are the soul weapons counter and the mr. weather comp rainbow gauge
CutsceneCmd_wait_if_scenario_effect_state_initialized:
	push {lr}
	bl Is_eScenarioEffectState2000780_Initialized
	bne .structInitialized
	add r7, #1
	mov r0, #1
	pop {pc}
.structInitialized
	mov r0, #0
	pop {pc}
	thumb_func_end CutsceneCmd_wait_if_scenario_effect_state_initialized

	thumb_local_start
// 0x10
// wait if eStruct2001010 is initialized
// literal interpretation: [eStruct2001010]
CutsceneCmd_wait_if_eStruct2001010_initialized:
	push {lr}
	bl Is_eStruct2001010_Initialized
	bne .structInitialized
	add r7, #1
	mov r0, #1
	pop {pc}
.structInitialized
	mov r0, #0
	pop {pc}
	thumb_func_end CutsceneCmd_wait_if_eStruct2001010_initialized

	thumb_local_start
// 0x11
// end cutscene script
CutsceneCmd_cutscene_end:
	mov r0, #0
	mov pc, lr
	thumb_func_end CutsceneCmd_cutscene_end

	thumb_local_start
// 0x12 byte1 word2
// spawn a new cutscene process
// byte1 - which cutscene process to spawn (cutscene state struct offset to the cutscene script pointer, e.g. oCutsceneState_CutsceneScriptPos2)
// word2 - cutscene script of the cutscene process
CutsceneCmd_spawn_cutscene_process:
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
	add r0, #CUTSCENE_FLAG_SCRIPT_1_PAUSED
	bl ClearCutsceneFlag
	mov r0, r4
	add r0, #CUTSCENE_FLAG_SCRIPT_1_PAUSED_LONG
	bl ClearCutsceneFlag

	// advance to next command
	add r7, #6
	mov r0, #1
	pop {pc}
	thumb_func_end CutsceneCmd_spawn_cutscene_process

	thumb_local_start
// 0x13 byte1
// kill a cutscene process
// byte1 - cutscene script ptr struct offset to write to (which cutscene process to kill)
CutsceneCmd_kill_cutscene_process:
	push {lr}
	ldr r0, =DummyCutsceneScript
	mov r6, #1
	bl ReadMapScriptByte
	str r0, [r5,r4]
	add r7, #2
	mov r0, #1
	pop {pc}
	.pool // 8037900
	thumb_func_end CutsceneCmd_kill_cutscene_process

	thumb_local_start
// 0x14 word1
// set the script to execute for when a cutscene is skipped
// word1 - script to execute
CutsceneCmd_set_cutscene_skip_script:
	push {lr}
	mov r6, #1
	bl ReadMapScriptWord
	str r4, [r5,#oCutsceneState_CutsceneScriptAfterCutsceneSkip]
	add r7, #5
	mov r0, #1
	pop {pc}
	thumb_func_end CutsceneCmd_set_cutscene_skip_script

	thumb_local_start
// 0x1c byte1 byte2 destination3
// jump if cutscene variable equals byte2
// byte1 - cutscene variable to read from
// byte2 - value to compare cutscene variable with
// destination3 - script to jump to
CutsceneCmd_jump_if_var_equal:
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
	thumb_func_end CutsceneCmd_jump_if_var_equal

	thumb_local_start
// 0x0a/0x1f byte1 destination2
// jump if battle result equals byte1
// byte1 - value to compare battle result with (0=won, 1=lost, 2=tie, 3=escaped)
// destination2 - script to jump to
MapScriptCutsceneCmd_jump_if_battle_result_equals:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	bl eStruct200A008_getBattleResult // possibly battle related
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
	thumb_func_end MapScriptCutsceneCmd_jump_if_battle_result_equals

	thumb_local_start
// 0x0b/0x20 byte1 destination2
// jump if battle result doesn't equal byte1
// byte1 - value to compare battle result with (0=won, 1=lost, 2=tie, 3=escaped)
// destination2 - script to jump to
MapScriptCutsceneCmd_jump_if_battle_result_not_equal:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	bl eStruct200A008_getBattleResult
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
	thumb_func_end MapScriptCutsceneCmd_jump_if_battle_result_not_equal

	thumb_local_start
// 0x10/0x23 byte1 destination2
// jump if the player's current navi equals byte1
// byte1 - navi to compare the current navi with
// destination2 - script to jump to
MapScriptCutsceneCmd_jump_if_current_navi_equals:
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
	thumb_func_end MapScriptCutsceneCmd_jump_if_current_navi_equals

	thumb_local_start
// 0x11/0x24 byte1 destination2
// jump if the player's current navi doesn't equal byte1
// byte1 - navi to compare the current navi with
// destination2 - script to jump to
MapScriptCutsceneCmd_jump_if_current_navi_not_equal:
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
	thumb_func_end MapScriptCutsceneCmd_jump_if_current_navi_not_equal

	thumb_local_start
// 0x25 byte1 destination2
// jump if the title screen icon count equals byte1
// byte1 - value to compare the title screen icon count with
// destination2 - script to jump to
CutsceneCmd_jump_if_title_screen_icon_count_equals:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	bl GetTitleScreenIconCount // () -> (u8, u16)
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
	thumb_func_end CutsceneCmd_jump_if_title_screen_icon_count_equals

	thumb_local_start
// 0x26 byte1 destination2
// jump if the title screen icon count doesn't equal byte1
// byte1 - value to compare the title screen icon count with
// destination2 - script to jump to
CutsceneCmd_jump_if_title_screen_icon_count_not_equal:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	bl GetTitleScreenIconCount // () -> (u8, u16)
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
	thumb_func_end CutsceneCmd_jump_if_title_screen_icon_count_not_equal

	thumb_local_start
// 0x34 byte1 byte2 byte3
// literal interpretation:
// [[eCutsceneState_owMapObjectPtrs_44+byte1*4]+byte2] = byte3
// may not actually be ow map object ptrs, but not sure
CutsceneCmd_write_byte_to_extended_var_plus_param:
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
	thumb_func_end CutsceneCmd_write_byte_to_extended_var_plus_param

	thumb_local_start
// 0x35 byte1 byte2
// set a cutscene variable with a given value
// literal interpretation: [eCutsceneState+byte1] = byte2
// byte1 - variable to modify
// byte2 - new value of variable
CutsceneCmd_set_var:
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
	thumb_func_end CutsceneCmd_set_var

	thumb_local_start
// 0x3a byte1 byte2
// run text script from pre-loaded text archive with the given index
// byte1 - memory param
// byte2 or mem - text script to run
// the length of the command is 2 if from mem, otherwise 3
CutsceneCmd_run_text_script:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	cmp r4, #0xff
	beq .notFromMem
	ldr r0, [r5,#oCutsceneState_TextArchivePtr]
	ldrb r1, [r5,r4]
	bl chatbox_runScript // (TextScriptArchive *archive, u8 scriptIdx) -> void
	add r7, #2
	mov r0, #1
	pop {pc}
.notFromMem
	mov r6, #2
	bl ReadMapScriptByte
	mov r1, r4
	ldr r0, [r5,#oCutsceneState_TextArchivePtr]
	bl chatbox_runScript // (TextScriptArchive *archive, u8 scriptIdx) -> void
	add r7, #3
	mov r0, #1
	pop {pc}
	thumb_func_end CutsceneCmd_run_text_script

	thumb_local_start
// 0x3b
// unknown chatbox command
// ex. called after getting a chip from the numbertrader
CutsceneCmd_chatbox_cmd_8037a70:
	push {lr}
	bl chatbox_8040818
	add r7, #1
	mov r0, #1
	pop {pc}
	thumb_func_end CutsceneCmd_chatbox_cmd_8037a70

	thumb_local_start
// 0x3c byte1 byte2
// set or clear chatbox flags
// byte1 - operation type (0 = set, 1 = clear)
// byte2 - flags to set or clear
CutsceneCmd_set_or_clear_chatbox_flags:
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
	thumb_func_end CutsceneCmd_set_or_clear_chatbox_flags

	thumb_local_start
// 0x3d destination1 destination5 destination9 ... (up to 8 destinations)
// perform a switch case depending on the value of chatbox flags (eFlags2009F38)
// 0 jumps to destination1, 1 jumps to destination5, 2 jumps to destination9...
// destinationX - script to jump to
// the length of this command is unknown, but the max length should be 33
CutsceneCmd_switch_case_from_chatbox_flags_bit0_to_2:
	push {lr}
	bl chatbox_8045F4C
	lsl r0, r0, #2
	add r0, #1
	mov r6, r0
	bl ReadMapScriptWord
	mov r7, r4
	mov r0, #1
	pop {pc}
	thumb_func_end CutsceneCmd_switch_case_from_chatbox_flags_bit0_to_2

	thumb_local_start
// 0x3e word1
// store text archive pointer
// the text archive may be compressed
// word1 - text archive pointer. bit 31 indicates if it is compressed
CutsceneCmd_decomp_text_archive:
	push {lr}
	mov r6, #1
	bl ReadMapScriptWord
	mov r0, r4
	cmp r0, #0
	bge .uncompressedPtr
	bl DecompressTextArchiveForCutscene // (CompText *archive) -> TextScriptArchive*
.uncompressedPtr
	str r0, [r5,#oCutsceneState_TextArchivePtr]
	add r7, #5
	mov r0, #1
	pop {pc}
	thumb_func_end CutsceneCmd_decomp_text_archive

	thumb_local_start
DecompressTextArchiveForCutscene: // (CompText *archive) -> TextScriptArchive*
	push {lr}
	cmp r0, #0
	bge .uncompressedPtr
	lsl r0, r0, #1
	lsr r0, r0, #1
	// dest
	ldr r1, =eDecompressionBuf2034A00
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	ldr r0, =eDecompressionBuf2034A00
	add r0, #4
.uncompressedPtr
	pop {pc}
	.balign 4, 0
	.pool // 8037AE8
	thumb_func_end DecompressTextArchiveForCutscene

	thumb_func_start DecompressTextArchiveForCutscene2
DecompressTextArchiveForCutscene2:
	push {lr}
	cmp r0, #0
	bge .uncompressedPtr
    // remove compression bit
	lsl r0, r0, #1
	lsr r0, r0, #1

	ldr r1, =DecompressionBuf2033400
	bl SWI_LZ77UnCompReadNormalWrite8bit // (void *src, void *dest) -> void
	ldr r0, =DecompressionBuf2033400
	add r0, #4
.uncompressedPtr
	pop {pc}
	.balign 4, 0
    .pool // 8037B04
	thumb_func_end DecompressTextArchiveForCutscene2

	thumb_local_start
// 0x3f byte1
// call sprite related special
// byte1 - special to call (multiple of 4)
CutsceneCmd_ow_player_sprite_special:
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
off_8037B24:
	.word owPlayer_lockPlayerForNonNPCDialogue_809E0B0+1
	.word owPlayer_unlockPlayerAfterNonNPCDialogue_809E122+1
	.word owPlayer_809E0FC+1
	.word owPlayer_809E114+1
	.word owPlayer_setInteractionLocked_809e230+1
	.word owPlayer_clearInteractionLocked_809e23c+1
	.word owPlayer_enableWallCollision_809e248+1
	.word owPlayer_disableWallCollision_809e254+1
	.word ClearOWPlayerLayerIndexOverride+1
	.word GiveOWPlayerAttachedShadow+1
	.word GiveOWPlayerDetatchedShadow+1
	.word RemoveOWPlayerShadow+1
	.word MakeOWPlayerVisible+1
	.word MakeOWPlayerInvisible+1
	.word DisableOWPlayerAlpha+1
	.word owPlayer_toggleUsingCopybot_809e4bc+1
	.word owPlayer_zeroS2000AA0Param0x4_809e312+1
	.word SetCurNaviHPToFull+1
	thumb_func_end CutsceneCmd_ow_player_sprite_special

	thumb_local_start
// 0x40 byte1 byte2 byte3
// call sprite related special with one parameter
// byte1 - special to call (multiple of 4)
// byte2 - memory param
// byte3 or mem - argument to special
CutsceneCmd_ow_player_sprite_special_with_arg:
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
	.balign 4, 0
off_8037B9C: .word WriteOWPlayerLayerIndexOverride+1
	.word SetOWPlayerFacingDirection+1
	.word owPlayer_setPalette_809e2a0+1
	.word owPlayer_setAlpha_8002c7a_809e4a0+1
	.word SetOWPlayerNaviPaletteIndex+1
	.word owPlayer_setS2000AA0Param0x4_809e314+1
	thumb_func_end CutsceneCmd_ow_player_sprite_special_with_arg

	thumb_local_start
// 0x41 byte1 byte2 byte3 signedhword4 signedhword6 signedhword8
// run ow player coordinate related special for a given number of frames
// byte1 - special to run (multiple of 4). if this special is 8 or higher, then the cutscene script process number must not be 0
// byte2 - memory param
// byte3 or mem - number of frames to run the special
// signedhword4 - x coordinate related param
// signedhword6 - y coordinate related param
// signedhword8 - z coordinate related param
// specials (full extent of what they do is unknown). coordinate writes to eStruct200ace0 are copied to player coordinates in another function:
// 0x0 - indirectly set player coords through eStruct200ace0
// 0x4 - copy player coords to player next coords, write hword params to player coords, then indirectly set player coords through eStruct200ace0
// 0x8 - add hword params to the player coords at eStruct200ace0
// 0xc - copy player coords to player next coords, offset player coords by hword params, then add hword params to the player coords at eStruct200ace0
CutsceneCmd_ow_player_coord_special:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	cmp r4, #8
	blt .lessThanEight
	ldrb r0, [r5,#oCutsceneState_WhichCutsceneScript]
	tst r0, r0
	beq .waitCommand
.lessThanEight
	mov r0, #CUTSCENE_FLAG_8
	bl TestCutsceneFlag
	bne .flagAlreadySet
	mov r0, #CUTSCENE_FLAG_8
	bl SetCutsceneFlag
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
	strb r4, [r5,#oCutsceneState_OWPlayerCoordSpecialTimer]
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
	ldrb r0, [r5,#oCutsceneState_OWPlayerCoordSpecialTimer]
	sub r0, #1
	strb r0, [r5,#oCutsceneState_OWPlayerCoordSpecialTimer]
	bgt .waitCommand
	mov r0, #CUTSCENE_FLAG_8
	bl ClearCutsceneFlag
	add r7, #0xa
	mov r0, #1
	pop {pc}
.waitCommand
	mov r0, #0
	pop {pc}
	.balign 4, 0
	.pool // 8037C30
off_8037C34: .word owPlayer_indirectlySetPlayerCoordsMaybe_809e1a4+1
	.word owPlayer_copyCoordsToNextCoordsWritePlayerCoordsThenIndirectlySetPlayerCoordsMaybe_809e188+1
	.word owPlayer_offsetS200ace0Coords_809e1fa+1
	.word owPlayer_copyCoordsToNextCoordsAddOffsetToCoordsThenOffsetS200ace0Coords_809e1d8+1
	thumb_func_end CutsceneCmd_ow_player_coord_special

	thumb_local_start
// 0x42 byte1 byte2 signedhword3
// move player in facing direction
// the movement is done as if the player was moving the player character themselves
// does not work if the cutscene process number is 0
// byte1 - memory param
// byte2 or mem - number of frames to move player
// signedhword3 - movement speed of player
CutsceneCmd_move_player_in_facing_direction:
	push {lr}
	ldrb r0, [r5,#oCutsceneState_WhichCutsceneScript]
	tst r0, r0
	beq .waitCommand
	bl GetOWPlayerFacingDirection
	mov r3, r0
	mov r0, #CUTSCENE_FLAG_8
	bl TestCutsceneFlag
	bne .flagAlreadySet
	mov r0, #CUTSCENE_FLAG_8
	bl SetCutsceneFlag
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
	strb r4, [r5,#oCutsceneState_OWPlayerCoordSpecialTimer]
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
	ldrb r0, [r5,#oCutsceneState_OWPlayerCoordSpecialTimer]
	sub r0, #1
	strb r0, [r5,#oCutsceneState_OWPlayerCoordSpecialTimer]
	bgt .waitCommand
	mov r0, #8
	bl ClearCutsceneFlag
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
	thumb_func_end CutsceneCmd_move_player_in_facing_direction

	thumb_local_start
// 0x43 byte1 byte2
// unknown ow player related command
// literal interpretation: write byte2 or mem to eStruct200ace0_Unk_1a if eStruct200ace0_fixOWPlayerAnim_15 is nonzero
// byte1 - memory param
// byte2 or mem - loaded to r0 when owPlayer_809e218 is called
CutsceneCmd_ow_player_cmd_8037cc4:
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
	thumb_func_end CutsceneCmd_ow_player_cmd_8037cc4

	thumb_local_start
// 0x44 word1
// literal interpretation: [eStruct200ace0_Unk_20] = word1
CutsceneCmd_write_S200ace0_unk_20:
	push {lr}
	mov r6, #1
	bl ReadMapScriptWord
	mov r0, r4
	bl owPlayer_writeS200aec0_Unk20_809e496
	add r7, #5
	mov r0, #1
	pop {pc}
	thumb_func_end CutsceneCmd_write_S200ace0_unk_20

	thumb_local_start
// 0x45 0x0 byte2 byte3 byte4
// set a custom transform to the player navi sprite
// byte2 - horizontal compress value
// byte3 - vertical compress value
// byte4 - rotation value

// 0x45 0x1
// set the default transform (0x40, 0x40, 0x0) to the player navi sprite

// 0x45 0x2 byte2 signedbyte3 signedbyte4 signedbyte5
// add offsets to player navi sprite transform values for a given number of frames
// byte2 - number of frames
// signedbyte3 - horizontal compress offset
// signedbyte4 - vertical compress offset
// signedbyte5 - rotation offset
CutsceneCmd_transform_player_navi_sprite:
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
	mov r0, #CUTSCENE_FLAG_9
	bl TestCutsceneFlag
	bne .flagAlreadySet
	mov r0, #CUTSCENE_FLAG_9
	bl SetCutsceneFlag
	mov r6, #2
	bl ReadMapScriptByte
	strb r4, [r5,#oCutsceneState_TransformPlayerNaviSpriteTimer]
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
	ldrb r0, [r5,#oCutsceneState_TransformPlayerNaviSpriteTimer]
	sub r0, #1
	strb r0, [r5,#oCutsceneState_TransformPlayerNaviSpriteTimer]
	bgt .timerStillActive
	mov r0, #CUTSCENE_FLAG_9
	bl ClearCutsceneFlag
	add r7, #6
	mov r0, #1
	pop {pc}
.timerStillActive
	mov r0, #0
	pop {pc}
	thumb_func_end CutsceneCmd_transform_player_navi_sprite

	thumb_local_start
// 0x46 0x0 hword2
// set a custom overworld player navi color shader
// hword2 - new color shader as 15bit RGB

// 0x46 0x1
// set the default overworld player navi color shader (0)
CutsceneCmd_set_ow_player_navi_color_shader:
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
	thumb_func_end CutsceneCmd_set_ow_player_navi_color_shader

	thumb_local_start
// 0x47 byte1 byte2 byte3
// modify the overworld player's animation
// byte1 - modify type. 0=write, 1=add anim to facing direction and write
// byte2 - memory param
// byte3 or mem - base overworld player anim
CutsceneCmd_write_or_offset_ow_player_fixed_anim_select_8037dac:
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
	thumb_func_end CutsceneCmd_write_or_offset_ow_player_fixed_anim_select_8037dac

	thumb_local_start
// 0x48 byte1 byte2
// set the player coordinates and animation to the given npc, and set the player facing direction
// byte1 - index of the npc to copy coords and anim from
// byte2 - new facing direction of the player
CutsceneCmd_set_player_coords_anim_facing_as_npc:
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
	thumb_func_end CutsceneCmd_set_player_coords_anim_facing_as_npc

	thumb_local_start
// 0x49 byte1 ...
// run special related to spawning or freeing OW map objects
// subcommands documented below
// byte1 - upper nybble is subcommand to run (multiple of 1)
//       - lower nybble is index of array of map objects spawned by these subcommands
CutsceneCmd_spawn_free_ow_map_object_specials:
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
	thumb_func_end CutsceneCmd_spawn_free_ow_map_object_specials

	thumb_local_start
// 0x49 0x0X byte2 hword3 hword5 hword7 word9
// spawn overworld map object
// byte1 lower nybble - index of cutscene state map object ptrs to store the new map object
// byte2 - overworld map object index
// hword3 - map object x coordinate
// hword5 - map object y coordinate
// hword7 - map object z coordinate
// word9 - map object ID (written to field oOverworldMapObject_ObjectID)
MapScriptSubCmd_spawn_ow_map_object:
	push {lr}
	mov r1, #0xf
	and r4, r1
	lsl r4, r4, #2
	add r4, #oCutsceneState_owMapObjectPtrs_44
	push {r5}
	add r5, r5, r4 // eCutsceneState_owMapObjectPtrs_44 + wordparam
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
// 0x49 0x1X byte2 signedhword3 signedhword5 signedhword7 word9
// spawn overworld map object relative to overworld player
// byte1 lower nybble - index of cutscene state map object ptrs to store the new map object
// byte2 - overworld map object index
// signedhword3 - map object x coordinate offset to player
// signedhword5 - map object y coordinate offset to player
// signedhword7 - map object z coordinate offset to player
// word9 - unknown param (written to field oOverworldMapObject_ObjectID)
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
// 0x49 0x2X byte2 byte3 signedhword4 signedhword6 signedhword8 word10
// spawn overworld map object relative to overworld npc
// byte1 lower nybble - index of cutscene state map object ptrs to store the new map object
// byte2 - overworld npc object to read coordinates from
// byte3 - overworld map object index
// signedhword4 - map object x coordinate offset to npc
// signedhword6 - map object y coordinate offset to npc
// signedhword8 - map object z coordinate offset to npc
// word10 - map object ID (written to field oOverworldMapObject_ObjectID)
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
	mov r1, #oOverworldNPCObject_Size
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
// 0x49 0x3X
// free overworld map object created via a cutscene
// byte1 lower nybble - which map object to free, from the list of cutscene state map object ptrs
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
	mov r0, #NULL
	str r0, [r5,r4]
	bl FreeOverworldMapObject
.mapObjectNull
	pop {r5}
	add r7, #2
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptSubCmd_free_ow_map_object

	thumb_local_start
// 0x49 0x4X
// free all overworld map objects created via a cutscene
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
	.balign 4, 0
off_8037FB4: .word eOverworldNPCObjects
	thumb_func_end MapScriptSubCmd_free_all_spawned_ow_map_objects

	thumb_local_start
// 0x4a 0x0 word2
// spawn objects from list
// word2 - list of structs corresponding to which objects to spawn and params
// list terminated by 0xff
// struct format: byte0 byte1 word4 word8 word0xc word0x10
// byte0 - object type
// byte1 - object index
// word4 - x coordinate
// word8 - y coordinate
// word0xc - z coordinate
// word0x10 - param (written to field 0x4)

// 0x4a 0x1 byte2
// free all objects of specified types
// byte2 - bitfield of objects to free
// see constants/constants.inc for object type flags

// 0x4a 0x2 word2
// free all npc objects, then spawn npc objects from a list. terminated by 0xff
// struct format: word0
// word0 - animation script pointer

// 0x4a 0x3
// spawn npc objects for the current map

// 0x4a 0x4
// spawn map objects for the current map

// 0x4a 0x5
// free npc objects if the last map npc objects were spawned is different than the current map
CutsceneCmd_spawn_or_free_ow_map_or_npc_objects:
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
	bl SpawnObjectsFromList // (void *a1) -> int
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
	bl npc_freeAllObjectsThenSpawnObjectsFromList
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
	thumb_func_end CutsceneCmd_spawn_or_free_ow_map_or_npc_objects

	thumb_local_start
// 0x4b word1
// call native function. if the return flags are nonzero, then wait
// word1 - native function to call
CutsceneCmd_call_native_with_return_value:
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
	thumb_func_end CutsceneCmd_call_native_with_return_value

	thumb_local_start
// the following commands are related to warping
// 0x4c &0x40
// literal interpretation: call warp_8005f32 and warp_setSubsystemIndexTo0x10AndOthers_8005f00

// 0x4c &0x20 word2
// literal interpretation: [eCutsceneState_Unk_34] = word2
// word2 - warp related pointer

// 0x4c !&0x60 byte2 word3
// literal interpretation:
// if bit7 of byte1 is set, word3 = [eCutsceneState_Unk_34]
// if bit0 of byte1 is set:
// call warp_setSubsystemIndexTo0x14AndOthers_8005f14 with r0=word3, r1=0, r2=byte2
// else:
// call warp_setSubsystemIndexTo0x10AndOthers_8005f00 with r0=word3, r1=0, r2=byte2
// byte2 = map group transition type
CutsceneCmd_warp_cmd_8038040:
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
	thumb_func_end CutsceneCmd_warp_cmd_8038040

	thumb_local_start
// 0x30/0x4d hword1
// play sound
// hword1 - sound to play
MapScriptCutsceneCmd_play_sound:
	push {lr}
	mov r6, #1
	bl ReadMapScriptHalfword
	mov r0, r4
	bl PlaySoundEffect
	add r7, #3
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCutsceneCmd_play_sound

	thumb_local_start
// 0x31/0x4e hword1
// play music
// hword1 - music to play. if this is negative, then play the current map music
MapScriptCutsceneCmd_play_music:
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
	bl PlayMusic // (int song) -> void
.done
	add r7, #3
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCutsceneCmd_play_music

	thumb_local_start
// 0x32/0x4f hword1 byte3 byte4
// call sound_80006A2 with r0=hword1, r1=byte3, r2=byte4
MapScriptCutsceneCmd_sound_cmd_80380ea:
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
	thumb_func_end MapScriptCutsceneCmd_sound_cmd_80380ea

	thumb_local_start
// 0x33/0x50 byte1 byte2
// call sound_800068A with r0=byte1, r1=byte2 then do [eGameState_BGMusicIndicator] = 0x63
MapScriptCutsceneCmd_sound_cmd_803810e:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	mov r1, r4
	mov r6, #2
	bl ReadMapScriptByte
	mov r0, r4
	bl sound_800068A
	mov r1, r10
	ldr r1, [r1,#oToolkit_GameStatePtr]
	mov r0, #0x63
	strb r0, [r1,#oGameState_BGMusicIndicator]
	add r7, #3
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCutsceneCmd_sound_cmd_803810e

	thumb_local_start
// 0x34/0x51
// stop any sounds
MapScriptCutsceneCmd_stop_sound:
	push {lr}
	bl musicGameState_8000784 // () -> void
	add r7, #1
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCutsceneCmd_stop_sound

	thumb_local_start
// 0x35/0x52 byte1 byte2 byte3
// give or take items
// byte1 - operation type (0=give, 1=take)
// byte2 - item to give or take
// byte3 - quantity of item
MapScriptCutsceneCmd_give_or_take_item:
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
	beq .takeItem
	bl GiveItem
	b .done
.takeItem
	bl TakeItem
.done
	add r7, #4
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCutsceneCmd_give_or_take_item

	thumb_local_start
// 0x54 0x0 word1
// set cutscene camera script
// word1 - cutscene camera script pointer

// 0x54 0x1
// stop cutscene camera script
CutsceneCmd_run_or_stop_cutscene_camera_script:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	cmp r4, #0
	bne .resetCamera
	mov r6, #2
	bl ReadMapScriptWord
	str r4, [r5,#oCutsceneState_CutsceneCameraScriptPtr]
	mov r0, r4
	bl SetCutsceneCameraScript
	mov r0, #TRUE
	strb r0, [r5,#oCutsceneState_CutsceneCameraScriptActive]
	add r7, #6
	mov r0, #1
	pop {pc}
.resetCamera
	mov r0, #NULL
	str r0, [r5,#oCutsceneState_CutsceneCameraScriptPtr]
	bl cutsceneCamera_focusCameraOnPlayerMaybe_8036faa
	mov r0, #FALSE
	strb r0, [r5,#oCutsceneState_CutsceneCameraScriptActive]
	add r7, #2
	mov r0, #1
	pop {pc}
	thumb_func_end CutsceneCmd_run_or_stop_cutscene_camera_script

	thumb_local_start
// 0x55 hword1
// start a fixed battle (i.e. a non-random encounter battle)
// hword1 - battle index
CutsceneCmd_start_fixed_battle:
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
	bl StartBattle // (BattleSettings *r0Bt, bool r1) -> void
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
	thumb_func_end CutsceneCmd_start_fixed_battle

	thumb_local_start
// 0x56
// start a random battle
CutsceneCmd_start_random_battle:
	push {lr}
	bl chooseRandomEncounterMaybe_80aa5e4
	mov r1, #1
	bl StartBattle // (BattleSettings *r0Bt, bool r1) -> void
	mov r0, #0x2c
	mov r1, #0x10
	bl SetScreenFade // (int a1, int a2) -> void
	add r7, #1
	mov r0, #1
	pop {pc}
	thumb_func_end CutsceneCmd_start_random_battle

	thumb_local_start
// 0x38/0x58 word1 word5 word9
// call Initialize_eStruct200a6a0 with r0=word1, r1=word5, r2=word9
MapScriptCutsceneCmd_init_eStruct200a6a0:
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
	thumb_func_end MapScriptCutsceneCmd_init_eStruct200a6a0

	thumb_local_start
// 0x39/0x59
// call run_eStruct200a6a0_Callback_8002484
MapScriptCutsceneCmd_run_eStruct200a6a0_callback:
	push {lr}
	bl run_eStruct200a6a0_Callback_8002484
	add r7, #1
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCutsceneCmd_run_eStruct200a6a0_callback

	thumb_local_start
// 0x5a byte1 byte2 byte3
// do a camera shake effect
// byte1 - shake type
// byte2 - shake timer
// byte3 - unused
CutsceneCmd_do_camera_shake:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	mov r0, r4
	mov r6, #2
	bl ReadMapScriptByte
	mov r1, r4
	bl camera_initShakeEffect_80302a8
	add r7, #4
	mov r0, #1
	pop {pc}
	thumb_func_end CutsceneCmd_do_camera_shake

	thumb_local_start
// 0x5b byte1
// functions as a nop
// byte1 - unused
CutsceneCmd_nop_8038246:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	mov r0, r4
	add r7, #2
	mov r0, #1
	pop {pc}
	thumb_func_end CutsceneCmd_nop_8038246

	thumb_local_start
// 0x5c
// functions as a nop
CutsceneCmd_nop_8038256:
	push {lr}
	add r7, #1
	mov r0, #1
	pop {pc}
	thumb_func_end CutsceneCmd_nop_8038256

	thumb_local_start
// 0x5d
// functions as a nop
CutsceneCmd_nop_803825e:
	push {lr}
	add r7, #1
	mov r0, #1
	pop {pc}
	thumb_func_end CutsceneCmd_nop_803825e

	thumb_local_start
// 0x5e
// functions as a nop
CutsceneCmd_nop_8038266:
	push {lr}
	add r7, #1
	mov r0, #1
	pop {pc}
	thumb_func_end CutsceneCmd_nop_8038266

	thumb_local_start
// 0x5f
// sets all bg scroll callbacks to nullsubs
// i.e. terminates BG scrolling effect
CutsceneCmd_terminate_bg_scroll_effect:
	push {lr}
	bl SetDummyBGScrollCallbacks
	add r7, #1
	mov r0, #1
	pop {pc}
	thumb_func_end CutsceneCmd_terminate_bg_scroll_effect

	thumb_local_start
// 0x3b/0x60 byte1
// init scenario effect
// byte1 - scenario effect to initialize (0=soul weapons counter, 1=mr. weather comp rainbow gauge)
MapScriptCutsceneCmd_init_scenario_effect:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	mov r0, r4
	bl initScenarioEffect_8003914
	add r7, #2
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCutsceneCmd_init_scenario_effect

	thumb_local_start
// 0x3c/0x61
// end scenario effect
MapScriptCutsceneCmd_end_scenario_effect:
	push {lr}
	bl endScenarioEffectMaybe_8003940
	add r7, #1
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCutsceneCmd_end_scenario_effect

	thumb_local_start
// 0x3d/0x62 byte1
// init minigame effect
// byte1 - minigame effect to initialize (0=AquaMan, 1=SlashMan, 2=TenguMan, 3=ElecMan, 4=EraseMan, 5=GroundMan).
MapScriptCutsceneCmd_init_minigame_effect:
	push {lr}
	mov r6, #1
	bl ReadMapScriptByte
	mov r0, r4
	bl initMinigameEffect_8003a64
	add r7, #2
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCutsceneCmd_init_minigame_effect

	thumb_local_start
// 0x3e/0x63
// end minigame effect
MapScriptCutsceneCmd_end_minigame_effect:
	push {lr}
	bl endMinigameEffectMaybe_8003a90
	add r7, #1
	mov r0, #1
	pop {pc}
	thumb_func_end MapScriptCutsceneCmd_end_minigame_effect

	thumb_local_start
// 0x41/0x67 hword1 byte3
// add the range of bbs messages specified by hword1 and byte3
// i.e. [hword1, hword1+byte3) (interval notation)
// hword1 - starting bbs message flag
// byte3 - number of bbs messages to add
MapScriptCutsceneCmd_add_bbs_message_range:
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
	thumb_func_end MapScriptCutsceneCmd_add_bbs_message_range

	thumb_local_start
// 0x68 hword1
// call encryption_applyPack_8006e70 with r0=hword1
CutsceneCmd_encryption_cmd_80382de:
	push {lr}
	mov r6, #1
	bl ReadMapScriptHalfword
	// idx_20008A0
	mov r0, r4
	bl encryption_applyPack_8006e70 // (int idx_20008A0) -> void
	add r7, #3
	mov r0, #1
	pop {pc}
	thumb_func_end CutsceneCmd_encryption_cmd_80382de

	thumb_local_start
// 0x69
// call navi_80340F6
CutsceneCmd_navi_cmd_80340f6:
	push {lr}
	bl navi_80340F6
	add r7, #1
	mov r0, #1
	pop {pc}
	thumb_func_end CutsceneCmd_navi_cmd_80340f6

	thumb_local_start
// 0x6a byte1
// change the player navi?
// byte1 - navi to switch to
CutsceneCmd_change_navi_maybe_80382fe:
	push {lr}
	bl writeCurPETNaviToS2001c04_Unk07_80010c6
	mov r6, #1
	bl ReadMapScriptByte
	mov r0, r4
	bl SetCurPETNavi
	bl reloadCurNaviBaseStats_8120df0
	bl reloadCurNaviStatBoosts_813c3ac
	bl SetCurNaviHPToFull
	add r7, #2
	mov r0, #1
	pop {pc}
	thumb_func_end CutsceneCmd_change_navi_maybe_80382fe

	thumb_local_start
// 0x42/0x6b hword1 byte3
// add the range of mails specified by hword1 and byte3
// i.e. [hword1, hword1+byte3) (interval notation)
// hword1 - starting mail flag
// byte3 - number of mails to add
MapScriptCutsceneCmd_add_mail_range:
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
	thumb_func_end MapScriptCutsceneCmd_add_mail_range

	thumb_local_start
// 0x43/0x6c word1 word5
// call sub_80356F8 with r0=word1 and r1=word5
MapScriptCutsceneCmd_cmd_8038346:
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
	thumb_func_end MapScriptCutsceneCmd_cmd_8038346

	thumb_local_start
// 0x6f byte1 hword2
// give or take zenny
// byte1 - operation type (0=give, 1=take)
// hword2 - amount to give or take
CutsceneCmd_give_or_take_zenny:
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
	thumb_func_end CutsceneCmd_give_or_take_zenny

	thumb_local_start
// 0x70 byte1 hword2
// give or take bugfrags
// byte1 - operation type (0=give, 1=take)
// hword2 - amount to give or take
CutsceneCmd_give_or_take_bugfrags:
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
	thumb_func_end CutsceneCmd_give_or_take_bugfrags

	thumb_local_start
// 0x73 byte1 hword2 byte4 byte5
// give or take chips
// byte1 - operation type (give=0, take=1)
// hword2 - chip to give or take
// byte4 - chip code
// byte5 - quantity of chips
CutsceneCmd_give_or_take_chips:
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
	thumb_func_end CutsceneCmd_give_or_take_chips

	thumb_local_start
// 0x74 byte1 hword2 byte4 byte5
// give or take navicust programs
// byte1 - operation type (0=give, 1=take)
// hword2 - navicust program to give or take
// byte4 - color of the navicust program
// byte5 - quantity of the navicust program
CutsceneCmd_give_or_take_navicust_programs:
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
	thumb_func_end CutsceneCmd_give_or_take_navicust_programs

	thumb_local_start
// 0x75 0x0 word2
// set the secondary continuous map script pointer
// word2 - map script pointer to set the secondary continuous map script pointer to

// 0x75 0x1
// end execution of the secondary continuous map script pointer
CutsceneCmd_cutscene_run_or_end_secondary_continuous_map_script:
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
	.balign 4, 0
	.pool // 8038438
	thumb_func_end CutsceneCmd_cutscene_run_or_end_secondary_continuous_map_script

	thumb_local_start
// 0x76 byte1 byte2
// store or load the current game progress to or from a buffer
// byte1 - operation type (0=store, 1=load)
// byte2 - index of the buffer to use
CutsceneCmd_store_or_load_game_progress_buffer_maybe_803843c:
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
	thumb_func_end CutsceneCmd_store_or_load_game_progress_buffer_maybe_803843c

	thumb_local_start
// 0x77 byte1
// literal interpretation:
// if byte1 == 0:
// call testSetClearFlags_803553c
// else:
// call clearSetFlags_80355a8
CutsceneCmd_flag_cmd_8038466:
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
	thumb_func_end CutsceneCmd_flag_cmd_8038466

	thumb_local_start
// 0x44/0x78
// add the range of bbs requests specified by hword1 and byte3
// i.e. [hword1, hword1+byte3) (interval notation)
// hword1 - starting bbs request flag
// byte3 - number of bbs requests to add
MapScriptCutsceneCmd_add_request_range:
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
	thumb_func_end MapScriptCutsceneCmd_add_request_range

	thumb_local_start
// 0x45/0x79 unused1to3 destination4
// appears to be "jump_if_has_rush_food_and_a_pressed"
// but it isn't triggered when using a piece of rush food
// unused1to3 - unused
// destination4 - script to jump to
MapScriptCutsceneCmd_rush_food_cmd_80384A8:
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
	thumb_func_end MapScriptCutsceneCmd_rush_food_cmd_80384A8

	thumb_local_start
// 0x7a
// set beast out counter to 3
CutsceneCmd_set_beast_out_counter_to_3:
	push {lr}
	bl SetBeastOutCounterTo3
	add r7, #1
	mov r0, #1
	pop {pc}
	thumb_func_end CutsceneCmd_set_beast_out_counter_to_3

	thumb_local_start
// 0x7b unused1to3 destination4
// jump if the player is master rank for the request bbs
// unused1to3 - unused
// destination4 - script to jump to
CutsceneCmd_jump_if_req_bbs_master_rank:
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
	thumb_func_end CutsceneCmd_jump_if_req_bbs_master_rank

	thumb_local_start
// 0x7c unused1to3 destination4 destination8
// jump to another script depending on whether the player is in the real world or on the internet
// unused1to3 - unused
// destination4 - script to jump to if in the real world
// destination8 - script to jump to if on the internet
CutsceneCmd_if_in_real_world_jump_else_jump:
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
	thumb_func_end CutsceneCmd_if_in_real_world_jump_else_jump

	thumb_func_start RunCutscene
RunCutscene:
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
	cmp r1, #CUTSCENE_SCRIPT_UNK_MAGIC_SCRIPT_VALUE_0x1
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
	ldr r0, [r5,#oCutsceneState_CutsceneCameraScriptPtr]
	tst r0, r0
	beq .cutsceneCameraScriptNull
	bl RunCutsceneCameraCommand
	strb r0, [r5,#oCutsceneState_CutsceneCameraScriptActive]
.cutsceneCameraScriptNull
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
	mov r0, #CUTSCENE_FLAG_SCRIPT_1_PAUSED
	bl ClearCutsceneFlag
	mov r0, #CUTSCENE_FLAG_SCRIPT_2_PAUSED
	bl ClearCutsceneFlag
	mov r0, #CUTSCENE_FLAG_SCRIPT_3_PAUSED
	bl ClearCutsceneFlag
	mov r0, #CUTSCENE_FLAG_SCRIPT_4_PAUSED
	bl ClearCutsceneFlag
	mov r0, #CUTSCENE_FLAG_SCRIPT_1_PAUSED_LONG
	bl ClearCutsceneFlag
	mov r0, #CUTSCENE_FLAG_SCRIPT_2_PAUSED_LONG
	bl ClearCutsceneFlag
	mov r0, #CUTSCENE_FLAG_SCRIPT_3_PAUSED_LONG
	bl ClearCutsceneFlag
	mov r0, #CUTSCENE_FLAG_SCRIPT_4_PAUSED_LONG
	bl ClearCutsceneFlag
.doneCutsceneIteration
	pop {r4,r5}
	mov r8, r4
	mov r12, r5
	pop {r4-r7,pc}
	.balign 4, 0
// 0x80385B8
	.pool
	thumb_func_end RunCutscene

	thumb_local_start
SetCutsceneFlag:
	push {r1}
	mov r1, #1
	lsl r1, r0
	ldr r0, [r5,#oCutsceneState_CutsceneFlags]
	orr r0, r1
	str r0, [r5,#oCutsceneState_CutsceneFlags]
	pop {r1}
	mov pc, lr
	thumb_func_end SetCutsceneFlag

	thumb_local_start
ClearCutsceneFlag:
	push {r1}
	mov r1, #1
	lsl r1, r0
	ldr r0, [r5,#oCutsceneState_CutsceneFlags]
	bic r0, r1
	str r0, [r5,#oCutsceneState_CutsceneFlags]
	pop {r1}
	mov pc, lr
	thumb_func_end ClearCutsceneFlag

	thumb_local_start
TestCutsceneFlag:
	push {r1}
	mov r1, #1
	lsl r1, r0
	ldr r0, [r5,#oCutsceneState_CutsceneFlags]
	tst r0, r1
	pop {r1}
	mov pc, lr
	// file boundary?
	.byte 0, 0
	thumb_func_end TestCutsceneFlag
