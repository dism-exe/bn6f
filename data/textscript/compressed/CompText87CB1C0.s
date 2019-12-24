	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87CB1C0::
	.word 0x2A400

	text_archive_start

	def_text_script CompText87CB1C0_unk0
	ts_mugshot_show mugshot=0x25
	ts_msg_open
	.string "That was absolutely\n"
	.string "splendid the way\n"
	.string "you fought!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You're beginning to\n"
	.string "understand DustMan's\n"
	.string "true power!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Take that strength\n"
	.string "and teach others to\n"
	.string "recycle,too!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "OK,now I can let\n"
	.string "DustMan be your\n"
	.string "LinkNavi!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=1

	def_text_script CompText87CB1C0_unk1
	ts_mugshot_hide
	ts_msg_open
	ts_store_timer [
		timer: 0x0,
		value: 0x1,
	]
	ts_sound_play00 track=0x8F
	.string "DustMan became\n"
	.string "Lan's LinkNavi!"
	ts_wait_o_w_var [
		variable: 0x0,
		value: 0x2,
	]
	ts_store_timer [
		timer: 0x0,
		value: 0x3,
	]
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=2

	def_text_script CompText87CB1C0_unk2
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Thank you,Mr.Press!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87CB1C0_unk3
	ts_mugshot_show mugshot=0x25
	ts_msg_open
	.string "DustMan's power,\n"
	.string "DustCross,is now\n"
	.string "yours to use!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I really hope you'll\n"
	.string "use and treasure it!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=4

	def_text_script CompText87CB1C0_unk4
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I will!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=5

	def_text_script CompText87CB1C0_unk5
	ts_mugshot_show mugshot=0x25
	ts_msg_open
	.string "Alright,alright!\n"
	.string "That's it for this\n"
	.string "class!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Operate DustMan any\n"
	.string "time by coming here,\n"
	.string "got it?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ah! One more thing!!\n"
	.string "The fact that this\n"
	.string "vending machine"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "connects to the\n"
	.string "Undernet is a\n"
	.string "secret,OK!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=6

	def_text_script CompText87CB1C0_unk6
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I gotcha!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Bye,Mr.Press!"
	ts_key_wait any=0x0
	ts_end

	