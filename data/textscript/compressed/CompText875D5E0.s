	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875D5E0::
	.word 0x1F300

	text_archive_start

	def_text_script CompText875D5E0_unk0
	ts_check_chapter [
		lower: 0x63,
		upper: 0x64,
		jumpIfInRange: 0x5,
		jumpIfOutOfRange: 0xFF,
	]
	ts_msg_open
	.string "It's a copy of\n"
	.string "Mr.Weather. It looks\n"
	.string "really well-made..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You can jack in,but\n"
	.string "there's no need to\n"
	.string "right now..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875D5E0_unk1
	ts_check_chapter [
		lower: 0x62,
		upper: 0x62,
		jumpIfInRange: 0x3,
		jumpIfOutOfRange: 0xFF,
	]
	ts_jump [
		target: 4,
	]

	def_text_script CompText875D5E0_unk2
	ts_msg_open
	.string "The voice coming\n"
	.string "from the monitor\n"
	.string "is explaining the"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "effect of weather\n"
	.string "on everyday life."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875D5E0_unk3
	ts_check_flag [
		flag: 0xE65,
		jumpIfTrue: 0x4,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0xE65,
	]
	ts_msg_open
	.string "Lan stamped his\n"
	.string "Stamp Rally Card!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_sound_disable_text_sfx
	ts_sound_play00 [
		track: 0x74,
	]
	ts_sound_enable_text_sfx
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Alright! I got the\n"
	.string "Sky Pavilion\n"
	.string "stamp!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875D5E0_unk4
	ts_msg_open
	.string "A stamp for the\n"
	.string "Stamp Rally."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The mark on this\n"
	.string "stamp is the Sky\n"
	.string "Town seal."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875D5E0_unk5
	ts_msg_open
	.string "It's a copy of\n"
	.string "Mr.Weather. It looks\n"
	.string "really well-made..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You can jack in."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	