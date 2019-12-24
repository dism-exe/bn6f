	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87CF8EC::
	.word 0xCC00

	text_archive_start

	def_text_script CompText87CF8EC_unk0
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "OK,we've invited\n"
	.string "everybody!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=1

	def_text_script CompText87CF8EC_unk1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "A whole week! I\n"
	.string "can't wait! It's\n"
	.string "gonna be a blast!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=2

	def_text_script CompText87CF8EC_unk2
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "I know!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87CF8EC_unk3
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Well,let's take a\n"
	.string "look around and then\n"
	.string "jack out,OK?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=4

	def_text_script CompText87CF8EC_unk4
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "OK!"
	ts_key_wait any=0x0
	ts_end

	