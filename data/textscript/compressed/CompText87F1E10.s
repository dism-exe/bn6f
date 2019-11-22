	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87F1E10::
	.word 0x4CF00

	text_archive_start

	def_text_script CompText87F1E10_unk0
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x1C,
	]
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "Hey! Have a look!\n"
	.string "R Button:Description\n"
	.string "B Button:Quit"
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText87F1E10_unk1
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x1C,
	]
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "Whaddya like to do?\n"
	.string "R Button:Description\n"
	.string "B Button:Quit"
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText87F1E10_unk2
	ts_check_flag [
		flag: 0x171D,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x14,
	]
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0x14,
		jumpIfElecMan: 0x14,
		jumpIfSlashMan: 0x14,
		jumpIfEraseMan: 0x14,
		jumpIfChargeMan: 0x14,
		jumpIfSpoutMan: 0x14,
		jumpIfTomahawkMan: 0x14,
		jumpIfTenguMan: 0x14,
		jumpIfGroundMan: 0x14,
		jumpIfDustMan: 0x14,
		jumpIfProtoMan: 0x14,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "Leaving already?\n"
	ts_position_option_horizontal [
		width: 0x8,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " No"
	ts_select 0x6, 0x40, 0xFF, 0xFF, 0xFF
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText87F1E10_unk3
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x1C,
	]
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "See ya later!"
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText87F1E10_unk4
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x1C,
	]
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "So, you wanna buy\n"
	.string "\""
	ts_print_item [
		item: 0x0,
		buffer: 0x1,
	]
	.string "\" right?\n"
	ts_position_option_horizontal [
		width: 0x8,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " No"
	ts_sound_disable_choice_sfx
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText87F1E10_unk5
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x1C,
	]
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "So, you wanna buy\n"
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
	.string "\" right?\n"
	ts_position_option_horizontal [
		width: 0x8,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " No"
	ts_sound_disable_choice_sfx
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText87F1E10_unk6
	ts_check_flag [
		flag: 0x171D,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x15,
	]
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0x15,
		jumpIfElecMan: 0x15,
		jumpIfSlashMan: 0x15,
		jumpIfEraseMan: 0x15,
		jumpIfChargeMan: 0x15,
		jumpIfSpoutMan: 0x15,
		jumpIfTomahawkMan: 0x15,
		jumpIfTenguMan: 0x15,
		jumpIfGroundMan: 0x15,
		jumpIfDustMan: 0x15,
		jumpIfProtoMan: 0x15,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "I bought\n"
	.string "\""
	ts_print_item [
		item: 0x0,
		buffer: 0x1,
	]
	.string "\"!"
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText87F1E10_unk7
	ts_check_flag [
		flag: 0x171D,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x16,
	]
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0x16,
		jumpIfElecMan: 0x16,
		jumpIfSlashMan: 0x16,
		jumpIfEraseMan: 0x16,
		jumpIfChargeMan: 0x16,
		jumpIfSpoutMan: 0x16,
		jumpIfTomahawkMan: 0x16,
		jumpIfTenguMan: 0x16,
		jumpIfGroundMan: 0x16,
		jumpIfDustMan: 0x16,
		jumpIfProtoMan: 0x16,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "I bought\n"
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
	.string "\"!"
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText87F1E10_unk8
	ts_check_flag [
		flag: 0x171D,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x17,
	]
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0x17,
		jumpIfElecMan: 0x17,
		jumpIfSlashMan: 0x17,
		jumpIfEraseMan: 0x17,
		jumpIfChargeMan: 0x17,
		jumpIfSpoutMan: 0x17,
		jumpIfTomahawkMan: 0x17,
		jumpIfTenguMan: 0x17,
		jumpIfGroundMan: 0x17,
		jumpIfDustMan: 0x17,
		jumpIfProtoMan: 0x17,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "Not enough\n"
	.string "Zennys..."
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText87F1E10_unk9
	ts_check_flag [
		flag: 0x171D,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x18,
	]
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0x18,
		jumpIfElecMan: 0x18,
		jumpIfSlashMan: 0x18,
		jumpIfEraseMan: 0x18,
		jumpIfChargeMan: 0x18,
		jumpIfSpoutMan: 0x18,
		jumpIfTomahawkMan: 0x18,
		jumpIfTenguMan: 0x18,
		jumpIfGroundMan: 0x18,
		jumpIfDustMan: 0x18,
		jumpIfProtoMan: 0x18,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "I can't carry\n"
	.string "any more."
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText87F1E10_unk10
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x1C,
	]
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "Sorry,dude! Looks\n"
	.string "like we're sold out!\n"
	.string "Thanks though!"
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText87F1E10_unk11
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x1C,
	]
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "So, you wanna buy\n"
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
	.string "\" right?\n"
	ts_position_option_horizontal [
		width: 0x8,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " No"
	ts_sound_disable_choice_sfx
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText87F1E10_unk12
	ts_check_flag [
		flag: 0x171D,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x19,
	]
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0x19,
		jumpIfElecMan: 0x19,
		jumpIfSlashMan: 0x19,
		jumpIfEraseMan: 0x19,
		jumpIfChargeMan: 0x19,
		jumpIfSpoutMan: 0x19,
		jumpIfTomahawkMan: 0x19,
		jumpIfTenguMan: 0x19,
		jumpIfGroundMan: 0x19,
		jumpIfDustMan: 0x19,
		jumpIfProtoMan: 0x19,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "I bought\n"
	.string "\""
	ts_print_navi_cust_program5 [
		program: 0x0,
		buffer: 0x1,
	]
	.string "\"!"
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText87F1E10_unk13
	ts_clear_msg
	.string " ボ@"

	def_text_script CompText87F1E10_unk14
	ts_clear_msg
	.string " ボ[z]@"

	def_text_script CompText87F1E10_unk15
	ts_clear_msg
	.string " ボ[z]@"

	def_text_script CompText87F1E10_unk16
	ts_end

	def_text_script CompText87F1E10_unk17
	.string "-------@"

	def_text_script CompText87F1E10_unk18
	ts_clear_msg
	.string " ダ@"

	def_text_script CompText87F1E10_unk19

	def_text_script CompText87F1E10_unk20
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "Time to leave?\n"
	ts_position_option_horizontal [
		width: 0xB,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string "Exit  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string "Keep Looking"
	ts_select 0x6, 0x40, 0xFF, 0xFF, 0xFF
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText87F1E10_unk21
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "I bought a new item!\n"
	.string "\""
	ts_print_item [
		item: 0x0,
		buffer: 0x1,
	]
	.string "\"!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText87F1E10_unk22
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "I bought a new chip!\n"
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
	.string "\"!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText87F1E10_unk23
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "Oops! I don't have\n"
	.string "enough Zennys!"
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText87F1E10_unk24
	ts_call_disable_mugshot_brighten
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "Yikes! I can't carry\n"
	.string "any more!"
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText87F1E10_unk25
	ts_call_disable_mugshot_brighten
	ts_msg_open_quick
	ts_text_speed [
		delay: 0x0,
	]
	.string "I bought a program!\n"
	.string "\""
	ts_print_navi_cust_program5 [
		program: 0x0,
		buffer: 0x1,
	]
	.string "\"!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText87F1E10_unk26

	def_text_script CompText87F1E10_unk27

	def_text_script CompText87F1E10_unk28

	def_text_script CompText87F1E10_unk29

	