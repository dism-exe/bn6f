	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87693E0::
	.word 0xE100

	text_archive_start

	def_text_script CompText87693E0_unk0
	ts_mugshot_show 0x0
	ts_msg_open
	.string "What in the world!?\n"
	.string "In my own house...\n"
	.string "WOW!!!!!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "PENGUIN CAPTURE..."
	ts_key_wait 0x0
	ts_flag_set 0xAB, 0x11
	ts_check_flag 0xAF, 0x11, 0xFF, 0x1
	ts_check_flag 0xAE, 0x11, 0xFF, 0x1
	ts_check_flag 0xAD, 0x11, 0xFF, 0x1
	ts_check_flag 0xAC, 0x11, 0xFF, 0x1
	ts_check_flag 0xAB, 0x11, 0xFF, 0x1
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "All the penguins\n"
	.string "gathered here!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Alright,time to go\n"
	.string "back to the\n"
	.string "requestor's place!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87693E0_unk1
	ts_end

	def_text_script CompText87693E0_unk2

	def_text_script CompText87693E0_unk3

	def_text_script CompText87693E0_unk4

	def_text_script CompText87693E0_unk5

	def_text_script CompText87693E0_unk6

	def_text_script CompText87693E0_unk7

	def_text_script CompText87693E0_unk8

	def_text_script CompText87693E0_unk9

	