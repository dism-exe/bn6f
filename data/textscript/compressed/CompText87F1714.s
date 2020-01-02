	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87F1714::
	.word 0x47400

	text_archive_start

	def_text_script CompText87F1714_unk0
	ts_call_disable_mugshot_brighten
	ts_mugshot_show mugshot=0x3F
	ts_msg_open_quick
	ts_text_speed delay=0x0
	.string "Welcome!\n"
	.string "R Button:Description\n"
	.string "B Button:Quit"
	ts_wait_hold unused=0x0

	def_text_script CompText87F1714_unk1
	ts_call_disable_mugshot_brighten
	ts_mugshot_show mugshot=0x3F
	ts_msg_open_quick
	ts_text_speed delay=0x0
	.string "How can I help you?\n"
	.string "R Button:Description\n"
	.string "B Button:Quit"
	ts_wait_hold unused=0x0

	def_text_script CompText87F1714_unk2
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: CompText87F1714_unk20_id,
		jumpIfElecMan: CompText87F1714_unk20_id,
		jumpIfSlashMan: CompText87F1714_unk20_id,
		jumpIfEraseMan: CompText87F1714_unk20_id,
		jumpIfChargeMan: CompText87F1714_unk20_id,
		jumpIfSpoutMan: CompText87F1714_unk20_id,
		jumpIfTomahawkMan: CompText87F1714_unk20_id,
		jumpIfTenguMan: CompText87F1714_unk20_id,
		jumpIfGroundMan: CompText87F1714_unk20_id,
		jumpIfDustMan: CompText87F1714_unk20_id,
		jumpIfProtoMan: CompText87F1714_unk20_id,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show mugshot=0x37
	ts_msg_open_quick
	ts_text_speed delay=0x0
	.string "Leaving already?\n"
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
	ts_select 0x6, 0x40, 0xFF, 0xFF, 0xFF
	ts_wait_hold unused=0x0

	def_text_script CompText87F1714_unk3
	ts_call_disable_mugshot_brighten
	ts_mugshot_show mugshot=0x3F
	ts_msg_open_quick
	ts_text_speed delay=0x0
	.string "Come again!"
	ts_wait_hold unused=0x0

	def_text_script CompText87F1714_unk4
	ts_call_disable_mugshot_brighten
	ts_mugshot_show mugshot=0x3F
	ts_msg_open_quick
	ts_text_speed delay=0x0
	.string "\""
	ts_print_item [
		item: 0x0,
		buffer: 0x1,
	]
	.string "\"?\n"
	.string "Are you sure?\n"
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
	ts_sound_disable_choice_sfx
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_wait_hold unused=0x0

	def_text_script CompText87F1714_unk5
	ts_call_disable_mugshot_brighten
	ts_mugshot_show mugshot=0x3F
	ts_msg_open_quick
	ts_text_speed delay=0x0
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
	.string "\"?\n"
	.string "Are you sure?\n"
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
	ts_sound_disable_choice_sfx
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_wait_hold unused=0x0

	def_text_script CompText87F1714_unk6
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: CompText87F1714_unk21_id,
		jumpIfElecMan: CompText87F1714_unk21_id,
		jumpIfSlashMan: CompText87F1714_unk21_id,
		jumpIfEraseMan: CompText87F1714_unk21_id,
		jumpIfChargeMan: CompText87F1714_unk21_id,
		jumpIfSpoutMan: CompText87F1714_unk21_id,
		jumpIfTomahawkMan: CompText87F1714_unk21_id,
		jumpIfTenguMan: CompText87F1714_unk21_id,
		jumpIfGroundMan: CompText87F1714_unk21_id,
		jumpIfDustMan: CompText87F1714_unk21_id,
		jumpIfProtoMan: CompText87F1714_unk21_id,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show mugshot=0x37
	ts_msg_open_quick
	ts_text_speed delay=0x0
	.string "I bought\n"
	.string "\""
	ts_print_item [
		item: 0x0,
		buffer: 0x1,
	]
	.string "\"!"
	ts_key_wait any=0x0
	ts_wait_hold unused=0x0

	def_text_script CompText87F1714_unk7
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: CompText87F1714_unk22_id,
		jumpIfElecMan: CompText87F1714_unk22_id,
		jumpIfSlashMan: CompText87F1714_unk22_id,
		jumpIfEraseMan: CompText87F1714_unk22_id,
		jumpIfChargeMan: CompText87F1714_unk22_id,
		jumpIfSpoutMan: CompText87F1714_unk22_id,
		jumpIfTomahawkMan: CompText87F1714_unk22_id,
		jumpIfTenguMan: CompText87F1714_unk22_id,
		jumpIfGroundMan: CompText87F1714_unk22_id,
		jumpIfDustMan: CompText87F1714_unk22_id,
		jumpIfProtoMan: CompText87F1714_unk22_id,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show mugshot=0x37
	ts_msg_open_quick
	ts_text_speed delay=0x0
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
	ts_key_wait any=0x0
	ts_wait_hold unused=0x0

	def_text_script CompText87F1714_unk8
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: CompText87F1714_unk23_id,
		jumpIfElecMan: CompText87F1714_unk23_id,
		jumpIfSlashMan: CompText87F1714_unk23_id,
		jumpIfEraseMan: CompText87F1714_unk23_id,
		jumpIfChargeMan: CompText87F1714_unk23_id,
		jumpIfSpoutMan: CompText87F1714_unk23_id,
		jumpIfTomahawkMan: CompText87F1714_unk23_id,
		jumpIfTenguMan: CompText87F1714_unk23_id,
		jumpIfGroundMan: CompText87F1714_unk23_id,
		jumpIfDustMan: CompText87F1714_unk23_id,
		jumpIfProtoMan: CompText87F1714_unk23_id,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show mugshot=0x37
	ts_msg_open_quick
	ts_text_speed delay=0x0
	.string "I don't have\n"
	.string "enough BugFrags."
	ts_key_wait any=0x0
	ts_wait_hold unused=0x0

	def_text_script CompText87F1714_unk9
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: CompText87F1714_unk24_id,
		jumpIfElecMan: CompText87F1714_unk24_id,
		jumpIfSlashMan: CompText87F1714_unk24_id,
		jumpIfEraseMan: CompText87F1714_unk24_id,
		jumpIfChargeMan: CompText87F1714_unk24_id,
		jumpIfSpoutMan: CompText87F1714_unk24_id,
		jumpIfTomahawkMan: CompText87F1714_unk24_id,
		jumpIfTenguMan: CompText87F1714_unk24_id,
		jumpIfGroundMan: CompText87F1714_unk24_id,
		jumpIfDustMan: CompText87F1714_unk24_id,
		jumpIfProtoMan: CompText87F1714_unk24_id,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show mugshot=0x37
	ts_msg_open_quick
	ts_text_speed delay=0x0
	.string "I can't carry\n"
	.string "any more."
	ts_key_wait any=0x0
	ts_wait_hold unused=0x0

	def_text_script CompText87F1714_unk10
	ts_call_disable_mugshot_brighten
	ts_mugshot_show mugshot=0x3F
	ts_msg_open_quick
	ts_text_speed delay=0x0
	.string "We're all\n"
	.string "sold out!\n"
	.string "Thank you!"
	ts_key_wait any=0x0
	ts_wait_hold unused=0x0

	def_text_script CompText87F1714_unk11
	ts_call_disable_mugshot_brighten
	ts_mugshot_show mugshot=0x3F
	ts_msg_open_quick
	ts_text_speed delay=0x0
	.string "\""
	ts_print_navi_cust_program5 [
		program: 0x0,
		buffer: 0x1,
	]
	.string "\"?\n"
	.string "Are you sure?\n"
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
	ts_sound_disable_choice_sfx
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_wait_hold unused=0x0

	def_text_script CompText87F1714_unk12
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: CompText87F1714_unk25_id,
		jumpIfElecMan: CompText87F1714_unk25_id,
		jumpIfSlashMan: CompText87F1714_unk25_id,
		jumpIfEraseMan: CompText87F1714_unk25_id,
		jumpIfChargeMan: CompText87F1714_unk25_id,
		jumpIfSpoutMan: CompText87F1714_unk25_id,
		jumpIfTomahawkMan: CompText87F1714_unk25_id,
		jumpIfTenguMan: CompText87F1714_unk25_id,
		jumpIfGroundMan: CompText87F1714_unk25_id,
		jumpIfDustMan: CompText87F1714_unk25_id,
		jumpIfProtoMan: CompText87F1714_unk25_id,
	]
	ts_call_disable_mugshot_brighten
	ts_mugshot_show mugshot=0x37
	ts_msg_open_quick
	ts_text_speed delay=0x0
	.string "I bought\n"
	.string "\""
	ts_print_navi_cust_program5 [
		program: 0x0,
		buffer: 0x1,
	]
	.string "\"!"
	ts_key_wait any=0x0
	ts_wait_hold unused=0x0

	def_text_script CompText87F1714_unk13
	ts_clear_msg
	.string " ボ@"

	def_text_script CompText87F1714_unk14
	ts_clear_msg
	.string " ボ[z]@"

	def_text_script CompText87F1714_unk15
	ts_clear_msg
	.string " ボ[z]@"

	def_text_script CompText87F1714_unk16
	ts_end

	def_text_script CompText87F1714_unk17
	.string "-------@"

	def_text_script CompText87F1714_unk18
	ts_clear_msg
	.string " ダ@"

	def_text_script CompText87F1714_unk19

	def_text_script CompText87F1714_unk20
	ts_call_disable_mugshot_brighten
	ts_mugshot_show mugshot=0x0
	ts_msg_open_quick
	ts_text_speed delay=0x0
	.string "Time to leave?\n"
	ts_position_option_horizontal width=0xB
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string "Exit  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string "Keep Looking"
	ts_select 0x6, 0x40, 0xFF, 0xFF, 0xFF
	ts_wait_hold unused=0x0

	def_text_script CompText87F1714_unk21
	ts_call_disable_mugshot_brighten
	ts_mugshot_show mugshot=0x0
	ts_msg_open_quick
	ts_text_speed delay=0x0
	.string "I bought a new item!\n"
	.string "\""
	ts_print_item [
		item: 0x0,
		buffer: 0x1,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_wait_hold unused=0x0

	def_text_script CompText87F1714_unk22
	ts_call_disable_mugshot_brighten
	ts_mugshot_show mugshot=0x0
	ts_msg_open_quick
	ts_text_speed delay=0x0
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
	ts_key_wait any=0x0
	ts_wait_hold unused=0x0

	def_text_script CompText87F1714_unk23
	ts_call_disable_mugshot_brighten
	ts_mugshot_show mugshot=0x0
	ts_msg_open_quick
	ts_text_speed delay=0x0
	.string "Oops! I don't have\n"
	.string "enough BugFrags!"
	ts_key_wait any=0x0
	ts_wait_hold unused=0x0

	def_text_script CompText87F1714_unk24
	ts_call_disable_mugshot_brighten
	ts_mugshot_show mugshot=0x0
	ts_msg_open_quick
	ts_text_speed delay=0x0
	.string "Yikes! I can't carry\n"
	.string "any more!"
	ts_key_wait any=0x0
	ts_wait_hold unused=0x0

	def_text_script CompText87F1714_unk25
	ts_call_disable_mugshot_brighten
	ts_mugshot_show mugshot=0x0
	ts_msg_open_quick
	ts_text_speed delay=0x0
	.string "I bought a program!\n"
	.string "\""
	ts_print_navi_cust_program5 [
		program: 0x0,
		buffer: 0x1,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_wait_hold unused=0x0

	def_text_script CompText87F1714_unk26

	def_text_script CompText87F1714_unk27

	def_text_script CompText87F1714_unk28

	def_text_script CompText87F1714_unk29

	