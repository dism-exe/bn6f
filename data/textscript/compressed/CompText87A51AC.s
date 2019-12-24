	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A51AC::
	.word 0x1FD00

	text_archive_start

	def_text_script CompText87A51AC_unk0
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,let's call\n"
	.string "it a day"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and finish preparing\n"
	.string "for tomorrow."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A51AC_unk1_id

	def_text_script CompText87A51AC_unk1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Guess I should..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But I wanna explore\n"
	.string "just a little more!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I mean,don't you\n"
	.string "wanna see more of\n"
	.string "our new town's Net?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A51AC_unk2_id

	def_text_script CompText87A51AC_unk2
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Well,yeah.\n"
	.string "OK,just a\n"
	.string "little longer."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But,not too much\n"
	.string "longer,OK?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Can't be late on\n"
	.string "your first day of\n"
	.string "school,you know!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A51AC_unk3_id

	def_text_script CompText87A51AC_unk3
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Yeah,yeah,I know.\n"
	.string "I think I can\n"
	.string "handle myself."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "C'mon,what are we\n"
	.string "waiting for!?\n"
	.string "Let's go!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A51AC_unk4_id

	def_text_script CompText87A51AC_unk4
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "You can handle\n"
	.string "yourself,huh?..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Alright.\n"
	.string "I'll trust you."
	ts_key_wait any=0x0
	ts_end

	