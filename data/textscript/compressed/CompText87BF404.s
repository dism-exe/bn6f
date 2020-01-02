	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87BF404::
	.word 0xBE00

	text_archive_start

	def_text_script CompText87BF404_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "We stopped the heat-\n"
	.string "wave!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Jack out,MegaMan,and\n"
	.string "let's get going!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BF404_unk2_id

	def_text_script CompText87BF404_unk1
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Roger!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BF404_unk2
	ts_check_flag [
		flag: 0xA1C,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText87BF404_unk1_id,
	]
	ts_check_flag [
		flag: 0xA1E,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText87BF404_unk1_id,
	]
	ts_check_flag [
		flag: 0xA20,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText87BF404_unk1_id,
	]
	ts_check_flag [
		flag: 0xA22,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText87BF404_unk1_id,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "We've cleared the\n"
	.string "path now,so let's\n"
	.string "go,MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "OK!!"
	ts_key_wait any=0x0
	ts_end

	