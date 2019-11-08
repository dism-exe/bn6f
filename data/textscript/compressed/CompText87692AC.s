	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87692AC::
	.word 0x16D00

	text_archive_start

	def_text_script CompText87692AC_unk0
	ts_check_flag 0x8, 0x5, 0x1, 0xFF
	ts_check_flag 0x5B, 0x5, 0x2, 0xFF
	ts_mugshot_show 0x6
	ts_msg_open
	.string "This sure is a\n"
	.string "problem."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Mom,what's wrong?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x6
	.string "The toilet\n"
	.string "broke,and even"
	ts_key_wait 0x0
	ts_clear_msg
	.string "though a repairman\n"
	.string "came to fix it,it\n"
	.string "just broke again!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "A repairman...?\n"
	.string "Came to fix it?\n"
	.string "Is that the..."
	ts_key_wait 0x0
	ts_flag_set 0x5B, 0x5
	ts_end

	def_text_script CompText87692AC_unk1
	ts_mugshot_show 0x6
	ts_msg_open
	.string "Yay! It looks like\n"
	.string "it's working!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Thanks Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87692AC_unk2
	ts_mugshot_show 0x6
	ts_msg_open
	.string "The toilet\n"
	.string "broke,and even"
	ts_key_wait 0x0
	ts_clear_msg
	.string "though a repairman\n"
	.string "came to fix it,it\n"
	.string "just broke again!"
	ts_key_wait 0x0
	ts_end

	