	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A4EF4::
	.word 0xD400

	text_archive_start

	def_text_script CompText87A4EF4_unk0
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Alright!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87A4EF4_unk1
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Excellent!\n"
	.string "Nice work,Lan!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87A4EF4_unk2
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Ah,you too,MegaMan!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87A4EF4_unk3
	ts_mugshot_show 0x37
	ts_msg_open
	.string "How's the RoboDog?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 4

	def_text_script CompText87A4EF4_unk4
	ts_mugshot_show 0x0
	ts_msg_open
	.string "It's OK. It's back\n"
	.string "to normal,I think."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Jack out,MegaMan!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 5

	def_text_script CompText87A4EF4_unk5
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Roger!"
	ts_key_wait 0x0
	ts_end

	