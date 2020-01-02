	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87CC82C::
	.word 0xE700

	text_archive_start

	def_text_script CompText87CC82C_unk0
	ts_msg_open
	ts_mugshot_show mugshot=0x4F
	.string "... CentralArea,\n"
	.string "CentralArea..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Please remember to\n"
	.string "take everything with\n"
	.string "you."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CC82C_unk1
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "Choo,choo!!\n"
	.string "Great driving!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We will soon be\n"
	.string "departing for our\n"
	.string "next destination."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Make the neccessary\n"
	.string "preparations,and\n"
	.string "let's go."
	ts_key_wait any=0x0
	ts_end

	