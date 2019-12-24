	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87CC1E4::
	.word 0x21200

	text_archive_start

	def_text_script CompText87CC1E4_unk0
	ts_mugshot_show mugshot=0x24
	ts_msg_open
	.string "You're pretty\n"
	.string "rocking now."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "With skills like\n"
	.string "that,you could work\n"
	.string "for real!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Alright,GroundMan's\n"
	.string "1 of your LinkNavis\n"
	.string "from now on!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=1

	def_text_script CompText87CC1E4_unk1
	ts_mugshot_hide
	ts_msg_open
	ts_store_timer [
		timer: 0x0,
		value: 0x1,
	]
	ts_sound_play00 track=0x8F
	.string "GroundMan became\n"
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

	def_text_script CompText87CC1E4_unk2
	ts_mugshot_show mugshot=0x24
	ts_msg_open
	.string "GroundMan's strength\n"
	.string "is there for you in\n"
	.string "the GroundCross!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hey,I'll even put in\n"
	.string "a good word for you\n"
	.string "at work to my boss!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You got some great\n"
	.string "muscles."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If we ever need you,\n"
	.string "the boss might give\n"
	.string "you a call!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Remember to come\n"
	.string "here if you need to\n"
	.string "do some drilling!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We'll be here,\n"
	.string "alright!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87CC1E4_unk3
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "OK! Thanks!"
	ts_key_wait any=0x0
	ts_end

	