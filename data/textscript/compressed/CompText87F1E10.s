	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87F1E10::
	.word 0x4CF00

	text_archive_start

	def_text_script CompText87F1E10_unk0
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x1C
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "Hey! Have a look!\n"
	.string "R Button:Description\n"
	.string "B Button:Quit"
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F1E10_unk1
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x1C
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "Whaddya like to do?\n"
	.string "R Button:Description\n"
	.string "B Button:Quit"
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F1E10_unk2
	ts_check_flag 0x1D, 0x17, 0xFF, 0x14
	ts_check_navi_all 0xFF, 0x14, 0x14, 0x14, 0x14, 0x14, 0x14, 0x14, 0x14, 0x14, 0x14, 0x14
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "Leaving already?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x40, 0xFF, 0xFF, 0xFF
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F1E10_unk3
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x1C
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "See ya later!"
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F1E10_unk4
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x1C
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "So, you wanna buy\n"
	.string "\""
	ts_print_item 0x0, 0x1
	.string "\" right?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_sound_disable_choice_sfx
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F1E10_unk5
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x1C
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "So, you wanna buy\n"
	.string "\""
	ts_print_chip1 0x0, 0x1
	.string " "
	ts_print_code 0x0, 0x2
	.string "\" right?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_sound_disable_choice_sfx
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F1E10_unk6
	ts_check_flag 0x1D, 0x17, 0xFF, 0x15
	ts_check_navi_all 0xFF, 0x15, 0x15, 0x15, 0x15, 0x15, 0x15, 0x15, 0x15, 0x15, 0x15, 0x15
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "I bought\n"
	.string "\""
	ts_print_item 0x0, 0x1
	.string "\"!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F1E10_unk7
	ts_check_flag 0x1D, 0x17, 0xFF, 0x16
	ts_check_navi_all 0xFF, 0x16, 0x16, 0x16, 0x16, 0x16, 0x16, 0x16, 0x16, 0x16, 0x16, 0x16
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "I bought\n"
	.string "\""
	ts_print_chip1 0x0, 0x1
	.string " "
	ts_print_code 0x0, 0x2
	.string "\"!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F1E10_unk8
	ts_check_flag 0x1D, 0x17, 0xFF, 0x17
	ts_check_navi_all 0xFF, 0x17, 0x17, 0x17, 0x17, 0x17, 0x17, 0x17, 0x17, 0x17, 0x17, 0x17
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "Not enough\n"
	.string "Zennys..."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F1E10_unk9
	ts_check_flag 0x1D, 0x17, 0xFF, 0x18
	ts_check_navi_all 0xFF, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "I can't carry\n"
	.string "any more."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F1E10_unk10
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x1C
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "Sorry,dude! Looks\n"
	.string "like we're sold out!\n"
	.string "Thanks though!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F1E10_unk11
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x1C
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "So, you wanna buy\n"
	.string "\""
	ts_print_chip1 0x0, 0x1
	.string " "
	ts_print_code 0x0, 0x2
	.string "\" right?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_sound_disable_choice_sfx
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F1E10_unk12
	ts_check_flag 0x1D, 0x17, 0xFF, 0x19
	ts_check_navi_all 0xFF, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "I bought\n"
	.string "\""
	ts_print_navi_cust_program5 0x0, 0x1
	.string "\"!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F1E10_unk13
	ts_clear_msg
	.string " ボ$"

	def_text_script CompText87F1E10_unk14
	ts_clear_msg
	.string " ボ[z]$"

	def_text_script CompText87F1E10_unk15
	ts_clear_msg
	.string " ボ[z]$"

	def_text_script CompText87F1E10_unk16
	ts_end

	def_text_script CompText87F1E10_unk17
	.string "-------$"

	def_text_script CompText87F1E10_unk18
	ts_clear_msg
	.string " ダ$"

	def_text_script CompText87F1E10_unk19

	def_text_script CompText87F1E10_unk20
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x0
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "Time to leave?\n"
	ts_position_option_horizontal 0xB
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string "Exit  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string "Keep Looking"
	ts_select 0x6, 0x40, 0xFF, 0xFF, 0xFF
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F1E10_unk21
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x0
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "I bought a new item!\n"
	.string "\""
	ts_print_item 0x0, 0x1
	.string "\"!!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F1E10_unk22
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x0
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "I bought a new chip!\n"
	.string "\""
	ts_print_chip1 0x0, 0x1
	.string " "
	ts_print_code 0x0, 0x2
	.string "\"!!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F1E10_unk23
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x0
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "Oops! I don't have\n"
	.string "enough Zennys!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F1E10_unk24
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x0
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "Yikes! I can't carry\n"
	.string "any more!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F1E10_unk25
	ts_call_disable_mugshot_brighten
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "I bought a program!\n"
	.string "\""
	ts_print_navi_cust_program5 0x0, 0x1
	.string "\"!!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F1E10_unk26

	def_text_script CompText87F1E10_unk27

	def_text_script CompText87F1E10_unk28

	def_text_script CompText87F1E10_unk29

	