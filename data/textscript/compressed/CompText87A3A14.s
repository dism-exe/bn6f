	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A3A14::
	.word 0xF100

	text_archive_start

	def_text_script CompText87A3A14_unk0
	ts_check_flag [
		flag: 0x163,
		jumpIfTrue: CompText87A3A14_unk1_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "AHHHH!!\n"
	.string "YOU'RE MEGAMAN!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "DO YOU REMEMBER ME!?\n"
	.string "I'M THE DOG HOUSE\n"
	.string "PROGRAM!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...*SNIFFLE*..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "SORRY... MY NOSE IS\n"
	.string "RUNNY..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A3A14_unk1
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "THIS IS THE DOG\n"
	.string "HOUSE COMP...."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "SINCE THE OWNER\n"
	.string "LEFT,IT'S BEEN A\n"
	.string "LONELY PLACE..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A3A14_unk2

	def_text_script CompText87A3A14_unk3

	def_text_script CompText87A3A14_unk4

	