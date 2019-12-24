	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87CC9B0::
	.word 0x10700

	text_archive_start

	def_text_script CompText87CC9B0_unk0
	ts_msg_open
	ts_mugshot_show mugshot=0x4F
	.string "... SeasideArea,\n"
	.string "SeasideArea..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Please remember to\n"
	.string "take everything with\n"
	.string "you."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CC9B0_unk1
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "Choo,choo!!\n"
	.string "Great driving!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We got to the final\n"
	.string "stop without a\n"
	.string "hitch!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=2

	def_text_script CompText87CC9B0_unk2
	ts_mugshot_show mugshot=0x26
	ts_msg_open
	.string "... Jack ChargeMan\n"
	.string "out,Lan."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Next comes the final\n"
	.string "test..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87CC9B0_unk3
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... OK!"
	ts_key_wait any=0x0
	ts_end

	