	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87F0DA0::
	.word 0x46D00

	text_archive_start

	def_text_script CompText87F0DA0_unk0
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x3E
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "Welcome!\n"
	.string "R Button:Description\n"
	.string "B Button:Quit"
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F0DA0_unk1
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x3E
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "How can I help you?\n"
	.string "R Button:Description\n"
	.string "B Button:Quit"
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F0DA0_unk2
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

	def_text_script CompText87F0DA0_unk3
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x3E
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "Please come again!"
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F0DA0_unk4
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x3E
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "\""
	ts_print_item 0x0, 0x1
	.string "\"?\n"
	.string "Are you sure?\n"
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

	def_text_script CompText87F0DA0_unk5
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x3E
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "\""
	ts_print_chip1 0x0, 0x1
	.string " "
	ts_print_code 0x0, 0x2
	.string "\"?\n"
	.string "Are you sure?\n"
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

	def_text_script CompText87F0DA0_unk6
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

	def_text_script CompText87F0DA0_unk7
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

	def_text_script CompText87F0DA0_unk8
	ts_check_navi_all 0xFF, 0x17, 0x17, 0x17, 0x17, 0x17, 0x17, 0x17, 0x17, 0x17, 0x17, 0x17
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "Not enough\n"
	.string "Zennys..."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F0DA0_unk9
	ts_check_navi_all 0xFF, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "I can't carry\n"
	.string "any more."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F0DA0_unk10
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x3E
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "We're all\n"
	.string "sold out!\n"
	.string "Thank you!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F0DA0_unk11
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x3E
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "\""
	ts_print_navi_cust_program5 0x0, 0x1
	.string "\"?\n"
	.string "Are you sure?\n"
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

	def_text_script CompText87F0DA0_unk12
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

	def_text_script CompText87F0DA0_unk13
	ts_clear_msg
	.string " ボ$"

	def_text_script CompText87F0DA0_unk14
	ts_clear_msg
	.string " ボ[z]$"

	def_text_script CompText87F0DA0_unk15
	ts_clear_msg
	.string " ボ[z]$"

	def_text_script CompText87F0DA0_unk16
	ts_end

	def_text_script CompText87F0DA0_unk17
	.string "-------$"

	def_text_script CompText87F0DA0_unk18
	ts_clear_msg
	.string " ダ$"

	def_text_script CompText87F0DA0_unk19

	def_text_script CompText87F0DA0_unk20
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

	def_text_script CompText87F0DA0_unk21
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

	def_text_script CompText87F0DA0_unk22
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

	def_text_script CompText87F0DA0_unk23
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x0
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "Oops! I don't have\n"
	.string "enough Zennys!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F0DA0_unk24
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x0
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "Yikes! I can't carry\n"
	.string "any more!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F0DA0_unk25
	ts_call_disable_mugshot_brighten
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "I bought a program!\n"
	.string "\""
	ts_print_navi_cust_program5 0x0, 0x1
	.string "\"!!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	