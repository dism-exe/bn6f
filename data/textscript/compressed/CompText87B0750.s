	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87B0750::
	.word 0xD400

	text_archive_start

	def_text_script CompText87B0750_unk0
	ts_mugshot_show 0x37
	ts_msg_open
	.string "W-What...?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B0750_unk1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "What in the world\n"
	.string "happened...!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87B0750_unk2
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I don't know,but...\n"
	.string "we've gotta keep\n"
	.string "going."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let's go,Lan!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87B0750_unk3
	ts_mugshot_show 0x0
	ts_msg_open
	.string "OK!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "... But just what is\n"
	.string "waiting for us in\n"
	.string "CentralArea3...?"
	ts_key_wait 0x0
	ts_end

	