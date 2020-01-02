	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87989E4::
	.word 0x18700

	text_archive_start

	def_text_script CompText87989E4_unk0

	def_text_script CompText87989E4_unk1

	def_text_script CompText87989E4_unk2

	def_text_script CompText87989E4_unk3

	def_text_script CompText87989E4_unk4

	def_text_script CompText87989E4_unk5
	ts_check_flag [
		flag: 0x11DB,
		jumpIfTrue: CompText87989E4_unk6_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0x11DB
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "Hey!\n"
	.string "Are you with the\n"
	.string "criminals!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "I'm MegaMan!\n"
	.string "I'm here to help\n"
	.string "you!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x41
	.string "Really!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But... Programs\n"
	.string "are binding my\n"
	.string "hands and feet!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "OK. Wait a sec."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "."
	ts_wait_skip frames=0x1E
	.string "."
	ts_wait_skip frames=0x1E
	.string "."
	ts_wait_skip frames=0x1E
	.string "OK!\n"
	.string "You're fine now!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x41
	.string "Thanks,MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "No problem!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "MegaMan! Let's\n"
	.string "get back to the\n"
	.string "criminal!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We'll make him\n"
	.string "give up!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Let's do it!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87989E4_unk6
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "Thank you!\n"
	.string "Thank you!"
	ts_key_wait any=0x0
	ts_end

	