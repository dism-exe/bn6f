	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87CCAA8::
	.word 0x20C00

	text_archive_start

	def_text_script CompText87CCAA8_unk0
	ts_mugshot_show mugshot=0x26
	ts_msg_open
	.string "... You've learned\n"
	.string "to operate your Navi\n"
	.string "well."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I have nothing left\n"
	.string "to teach you."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You may have\n"
	.string "ChargeMan as one\n"
	.string "of your LinkNavis."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87CCAA8_unk1_id

	def_text_script CompText87CCAA8_unk1
	ts_mugshot_hide
	ts_msg_open
	ts_store_timer [
		timer: 0x0,
		value: 0x1,
	]
	ts_sound_play00 track=0x8F
	.string "ChargeMan became\n"
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
	ts_jump target=CompText87CCAA8_unk2_id

	def_text_script CompText87CCAA8_unk2
	ts_mugshot_show mugshot=0x26
	ts_msg_open
	.string "ChargeMan's strength\n"
	.string "is stored in the\n"
	.string "ChargeCross."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I believe,in your\n"
	.string "capable hands,you\n"
	.string "will become good"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "enough that I will\n"
	.string "want to hire you for\n"
	.string "my railroad someday."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... If you ever want\n"
	.string "to hear the chuga-\n"
	.string "chuga of an engine,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "you'll always be\n"
	.string "welcome here.\n"
	.string "We'll be waiting."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87CCAA8_unk3_id

	def_text_script CompText87CCAA8_unk3
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "OK! Thanks!"
	ts_key_wait any=0x0
	ts_end

	