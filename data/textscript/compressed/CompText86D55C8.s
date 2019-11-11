	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText86D55C8::
	.word 0x23C00

	text_archive_start

	def_text_script CompText86D55C8_unk0
	ts_position_text 0x33, 0x44, 0x3
	ts_position_arrow 0xE2, 0x65
	ts_position_box 0x0, 0x7, 0x0
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	ts_position_mugshot 0x19, 0x58
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	.string "Quit programming\n"
	.string "and return to menu?\n"
	ts_position_option_from_center 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x1, 0xFF, 0xFF, 0xFF
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D55C8_unk1
	ts_position_text 0x33, 0x44, 0x3
	ts_position_arrow 0xE2, 0x65
	ts_position_box 0x0, 0x7, 0x0
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	ts_position_mugshot 0x19, 0x58
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x0
	.string "OK!\n"
	.string "RUN complete!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_check_flag 0x20, 0x17, 0x3, 0x2

	def_text_script CompText86D55C8_unk2
	ts_position_text 0x33, 0x44, 0x3
	ts_position_arrow 0xE2, 0x65
	ts_position_box 0x0, 0x7, 0x0
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	ts_position_mugshot 0x19, 0x58
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	.string "Good job,Lan!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Quit the Navi\n"
	.string "Customizer?\n"
	ts_position_option_from_center 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D55C8_unk3
	ts_position_text 0x33, 0x44, 0x3
	ts_position_arrow 0xE2, 0x65
	ts_position_box 0x0, 0x7, 0x0
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	ts_position_mugshot 0x19, 0x58
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	.string "Good job,Lan!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Quit the Navi\n"
	.string "Customizer?\n"
	ts_position_option_from_center 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D55C8_unk4
	ts_position_text 0x33, 0x44, 0x3
	ts_position_arrow 0xE2, 0x65
	ts_position_box 0x0, 0x7, 0x0
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	ts_position_mugshot 0x19, 0x58
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	.string "Remove all\n"
	.string "programs?\n"
	ts_position_option_from_center 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x1, 0xFF, 0xFF, 0xFF
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D55C8_unk5
	ts_position_text 0x33, 0x44, 0x3
	ts_position_arrow 0xE2, 0x65
	ts_position_box 0x0, 0x7, 0x0
	ts_msg_open_menu_quick
	ts_text_speed 0x0
	ts_position_mugshot 0x19, 0x58
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	.string "You can't remove\n"
	.string "this program in the\n"
	.string "Cyberworld."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D55C8_unk6

	def_text_script CompText86D55C8_unk7

	def_text_script CompText86D55C8_unk8

	def_text_script CompText86D55C8_unk9

	def_text_script CompText86D55C8_unk10
	.string "RUN...$"

	def_text_script CompText86D55C8_unk11
	.string "OK$"

	