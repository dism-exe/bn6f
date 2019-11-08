	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A29D8::
	.word 0x18500

	text_archive_start

	def_text_script CompText87A29D8_unk0
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I found a virus!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Get ready,MegaMan!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Battle routine,set!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Execute!!"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0xE3, 0x11
	ts_end

	def_text_script CompText87A29D8_unk1
	ts_check_flag 0xE4, 0x11, 0xFF, 0x2
	ts_check_flag 0xE5, 0x11, 0xFF, 0x2
	ts_check_flag 0xE6, 0x11, 0xFF, 0x2
	ts_check_flag 0xE7, 0x11, 0xFF, 0x2
	ts_check_flag 0xE8, 0x11, 0xFF, 0x2
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I did it,Lan! That\n"
	.string "should have taken\n"
	.string "out all the viruses!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Yep!\n"
	.string "This computer\n"
	.string "is safe now!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A29D8_unk2
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I did it,Lan!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Yep!\n"
	.string "This computer\n"
	.string "is safe now!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A29D8_unk3

	def_text_script CompText87A29D8_unk4

	def_text_script CompText87A29D8_unk5
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "THIS IS THE\n"
	.string "TEACHER'S ROOM COMP!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "HOW ABOUT A HEATED\n"
	.string "DISCUSSION ABOUT\n"
	.string "EDUCATION!!"
	ts_key_wait 0x0
	ts_end

	