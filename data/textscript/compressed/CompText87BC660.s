	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87BC660::
	.word 0x31400

	text_archive_start

	def_text_script CompText87BC660_unk0
	ts_mugshot_show [
		mugshot: 0x23,
	]
	ts_msg_open
	.string "Ho,ho,ho,ho!\n"
	.string "You move well now --\n"
	.string "as the wind moves."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Yes,you move as the\n"
	.string "wind through hair."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "About this,I can\n"
	.string "teach you no more."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Now you know the\n"
	.string "secrets of my art."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "And TenguMan can\n"
	.string "become one with you!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 1,
	]

	def_text_script CompText87BC660_unk1
	ts_mugshot_hide
	ts_msg_open
	ts_store_timer [
		timer: 0x0,
		value: 0x1,
	]
	ts_sound_play00 [
		track: 0x8F,
	]
	.string "TenguMan became\n"
	.string "Lan's LinkNavi!"
	ts_wait_o_w_var [
		variable: 0x0,
		value: 0x2,
	]
	ts_store_timer [
		timer: 0x0,
		value: 0x3,
	]
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 2,
	]

	def_text_script CompText87BC660_unk2
	ts_mugshot_show [
		mugshot: 0x23,
	]
	ts_msg_open
	.string "TenguMan's skills\n"
	.string "are now yours."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Use the TenguCross\n"
	.string "wisely,grasshopper,\n"
	.string "and never in anger."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 3,
	]

	def_text_script CompText87BC660_unk3
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "I will master\n"
	.string "TenguMan's power,\n"
	.string "Master Feng-Tian."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 4,
	]

	def_text_script CompText87BC660_unk4
	ts_mugshot_show [
		mugshot: 0x23,
	]
	ts_msg_open
	.string "Ho,ho,ho,ho!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Even wind can become\n"
	.string "claws if you know\n"
	.string "how to use it."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Train well,and don't\n"
	.string "forget the lessons\n"
	.string "you have learned."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 5,
	]

	def_text_script CompText87BC660_unk5
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "I won't! Thank you!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 6,
	]

	def_text_script CompText87BC660_unk6
	ts_mugshot_show [
		mugshot: 0x23,
	]
	ts_msg_open
	.string "... Ah,one more\n"
	.string "thing..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If you need\n"
	.string "TenguMan,you only\n"
	.string "need to come here."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "He is here in this\n"
	.string "book of nature."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 7,
	]

	def_text_script CompText87BC660_unk7
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "OK,I'll definitely\n"
	.string "be back!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	