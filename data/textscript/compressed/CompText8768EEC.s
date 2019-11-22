	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8768EEC::
	.word 0x2E500

	text_archive_start

	def_text_script CompText8768EEC_unk0
	ts_check_flag [
		flag: 0xE62,
		jumpIfTrue: 0x1,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Mom,I'll be back!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x6,
	]
	.string "Off to the Expo?\n"
	.string "Have a good time!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_flag_set [
		flag: 0xE62,
	]
	ts_end

	def_text_script CompText8768EEC_unk1
	ts_mugshot_show [
		mugshot: 0x6,
	]
	ts_msg_open
	.string "Everyone from ACDC\n"
	.string "Town seems happy."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'm even going to\n"
	.string "go to the Expo\n"
	.string "with Dad."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8768EEC_unk2

	def_text_script CompText8768EEC_unk3

	def_text_script CompText8768EEC_unk4

	def_text_script CompText8768EEC_unk5
	ts_check_chapter [
		lower: 0x64,
		upper: 0x64,
		jumpIfInRange: 0xA,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x6,
	]
	ts_msg_open
	.string "You and your Dad..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Whenever something\n"
	.string "happens you both\n"
	.string "dash out!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But that has always\n"
	.string "been a Hikari family\n"
	.string "trait..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But when something\n"
	.string "happens,I don't bat\n"
	.string "an eyelash..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "No matter what\n"
	.string "happens,I take care\n"
	.string "of the house..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8768EEC_unk6
	ts_mugshot_show [
		mugshot: 0x43,
	]
	ts_msg_open
	.string "OooooOOOooo..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8768EEC_unk7

	def_text_script CompText8768EEC_unk8

	def_text_script CompText8768EEC_unk9

	def_text_script CompText8768EEC_unk10
	ts_mugshot_show [
		mugshot: 0x6,
	]
	ts_msg_open
	.string "No matter what\n"
	.string "happens,I'll take\n"
	.string "care of the house!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I've got a strong\n"
	.string "supporter myself!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8768EEC_unk11
	ts_check_flag [
		flag: 0x1EA,
		jumpIfTrue: 0xC,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0x1EA,
	]
	ts_mugshot_show [
		mugshot: 0x1,
	]
	ts_msg_open
	.string "Lan,leave this to\n"
	.string "us!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "...and remember\n"
	.string "you have to come\n"
	.string "back!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "...Take this with\n"
	.string "you,Lan!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give_chip [
		chip: 0xDF,
		code: 0x11,
		amount: 0x1,
	]
	ts_player_animate_object [
		animation: 0x18,
	]
	.string "Lan got:\n"
	.string "\""
	ts_print_chip1 [
		chip: 0xDF,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x11,
		buffer: 0x0,
	]
	.string "\"!!\n"
	ts_player_finish
	ts_player_reset_object
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8768EEC_unk12
	ts_mugshot_show [
		mugshot: 0x1,
	]
	ts_msg_open
	.string "I'm waiting,Lan..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8768EEC_unk13

	def_text_script CompText8768EEC_unk14

	def_text_script CompText8768EEC_unk15

	