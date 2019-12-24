TextScriptChipTrader86C580C::
	text_archive_start

	def_text_script TextScriptChipTrader86C580C_unk0
	ts_msg_open
	.string "It's a Chip Trader.\n"
	.string "Insert 3 BtlChips?\n"
	ts_position_option_horizontal width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0x5, 0xFF
	ts_start_chip_trader [
		amount: 0x3,
		jumpIfNotEnoughChips: TextScriptChipTrader86C580C_unk1_id,
	]
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptChipTrader86C580C_unk1
	ts_check_flag [
		flag: 0x171D,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: TextScriptChipTrader86C580C_unk20_id,
	]
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: TextScriptChipTrader86C580C_unk20_id,
		jumpIfElecMan: TextScriptChipTrader86C580C_unk20_id,
		jumpIfSlashMan: TextScriptChipTrader86C580C_unk20_id,
		jumpIfEraseMan: TextScriptChipTrader86C580C_unk20_id,
		jumpIfChargeMan: TextScriptChipTrader86C580C_unk20_id,
		jumpIfSpoutMan: TextScriptChipTrader86C580C_unk20_id,
		jumpIfTomahawkMan: TextScriptChipTrader86C580C_unk20_id,
		jumpIfTenguMan: TextScriptChipTrader86C580C_unk20_id,
		jumpIfGroundMan: TextScriptChipTrader86C580C_unk20_id,
		jumpIfDustMan: TextScriptChipTrader86C580C_unk20_id,
		jumpIfProtoMan: TS_CONTINUE,
	]
	ts_msg_open
	ts_mugshot_show mugshot=0x37
	.string "Lan,you have less\n"
	.string "than 3 chips in your\n"
	.string "Pack."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptChipTrader86C580C_unk2
	ts_check_flag [
		flag: 0x171D,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: TextScriptChipTrader86C580C_unk30_id,
	]
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: TextScriptChipTrader86C580C_unk30_id,
		jumpIfElecMan: TextScriptChipTrader86C580C_unk30_id,
		jumpIfSlashMan: TextScriptChipTrader86C580C_unk30_id,
		jumpIfEraseMan: TextScriptChipTrader86C580C_unk30_id,
		jumpIfChargeMan: TextScriptChipTrader86C580C_unk30_id,
		jumpIfSpoutMan: TextScriptChipTrader86C580C_unk30_id,
		jumpIfTomahawkMan: TextScriptChipTrader86C580C_unk30_id,
		jumpIfTenguMan: TextScriptChipTrader86C580C_unk30_id,
		jumpIfGroundMan: TextScriptChipTrader86C580C_unk30_id,
		jumpIfDustMan: TextScriptChipTrader86C580C_unk30_id,
		jumpIfProtoMan: TS_CONTINUE,
	]
	ts_msg_open
	ts_text_speed delay=0x0
	ts_mugshot_show mugshot=0x37
	.string "Add these 3?\n"
	ts_position_option_from_center width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script TextScriptChipTrader86C580C_unk3
	ts_msg_open
	.string "OK!\n"
	ts_sound_disable_text_sfx
	ts_sound_play00 track=0xD5
	.string "Click-k-k-k...THUNK!"
	ts_sound_enable_text_sfx
	ts_key_wait any=0x0
	ts_clear_msg
	ts_player_animate_scene animation=0x18
	ts_sound_play00 track=0x73
	ts_flag_set flag=0xF5
	ts_position_text [
		left: 0x5B,
		top: 0x6C,
		arrowDistance: 0x3,
	]
	ts_position_arrow [
		left: 0xE2,
		top: 0x8D,
	]
	.string "Lan got:\n"
	.string "\""
	ts_print_chip1 [
		chip: 0x0,
		buffer: 0x1,
	]
	.string " "
	ts_print_code [
		code: 0x0,
		buffer: 0x2,
	]
	.string "\"!!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_flag_clear flag=0xF5
	ts_wait frames=0x6
	ts_position_text [
		left: 0x33,
		top: 0x6C,
		arrowDistance: 0x3,
	]
	.string "Try again?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0x5, 0xFF
	ts_start_chip_trader [
		amount: 0x3,
		jumpIfNotEnoughChips: TextScriptChipTrader86C580C_unk4_id,
	]
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptChipTrader86C580C_unk4
	ts_check_flag [
		flag: 0x171D,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: TextScriptChipTrader86C580C_unk21_id,
	]
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: TextScriptChipTrader86C580C_unk21_id,
		jumpIfElecMan: TextScriptChipTrader86C580C_unk21_id,
		jumpIfSlashMan: TextScriptChipTrader86C580C_unk21_id,
		jumpIfEraseMan: TextScriptChipTrader86C580C_unk21_id,
		jumpIfChargeMan: TextScriptChipTrader86C580C_unk21_id,
		jumpIfSpoutMan: TextScriptChipTrader86C580C_unk21_id,
		jumpIfTomahawkMan: TextScriptChipTrader86C580C_unk21_id,
		jumpIfTenguMan: TextScriptChipTrader86C580C_unk21_id,
		jumpIfGroundMan: TextScriptChipTrader86C580C_unk21_id,
		jumpIfDustMan: TextScriptChipTrader86C580C_unk21_id,
		jumpIfProtoMan: TS_CONTINUE,
	]
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Too bad,Lan. You\n"
	.string "have less than 3\n"
	.string "chips in your Pack!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptChipTrader86C580C_unk5
	ts_end

	def_text_script TextScriptChipTrader86C580C_unk6
	ts_msg_open
	.string "Chip Trader Special!\n"
	.string "Insert 10 BtlChips?\n"
	ts_position_option_horizontal width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0xB, 0xFF
	ts_start_chip_trader [
		amount: 0xA,
		jumpIfNotEnoughChips: TextScriptChipTrader86C580C_unk7_id,
	]
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptChipTrader86C580C_unk7
	ts_check_flag [
		flag: 0x171D,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: TextScriptChipTrader86C580C_unk22_id,
	]
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: TextScriptChipTrader86C580C_unk22_id,
		jumpIfElecMan: TextScriptChipTrader86C580C_unk22_id,
		jumpIfSlashMan: TextScriptChipTrader86C580C_unk22_id,
		jumpIfEraseMan: TextScriptChipTrader86C580C_unk22_id,
		jumpIfChargeMan: TextScriptChipTrader86C580C_unk22_id,
		jumpIfSpoutMan: TextScriptChipTrader86C580C_unk22_id,
		jumpIfTomahawkMan: TextScriptChipTrader86C580C_unk22_id,
		jumpIfTenguMan: TextScriptChipTrader86C580C_unk22_id,
		jumpIfGroundMan: TextScriptChipTrader86C580C_unk22_id,
		jumpIfDustMan: TextScriptChipTrader86C580C_unk22_id,
		jumpIfProtoMan: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,you have less\n"
	.string "than 10 chips\n"
	.string "in your Pack."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptChipTrader86C580C_unk8
	ts_check_flag [
		flag: 0x171D,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: TextScriptChipTrader86C580C_unk31_id,
	]
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: TextScriptChipTrader86C580C_unk31_id,
		jumpIfElecMan: TextScriptChipTrader86C580C_unk31_id,
		jumpIfSlashMan: TextScriptChipTrader86C580C_unk31_id,
		jumpIfEraseMan: TextScriptChipTrader86C580C_unk31_id,
		jumpIfChargeMan: TextScriptChipTrader86C580C_unk31_id,
		jumpIfSpoutMan: TextScriptChipTrader86C580C_unk31_id,
		jumpIfTomahawkMan: TextScriptChipTrader86C580C_unk31_id,
		jumpIfTenguMan: TextScriptChipTrader86C580C_unk31_id,
		jumpIfGroundMan: TextScriptChipTrader86C580C_unk31_id,
		jumpIfDustMan: TextScriptChipTrader86C580C_unk31_id,
		jumpIfProtoMan: TS_CONTINUE,
	]
	ts_msg_open
	ts_text_speed delay=0x0
	ts_mugshot_show mugshot=0x37
	.string "Add these 10?\n"
	ts_position_option_from_center width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_msg_close_quick
	ts_end

	def_text_script TextScriptChipTrader86C580C_unk9
	ts_msg_open
	.string "OK!\n"
	ts_sound_disable_text_sfx
	ts_sound_play00 track=0xD5
	.string "Click-k-k-k...THUNK!"
	ts_sound_enable_text_sfx
	ts_key_wait any=0x0
	ts_clear_msg
	ts_player_animate_scene animation=0x18
	ts_sound_play00 track=0x73
	ts_flag_set flag=0xF5
	ts_position_text [
		left: 0x5B,
		top: 0x6C,
		arrowDistance: 0x3,
	]
	ts_position_arrow [
		left: 0xE2,
		top: 0x8D,
	]
	.string "Lan got:\n"
	.string "\""
	ts_print_chip1 [
		chip: 0x0,
		buffer: 0x1,
	]
	.string " "
	ts_print_code [
		code: 0x0,
		buffer: 0x2,
	]
	.string "\"!!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_flag_clear flag=0xF5
	ts_wait frames=0x6
	ts_position_text [
		left: 0x33,
		top: 0x6C,
		arrowDistance: 0x3,
	]
	.string "Try again?\n"
	ts_position_option_horizontal width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0xB, 0xFF
	ts_start_chip_trader [
		amount: 0xA,
		jumpIfNotEnoughChips: TextScriptChipTrader86C580C_unk10_id,
	]
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptChipTrader86C580C_unk10
	ts_check_flag [
		flag: 0x171D,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: TextScriptChipTrader86C580C_unk23_id,
	]
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: TextScriptChipTrader86C580C_unk23_id,
		jumpIfElecMan: TextScriptChipTrader86C580C_unk23_id,
		jumpIfSlashMan: TextScriptChipTrader86C580C_unk23_id,
		jumpIfEraseMan: TextScriptChipTrader86C580C_unk23_id,
		jumpIfChargeMan: TextScriptChipTrader86C580C_unk23_id,
		jumpIfSpoutMan: TextScriptChipTrader86C580C_unk23_id,
		jumpIfTomahawkMan: TextScriptChipTrader86C580C_unk23_id,
		jumpIfTenguMan: TextScriptChipTrader86C580C_unk23_id,
		jumpIfGroundMan: TextScriptChipTrader86C580C_unk23_id,
		jumpIfDustMan: TextScriptChipTrader86C580C_unk23_id,
		jumpIfProtoMan: TS_CONTINUE,
	]
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Too bad,Lan. You\n"
	.string "have less than 10\n"
	.string "chips in your Pack!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptChipTrader86C580C_unk11
	ts_end

	def_text_script TextScriptChipTrader86C580C_unk12
	ts_msg_open
	.string "A BugFrag Trader."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Insert 10 BugFrags?\n"
	ts_position_option_horizontal width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0x11, 0xFF
	ts_start_chip_trader [
		amount: 0x1,
		jumpIfNotEnoughChips: TextScriptChipTrader86C580C_unk13_id,
	]
	ts_wait_hold unused=0x0

	def_text_script TextScriptChipTrader86C580C_unk13
	ts_check_flag [
		flag: 0x171D,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: TextScriptChipTrader86C580C_unk24_id,
	]
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: TextScriptChipTrader86C580C_unk24_id,
		jumpIfElecMan: TextScriptChipTrader86C580C_unk24_id,
		jumpIfSlashMan: TextScriptChipTrader86C580C_unk24_id,
		jumpIfEraseMan: TextScriptChipTrader86C580C_unk24_id,
		jumpIfChargeMan: TextScriptChipTrader86C580C_unk24_id,
		jumpIfSpoutMan: TextScriptChipTrader86C580C_unk24_id,
		jumpIfTomahawkMan: TextScriptChipTrader86C580C_unk24_id,
		jumpIfTenguMan: TextScriptChipTrader86C580C_unk24_id,
		jumpIfGroundMan: TextScriptChipTrader86C580C_unk24_id,
		jumpIfDustMan: TextScriptChipTrader86C580C_unk24_id,
		jumpIfProtoMan: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,you don't have\n"
	.string "10 BugFrags!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptChipTrader86C580C_unk14

	def_text_script TextScriptChipTrader86C580C_unk15
	ts_msg_open_quick
	ts_print_current_navi_ow
	.string " handed over\n"
	.string "the BugFrags!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_flag_set flag=0xF6
	ts_wait frames=0x3C
	.string "With a powerful howl\n"
	.string "the ChipData is\n"
	.string "revealed!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_player_animate_scene animation=0x18
	ts_sound_play00 track=0x73
	ts_flag_set flag=0xF5
	ts_position_text [
		left: 0x5B,
		top: 0x6C,
		arrowDistance: 0x3,
	]
	ts_position_arrow [
		left: 0xE2,
		top: 0x8D,
	]
	ts_print_current_navi_ow
	.string " got:\n"
	.string "\""
	ts_print_chip1 [
		chip: 0x0,
		buffer: 0x1,
	]
	.string " "
	ts_print_code [
		code: 0x0,
		buffer: 0x2,
	]
	.string "\"!!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_flag_clear flag=0xF5
	ts_wait frames=0x6
	ts_position_text [
		left: 0x33,
		top: 0x6C,
		arrowDistance: 0x3,
	]
	.string "Try again?\n"
	ts_position_option_horizontal width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0x11, 0xFF
	ts_start_chip_trader [
		amount: 0x1,
		jumpIfNotEnoughChips: TextScriptChipTrader86C580C_unk16_id,
	]
	ts_wait_hold unused=0x0

	def_text_script TextScriptChipTrader86C580C_unk16
	ts_check_flag [
		flag: 0x171D,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: TextScriptChipTrader86C580C_unk25_id,
	]
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: TextScriptChipTrader86C580C_unk25_id,
		jumpIfElecMan: TextScriptChipTrader86C580C_unk25_id,
		jumpIfSlashMan: TextScriptChipTrader86C580C_unk25_id,
		jumpIfEraseMan: TextScriptChipTrader86C580C_unk25_id,
		jumpIfChargeMan: TextScriptChipTrader86C580C_unk25_id,
		jumpIfSpoutMan: TextScriptChipTrader86C580C_unk25_id,
		jumpIfTomahawkMan: TextScriptChipTrader86C580C_unk25_id,
		jumpIfTenguMan: TextScriptChipTrader86C580C_unk25_id,
		jumpIfGroundMan: TextScriptChipTrader86C580C_unk25_id,
		jumpIfDustMan: TextScriptChipTrader86C580C_unk25_id,
		jumpIfProtoMan: TS_CONTINUE,
	]
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Too bad,Lan. We\n"
	.string "don't have 10\n"
	.string "BugFrags!"
	ts_key_wait any=0x0
	ts_msg_close
	ts_wait_hold unused=0x0

	def_text_script TextScriptChipTrader86C580C_unk17
	ts_msg_close
	ts_wait_hold unused=0x0

	def_text_script TextScriptChipTrader86C580C_unk18

	def_text_script TextScriptChipTrader86C580C_unk19

	def_text_script TextScriptChipTrader86C580C_unk20
	ts_msg_open
	.string "You don't have 3\n"
	.string "chips in your Pack."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptChipTrader86C580C_unk21
	ts_clear_msg
	ts_msg_open
	.string "You don't have 3\n"
	.string "chips in your Pack."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptChipTrader86C580C_unk22
	ts_msg_open
	.string "You don't have 10\n"
	.string "chips in your Pack."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptChipTrader86C580C_unk23
	ts_clear_msg
	ts_msg_open
	.string "You don't have 10\n"
	.string "chips in your Pack."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptChipTrader86C580C_unk24
	ts_msg_open
	.string "We don't have 10\n"
	.string "BugFrags!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptChipTrader86C580C_unk25
	ts_clear_msg
	ts_msg_open
	.string "We don't have 10\n"
	.string "BugFrags!"
	ts_key_wait any=0x0
	ts_wait_hold unused=0x0

	def_text_script TextScriptChipTrader86C580C_unk26
	ts_msg_open
	.string "You don't have 3\n"
	.string "chips in your Pack."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptChipTrader86C580C_unk27
	ts_msg_open
	.string "You don't have 3\n"
	.string "chips in your Pack."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptChipTrader86C580C_unk28
	ts_msg_open
	.string "We don't have 10\n"
	.string "BugFrags!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptChipTrader86C580C_unk29
	ts_clear_msg
	ts_msg_open
	.string "We don't have 10\n"
	.string "BugFrags!"
	ts_key_wait any=0x0
	ts_wait_hold unused=0x0

	def_text_script TextScriptChipTrader86C580C_unk30
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Add these 3?\n"
	ts_position_option_from_center width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_msg_close_quick
	ts_end

	def_text_script TextScriptChipTrader86C580C_unk31
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Add these 10?\n"
	ts_position_option_from_center width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_msg_close_quick
	ts_end

	def_text_script TextScriptChipTrader86C580C_unk32
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Add these 3?\n"
	ts_position_option_from_center width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_msg_close_quick
	ts_end

	def_text_script TextScriptChipTrader86C580C_unk33
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Add these 3?\n"
	ts_position_option_from_center width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_msg_close_quick
	ts_end

	def_text_script TextScriptChipTrader86C580C_unk34
	ts_clear_msg
	ts_msg_open
	.string "Too bad,Lan. You\n"
	.string "don't have 3\n"
	.string "chips in your Pack."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptChipTrader86C580C_unk35
	ts_clear_msg
	ts_msg_open
	.string "Too bad,Lan. You\n"
	.string "don't have 3\n"
	.string "chips in your Pack."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptChipTrader86C580C_unk36
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Add these 10?\n"
	ts_position_option_from_center width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_msg_close_quick
	ts_end

	def_text_script TextScriptChipTrader86C580C_unk37
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Add these 10?\n"
	ts_position_option_from_center width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_msg_close_quick
	ts_end

	def_text_script TextScriptChipTrader86C580C_unk38
	ts_clear_msg
	ts_msg_open
	.string "Too bad,Lan. You\n"
	.string "don't have 10\n"
	.string "chips in your Pack."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptChipTrader86C580C_unk39
	ts_clear_msg
	ts_msg_open
	.string "Too bad,Lan. You\n"
	.string "don't have 10\n"
	.string "chips in your Pack."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptChipTrader86C580C_unk40
	ts_msg_open
	.string "We don't have 10\n"
	.string "BugFrags!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptChipTrader86C580C_unk41
	ts_msg_open
	.string "We don't have 10\n"
	.string "BugFrags!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptChipTrader86C580C_unk42
	ts_clear_msg
	ts_msg_open
	.string "We don't have 10\n"
	.string "BugFrags!"
	ts_key_wait any=0x0
	ts_wait_hold unused=0x0

	def_text_script TextScriptChipTrader86C580C_unk43
	ts_clear_msg
	ts_msg_open
	.string "We don't have 10\n"
	.string "BugFrags!"
	ts_key_wait any=0x0
	ts_wait_hold unused=0x0

	def_text_script TextScriptChipTrader86C580C_unk44
	ts_msg_open
	.string "You don't have 10\n"
	.string "chips in your Pack."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptChipTrader86C580C_unk45
	ts_msg_open
	.string "You don't have 10\n"
	.string "chips in your Pack."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptChipTrader86C580C_unk46

	def_text_script TextScriptChipTrader86C580C_unk47

	def_text_script TextScriptChipTrader86C580C_unk48

	def_text_script TextScriptChipTrader86C580C_unk49

	def_text_script TextScriptChipTrader86C580C_unk50
	ts_mugshot_show mugshot=0x35
	ts_msg_open
	.string "I am Otenko."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I have traveled the\n"
	.string "depths of space."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I have arrived to\n"
	.string "exchange your\n"
	.string "Crossover Points!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Add your points?\n"
	ts_position_option_horizontal width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0x34, 0xFF

	def_text_script TextScriptChipTrader86C580C_unk51
	ts_call_disable_mugshot_brighten
	ts_mugshot_show mugshot=0x35
	ts_msg_open_quick
	.string "Add your points?\n"
	ts_space count=0x8
	ts_option [
		brackets: 0x1,
		right: 0x0,
		left: 0x0,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	ts_menu_option_crossover_trader char=0x0
	.string "1"
	ts_space_px count=0x1
	ts_menu_option_crossover_trader char=0x1
	.string "0\n"
	.string "(U/D:Change points)"
	ts_flag_set flag=0x1725
	ts_menu_select_crossover_trader
	ts_wait_hold unused=0x0

	def_text_script TextScriptChipTrader86C580C_unk52
	ts_call_disable_mugshot_brighten
	ts_mugshot_show mugshot=0x35
	ts_msg_open_quick
	.string "Very well.\n"
	.string "Come again!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The Sun will rise\n"
	.string "tomorrow!"
	ts_key_wait any=0x0
	ts_wait_hold unused=0x0

	def_text_script TextScriptChipTrader86C580C_unk53
	ts_call_disable_mugshot_brighten
	ts_mugshot_show mugshot=0x35
	ts_msg_open_quick
	ts_print_buffer03 [
		minLength: 0x2,
		padZeros: 0x0,
		padLeft: 0x1,
		buffer: 0x1,
	]
	.string " points?\n"
	ts_position_option_horizontal width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0x34, 0xFF
	ts_wait_hold unused=0x0

	def_text_script TextScriptChipTrader86C580C_unk54
	ts_call_disable_mugshot_brighten
	ts_mugshot_show mugshot=0x35
	ts_msg_open_quick
	.string "You don't have\n"
	.string "enough points!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptChipTrader86C580C_unk55
	ts_msg_open_quick
	ts_flag_set flag=0xF6
	ts_control_lock
	ts_wait frames=0x3C
	ts_control_unlock
	ts_player_animate_scene animation=0x18
	ts_sound_play00 track=0x73
	ts_flag_set flag=0xF5
	ts_position_text [
		left: 0x5B,
		top: 0x6C,
		arrowDistance: 0x3,
	]
	ts_position_arrow [
		left: 0xE2,
		top: 0x8D,
	]
	ts_print_current_navi_ow
	.string " got:\n"
	.string "\""
	ts_print_chip1 [
		chip: 0x0,
		buffer: 0x1,
	]
	.string " "
	ts_print_code [
		code: 0x0,
		buffer: 0x2,
	]
	.string "\"!!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_flag_clear flag=0xF5
	ts_wait frames=0x6
	ts_position_text [
		left: 0x33,
		top: 0x6C,
		arrowDistance: 0x3,
	]
	ts_mugshot_show mugshot=0x35
	.string "Try again?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0x34, 0xFF
	ts_wait_hold unused=0x0

	def_text_script TextScriptChipTrader86C580C_unk56
	ts_msg_open_quick
	ts_control_lock
	ts_wait frames=0x3C
	ts_control_unlock
	ts_player_animate_scene animation=0x18
	ts_sound_play00 track=0x73
	ts_print_current_navi_ow
	.string " got:\n"
	.string "\""
	ts_print_chip1 [
		chip: 0x0,
		buffer: 0x1,
	]
	.string " "
	ts_print_code [
		code: 0x0,
		buffer: 0x2,
	]
	.string "\"!!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_position_text [
		left: 0x33,
		top: 0x6C,
		arrowDistance: 0x3,
	]
	ts_mugshot_show mugshot=0x35
	.string "Try again?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0x34, 0xFF
	ts_wait_hold unused=0x0

	def_text_script TextScriptChipTrader86C580C_unk57
	ts_msg_open_quick
	ts_control_lock
	ts_wait frames=0x3C
	ts_control_unlock
	ts_player_animate_scene animation=0x18
	ts_sound_play00 track=0x73
	ts_print_current_navi_ow
	.string " got:\n"
	ts_print_buffer03 [
		minLength: 0x0,
		padZeros: 0x0,
		padLeft: 0x0,
		buffer: 0x3,
	]
	.string " BugFrags!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_position_text [
		left: 0x33,
		top: 0x6C,
		arrowDistance: 0x3,
	]
	ts_mugshot_show mugshot=0x35
	.string "Try again?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0x34, 0xFF
	ts_wait_hold unused=0x0

	def_text_script TextScriptChipTrader86C580C_unk58
	ts_msg_open_quick
	ts_flag_set flag=0xF6
	ts_control_lock
	ts_wait frames=0x3C
	ts_control_unlock
	ts_player_animate_scene animation=0x18
	ts_sound_play00 track=0x73
	ts_flag_set flag=0xF5
	ts_position_text [
		left: 0x5B,
		top: 0x6C,
		arrowDistance: 0x3,
	]
	ts_position_arrow [
		left: 0xE2,
		top: 0x8D,
	]
	.string "ProtoMan got:\n"
	.string "\""
	ts_print_chip1 [
		chip: 0x0,
		buffer: 0x1,
	]
	.string " "
	ts_print_code [
		code: 0x0,
		buffer: 0x2,
	]
	.string "\"!!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_flag_clear flag=0xF5
	ts_wait frames=0x6
	ts_position_text [
		left: 0x33,
		top: 0x6C,
		arrowDistance: 0x3,
	]
	ts_mugshot_show mugshot=0x35
	.string "Try again?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0x34, 0xFF
	ts_wait_hold unused=0x0

	def_text_script TextScriptChipTrader86C580C_unk59
	ts_msg_open_quick
	ts_control_lock
	ts_wait frames=0x3C
	ts_control_unlock
	ts_player_animate_scene animation=0x18
	ts_sound_play00 track=0x73
	.string "ProtoMan got a\n"
	.string "SubChip:\n"
	.string "\""
	ts_print_item [
		item: 0x0,
		buffer: 0x1,
	]
	.string "\"!!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_position_text [
		left: 0x33,
		top: 0x6C,
		arrowDistance: 0x3,
	]
	ts_mugshot_show mugshot=0x35
	.string "Try again?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0x34, 0xFF
	ts_wait_hold unused=0x0

	def_text_script TextScriptChipTrader86C580C_unk60
	ts_msg_open_quick
	ts_control_lock
	ts_wait frames=0x3C
	ts_control_unlock
	ts_player_animate_scene animation=0x18
	ts_sound_play00 track=0x73
	.string "ProtoMan got:\n"
	ts_print_buffer03 [
		minLength: 0x1,
		padZeros: 0x0,
		padLeft: 0x1,
		buffer: 0x1,
	]
	.string " BugFrags!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_position_text [
		left: 0x33,
		top: 0x6C,
		arrowDistance: 0x3,
	]
	ts_mugshot_show mugshot=0x35
	.string "Try again?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0x34, 0xFF
	ts_wait_hold unused=0x0

	def_text_script TextScriptChipTrader86C580C_unk61
	ts_msg_open_quick
	ts_flag_set flag=0xF6
	ts_control_lock
	ts_wait frames=0x3C
	ts_control_unlock
	ts_player_animate_scene animation=0x18
	ts_sound_play00 track=0x73
	ts_flag_set flag=0xF5
	ts_position_text [
		left: 0x5B,
		top: 0x6C,
		arrowDistance: 0x3,
	]
	ts_position_arrow [
		left: 0xE2,
		top: 0x8D,
	]
	.string "Colonel got:\n"
	.string "\""
	ts_print_chip1 [
		chip: 0x0,
		buffer: 0x1,
	]
	.string " "
	ts_print_code [
		code: 0x0,
		buffer: 0x2,
	]
	.string "\"!!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_flag_clear flag=0xF5
	ts_wait frames=0x6
	ts_position_text [
		left: 0x33,
		top: 0x6C,
		arrowDistance: 0x3,
	]
	ts_mugshot_show mugshot=0x35
	.string "Try again?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0x34, 0xFF
	ts_wait_hold unused=0x0

	def_text_script TextScriptChipTrader86C580C_unk62
	ts_msg_open_quick
	ts_control_lock
	ts_wait frames=0x3C
	ts_control_unlock
	ts_player_animate_scene animation=0x18
	ts_sound_play00 track=0x73
	.string "Colonel got a\n"
	.string "SubChip:\n"
	.string "\""
	ts_print_item [
		item: 0x0,
		buffer: 0x1,
	]
	.string "\"!!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_position_text [
		left: 0x33,
		top: 0x6C,
		arrowDistance: 0x3,
	]
	ts_mugshot_show mugshot=0x35
	.string "Try again?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0x34, 0xFF
	ts_wait_hold unused=0x0

	def_text_script TextScriptChipTrader86C580C_unk63
	ts_msg_open_quick
	ts_control_lock
	ts_wait frames=0x3C
	ts_control_unlock
	ts_player_animate_scene animation=0x18
	ts_sound_play00 track=0x73
	.string "Colonel got:\n"
	ts_print_buffer03 [
		minLength: 0x1,
		padZeros: 0x0,
		padLeft: 0x1,
		buffer: 0x1,
	]
	.string " BugFrags!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_position_text [
		left: 0x33,
		top: 0x6C,
		arrowDistance: 0x3,
	]
	ts_mugshot_show mugshot=0x35
	.string "Try again?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0x34, 0xFF
	ts_wait_hold unused=0x0

	def_text_script TextScriptChipTrader86C580C_unk64
	.string " "
	ts_clear_msg
	.string " ボ@  "

	.balign 4, 0
