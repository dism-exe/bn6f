	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8746D34::
	.word 0x10800

	text_archive_start

	def_text_script CompText8746D34_unk0
	ts_check_chapter 0x33, 0x33, 0x1, 0xFF
	ts_jump 3

	def_text_script CompText8746D34_unk1
	ts_check_flag 0x2E, 0x8, 0x3, 0xFF
	ts_check_sub_area 0x2, 0x2, 0x7, 0xFF
	ts_check_sub_area 0x1, 0x1, 0x6, 0xFF
	ts_check_sub_area 0x0, 0x0, 0x5, 0xFF
	ts_end

	def_text_script CompText8746D34_unk2
	ts_flag_set 0xD4, 0x9
	ts_end

	def_text_script CompText8746D34_unk3
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Things don't look\n"
	.string "too damaged from the\n"
	.string "JudgeMan incident..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8746D34_unk4
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Want to take a look\n"
	.string "around,MegaMan!?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0x2, 0xFF, 0xFF
	ts_end

	def_text_script CompText8746D34_unk5
	ts_check_flag 0xDA, 0x9, 0x8, 0xFF
	ts_jump 4
	ts_end

	def_text_script CompText8746D34_unk6
	ts_check_flag 0xDB, 0x9, 0x8, 0xFF
	ts_jump 4
	ts_end

	def_text_script CompText8746D34_unk7
	ts_check_flag 0xDC, 0x9, 0x8, 0xFF
	ts_jump 4
	ts_end

	def_text_script CompText8746D34_unk8
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's move on,\n"
	.string "MegaMan!"
	ts_key_wait 0x0
	ts_end

	