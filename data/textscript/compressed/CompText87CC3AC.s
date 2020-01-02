	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87CC3AC::
	.word 0x16E00

	text_archive_start

	def_text_script CompText87CC3AC_unk0
	ts_mugshot_show mugshot=0x26
	ts_msg_open
	.string "... Now then,let's\n"
	.string "begin our class."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Today,you will\n"
	.string "be working at my\n"
	.string "railroad company."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87CC3AC_unk1_id

	def_text_script CompText87CC3AC_unk1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Railroad...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But I can't drive\n"
	.string "a train!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87CC3AC_unk2_id

	def_text_script CompText87CC3AC_unk2
	ts_mugshot_show mugshot=0x26
	ts_msg_open
	.string "... It's alright,\n"
	.string "little guy."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The railroad I'm\n"
	.string "talking about is\n"
	.string "on the Net..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You'll be operating\n"
	.string "my Navi,ChargeMan."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Now if you just\n"
	.string "step over to the\n"
	.string "vending machine..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87CC3AC_unk3_id

	def_text_script CompText87CC3AC_unk3
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "OK."
	ts_key_wait any=0x0
	ts_end

	