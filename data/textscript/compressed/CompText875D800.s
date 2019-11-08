	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875D800::
	.word 0x1A500

	text_archive_start

	def_text_script CompText875D800_unk0
	ts_msg_open
	.string "Raging flames block\n"
	.string "the way."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "We have to stop the\n"
	.string "fire inside the\n"
	.string "computer to get rid"
	ts_key_wait 0x0
	ts_clear_msg
	.string "of these flames!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875D800_unk1
	ts_check_flag 0x1B, 0x8, 0xFF, 0x2
	ts_check_flag 0x1C, 0x8, 0xFF, 0x3
	ts_jump 2

	def_text_script CompText875D800_unk2
	ts_msg_open
	.string "It's the main system\n"
	.string "that controls all\n"
	.string "the Security Bots."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875D800_unk3
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "the video data that\n"
	.string "Security Bot took\n"
	.string "should be here."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Well then,MegaMan,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "it's up to you to\n"
	.string "find the data of\n"
	.string "what that Security"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Bot saw at 4 P.M.\n"
	.string "yesterday from\n"
	.string "inside that closet."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Roger!"
	ts_key_wait 0x0
	ts_flag_set 0x7A, 0x8
	ts_end

	