	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8797310::
	.word 0x19500

	text_archive_start

	def_text_script CompText8797310_unk0
	ts_flag_set flag=0x445
	ts_end

	def_text_script CompText8797310_unk1
	ts_flag_set flag=0x447
	ts_end

	def_text_script CompText8797310_unk2
	ts_flag_set flag=0x449
	ts_end

	def_text_script CompText8797310_unk3
	ts_check_flag [
		flag: 0x43E,
		jumpIfTrue: CompText8797310_unk5_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x434,
		jumpIfTrue: CompText8797310_unk4_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "BE CAREFUL!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "A VICIOUS RED NAVI\n"
	.string "IS SHOOTING FLAMES!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "HIDE IN THE SHADOWS\n"
	.string "OF THE CUBES TO\n"
	.string "SAVE YOURSELF!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "YOU CAN TELL WHICH\n"
	.string "WAY THE FIRE WILL"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "COME FROM BY WHERE\n"
	.string "THE EMBERS RISE!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "IF YOU DON'T\n"
	.string "UNDERSTAND,BY ALL\n"
	.string "MEANS,JUST ASK!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8797310_unk4
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "A FRIEND OF MINE\n"
	.string "IS TRAPPED IN\n"
	.string "THE AREA AHEAD!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "PLEASE HELP!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8797310_unk5
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "THANKS TO YOU\n"
	.string "WE'RE SAVED!!\n"
	.string "THANKS!! THANKS!!"
	ts_key_wait any=0x0
	ts_end

	