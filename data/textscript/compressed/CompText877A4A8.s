	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText877A4A8::
	.word 0x41700

	text_archive_start

	def_text_script CompText877A4A8_unk0
	ts_check_chapter [
		lower: 0x62,
		upper: 0x62,
		jumpIfInRange: 0xA,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x61,
		upper: 0x61,
		jumpIfInRange: 0x5,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_flag [
		flag: 0xE08,
		jumpIfTrue: 0x3,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x1A,
	]
	ts_msg_open
	.string "You've got a\n"
	.string "terribly strained\n"
	.string "look on you..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Why don't you try\n"
	.string "taking a deep\n"
	.string "breath?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The great weather\n"
	.string "here should clear\n"
	.string "you up right away!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A4A8_unk1
	ts_mugshot_show [
		mugshot: 0xD,
	]
	ts_msg_open
	.string "I heard a rumor\n"
	.string "that there is a\n"
	.string "Navi that went in"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "the Underground.\n"
	.string "I wonder if that's\n"
	.string "true..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A4A8_unk2
	ts_check_chapter [
		lower: 0x61,
		upper: 0x61,
		jumpIfInRange: 0x8,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x15,
	]
	ts_msg_open
	.string "The other day,\n"
	.string "Mayor Cain's trial\n"
	.string "was held..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "He was found\n"
	.string "guilty..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I still can't\n"
	.string "believe it. Mayor\n"
	.string "Cain was a hoodlum!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A4A8_unk3
	ts_mugshot_show [
		mugshot: 0x1A,
	]
	ts_msg_open
	.string "Nice weather today!\n"
	.string "The flowers must be\n"
	.string "very happy."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A4A8_unk4

	def_text_script CompText877A4A8_unk5
	ts_mugshot_show [
		mugshot: 0x1A,
	]
	ts_msg_open
	.string "I'm providing all of\n"
	.string "the flowers growing\n"
	.string "at the Expo Site!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A4A8_unk6
	ts_mugshot_show [
		mugshot: 0xB,
	]
	ts_msg_open
	.string "Yep!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "One whiff of this\n"
	.string "air really wakes\n"
	.string "up the senses!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A4A8_unk7
	ts_mugshot_show [
		mugshot: 0x9,
	]
	ts_msg_open
	.string "Recently,a Navi\n"
	.string "shuffled in and\n"
	.string "said,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\"The Expo's going to\n"
	.string " open on schedule!\""
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I can't wait!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A4A8_unk8
	ts_mugshot_show [
		mugshot: 0x15,
	]
	ts_msg_open
	.string "It appears that the\n"
	.string "Expo will open on\n"
	.string "schedule!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Green Town will also\n"
	.string "have a pavilion."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The pavilion's theme\n"
	.string "is going to be..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\"The gifts of nature\n"
	.string " to man,and"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string " the effects of\n"
	.string " environmental\n"
	.string " destruction.\""
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A4A8_unk9

	def_text_script CompText877A4A8_unk10
	ts_mugshot_show [
		mugshot: 0x1A,
	]
	ts_msg_open
	.string "Good morning.\n"
	.string "The morning air\n"
	.string "is so nice,isn't it?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A4A8_unk11

	def_text_script CompText877A4A8_unk12

	def_text_script CompText877A4A8_unk13

	def_text_script CompText877A4A8_unk14

	def_text_script CompText877A4A8_unk15

	def_text_script CompText877A4A8_unk16

	def_text_script CompText877A4A8_unk17

	def_text_script CompText877A4A8_unk18

	def_text_script CompText877A4A8_unk19

	def_text_script CompText877A4A8_unk20

	def_text_script CompText877A4A8_unk21

	def_text_script CompText877A4A8_unk22

	def_text_script CompText877A4A8_unk23

	def_text_script CompText877A4A8_unk24

	def_text_script CompText877A4A8_unk25

	def_text_script CompText877A4A8_unk26

	def_text_script CompText877A4A8_unk27

	def_text_script CompText877A4A8_unk28

	def_text_script CompText877A4A8_unk29

	