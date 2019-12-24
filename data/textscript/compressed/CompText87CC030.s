	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87CC030::
	.word 0xD200

	text_archive_start

	def_text_script CompText87CC030_unk0
	ts_mugshot_show mugshot=0x24
	ts_msg_open
	.string "Looks like you got\n"
	.string "to CentralArea1 with\n"
	.string "no problems."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Alright,GroundMan,\n"
	.string "you know what to do!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=1

	def_text_script CompText87CC030_unk1
	ts_mugshot_show mugshot=0x4D
	ts_msg_open
	.string "Yup!\n"
	.string "Whiiiiiiiiir!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CC030_unk2
	ts_mugshot_show mugshot=0x24
	ts_msg_open
	.string "Let's start!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "There's 40 stones\n"
	.string "in this area."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Drill away!"
	ts_key_wait any=0x0
	ts_end

	