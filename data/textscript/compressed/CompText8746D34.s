	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8746D34::
	.word 0x10800

	text_archive_start

	def_text_script CompText8746D34_unk0
	ts_check_chapter [
		lower: 0x33,
		upper: 0x33,
		jumpIfInRange: 0x1,
		jumpIfOutOfRange: 0xFF,
	]
	ts_jump target=3

	def_text_script CompText8746D34_unk1
	ts_check_flag [
		flag: 0x82E,
		jumpIfTrue: 0x3,
		jumpIfFalse: 0xFF,
	]
	ts_check_sub_area [
		lower: 0x2,
		upper: 0x2,
		jumpIfInRange: 0x7,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_sub_area [
		lower: 0x1,
		upper: 0x1,
		jumpIfInRange: 0x6,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_sub_area [
		lower: 0x0,
		upper: 0x0,
		jumpIfInRange: 0x5,
		jumpIfOutOfRange: 0xFF,
	]
	ts_end

	def_text_script CompText8746D34_unk2
	ts_flag_set flag=0x9D4
	ts_end

	def_text_script CompText8746D34_unk3
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Things don't look\n"
	.string "too damaged from the\n"
	.string "JudgeMan incident..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8746D34_unk4
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Want to take a look\n"
	.string "around,MegaMan!?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x2, 0xFF, 0xFF
	ts_end

	def_text_script CompText8746D34_unk5
	ts_check_flag [
		flag: 0x9DA,
		jumpIfTrue: 0x8,
		jumpIfFalse: 0xFF,
	]
	ts_jump target=4
	ts_end

	def_text_script CompText8746D34_unk6
	ts_check_flag [
		flag: 0x9DB,
		jumpIfTrue: 0x8,
		jumpIfFalse: 0xFF,
	]
	ts_jump target=4
	ts_end

	def_text_script CompText8746D34_unk7
	ts_check_flag [
		flag: 0x9DC,
		jumpIfTrue: 0x8,
		jumpIfFalse: 0xFF,
	]
	ts_jump target=4
	ts_end

	def_text_script CompText8746D34_unk8
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's move on,\n"
	.string "MegaMan!"
	ts_key_wait any=0x0
	ts_end

	