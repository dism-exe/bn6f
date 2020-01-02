	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A05E0::
	.word 0xB400

	text_archive_start

	def_text_script CompText87A05E0_unk0
	ts_check_flag [
		flag: 0xA6E,
		jumpIfTrue: CompText87A05E0_unk1_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "I've found a virus\n"
	.string "in the control\n"
	.string "panel,Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Watch my back,\n"
	.string "partner!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Leave it to me!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Let's go!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0xA6D
	ts_end

	def_text_script CompText87A05E0_unk1
	ts_msg_open
	.string "The control panel\n"
	.string "has returned to\n"
	.string "normal."
	ts_key_wait any=0x0
	ts_end

	