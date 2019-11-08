	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText878205C::
	.word 0x17400

	text_archive_start

	def_text_script CompText878205C_unk0
	ts_check_navi_all 0xFF, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,\n"
	.string "this is it!\n"
	.string "The final battle!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Once you go through\n"
	.string "the door,you can't\n"
	.string "save. Are you ready?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0x1, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Let's go Lan!!"
	ts_key_wait 0x0
	ts_flag_set 0x26, 0x17
	ts_flag_set 0x69, 0xE
	ts_end

	def_text_script CompText878205C_unk1
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Gotcha!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Once you're done\n"
	.string "getting ready,we'll\n"
	.string "head off!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878205C_unk2
	ts_mugshot_show 0x0
	ts_msg_open
	.string "What's going on?\n"
	.string "I feel so nervous..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "...\n"
	.string "Yeah..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The only one I can\n"
	.string "trust with my life\n"
	.string "is MegaMan!!"
	ts_key_wait 0x0
	ts_end

	