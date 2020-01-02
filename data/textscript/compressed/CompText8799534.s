	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8799534::
	.word 0x21200

	text_archive_start

	def_text_script CompText8799534_unk0
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "It's a dead end!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8799534_unk1

	def_text_script CompText8799534_unk2
	ts_msg_open
	.string "The cloud seems to\n"
	.string "be undergoing\n"
	.string "maintenance."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8799534_unk3

	def_text_script CompText8799534_unk4

	def_text_script CompText8799534_unk5

	def_text_script CompText8799534_unk6

	def_text_script CompText8799534_unk7

	def_text_script CompText8799534_unk8

	def_text_script CompText8799534_unk9

	def_text_script CompText8799534_unk10
	ts_check_flag [
		flag: 0x11D9,
		jumpIfTrue: CompText8799534_unk12_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "I've freed\n"
	.string "the hostage.\n"
	.string "Give yourself up!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Your brother\n"
	.string "and the girl..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x44
	.string "Shut up!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You followed me all\n"
	.string "the way here!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm not running\n"
	.string "anymore!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This is the end!\n"
	.string "YAAAAAAAAAHHHH!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x1715
	ts_flag_set flag=0x11D7
	ts_end

	def_text_script CompText8799534_unk11
	ts_mugshot_show mugshot=0x44
	ts_msg_open
	.string "You're strong..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Must be because\n"
	.string "you live on the\n"
	.string "straight and narrow."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "......I lose there."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Do what you want\n"
	.string "with me!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x11D9
	ts_end

	def_text_script CompText8799534_unk12
	ts_mugshot_show mugshot=0x44
	ts_msg_open
	.string "I won't fight\n"
	.string "back anymore..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'll give up crime,\n"
	.string "and lead a good\n"
	.string "life!"
	ts_key_wait any=0x0
	ts_end

	