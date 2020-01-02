	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87BC8C8::
	.word 0x1D400

	text_archive_start

	def_text_script CompText87BC8C8_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Umm,can you teach me\n"
	.string "that neat move you\n"
	.string "did at school?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x23
	.string "Ho,ho,ho,ho!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That would depend on\n"
	.string "you."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I teach the art of\n"
	.string "moving silently and\n"
	.string "quick like the wind."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Moving like\n"
	.string "the wind..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x23
	.string "Use my Navi,\n"
	.string "TenguMan for this\n"
	.string "class."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He will help you\n"
	.string "master all I have\n"
	.string "to teach you."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "TenguMan waits in\n"
	.string "this book of nature."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Operate TenguMan\n"
	.string "and start our class!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ho,ho,ho,ho!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Master Feng-Tian's\n"
	.string "Navi..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I wonder what kind\n"
	.string "of Navi he will be?"
	ts_key_wait any=0x0
	ts_end

	