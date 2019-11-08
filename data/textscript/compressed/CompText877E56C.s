	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText877E56C::
	.word 0xB100

	text_archive_start

	def_text_script CompText877E56C_unk0
	ts_mugshot_show 0x3
	ts_msg_open
	.string "It feels kinda\n"
	.string "safe here..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877E56C_unk1
	ts_mugshot_show 0x1A
	ts_msg_open
	.string "This kid with the\n"
	.string "big forehead brought\n"
	.string "me here..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "She really helped\n"
	.string "me out."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877E56C_unk2
	ts_mugshot_show 0xD
	ts_msg_open
	.string "Why is that Navi\n"
	.string "just wandering\n"
	.string "around?"
	ts_key_wait 0x0
	ts_end

	