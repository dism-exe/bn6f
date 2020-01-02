	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8758AF0::
	.word 0x32D00

	text_archive_start

	def_text_script CompText8758AF0_unk0
	ts_check_chapter [
		lower: 0x3,
		upper: 0x4,
		jumpIfInRange: CompText8758AF0_unk8_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_msg_open
	.string "This sink has an\n"
	.string "advanced water\n"
	.string "purification system."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The water from\n"
	.string "this sink is\n"
	.string "so delicious!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8758AF0_unk1
	ts_msg_open
	.string "Pictures students\n"
	.string "drew for art class\n"
	.string "are hanging up here."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "They're all pretty\n"
	.string "well done."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8758AF0_unk2
	ts_msg_open
	.string "This security camera\n"
	.string "watches over all\n"
	.string "the students."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It sends its video\n"
	.string "data to the\n"
	.string "Teachers' Room."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8758AF0_unk3
	ts_check_chapter [
		lower: 0x30,
		upper: 0xFF,
		jumpIfInRange: CompText8758AF0_unk7_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_msg_open
	.string "A flyer from the\n"
	.string "Nurse's Office."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"Let's keep our\n"
	.string " hands clean,\n"
	.string " even at home!\""
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8758AF0_unk4
	ts_msg_open
	.string "Pictures drawn by\n"
	.string "students hang in\n"
	.string "this hallway."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You can see how much\n"
	.string "time went into each\n"
	.string "one..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8758AF0_unk5
	ts_msg_open
	.string "It's the school\n"
	.string "paper,published by\n"
	.string "the Journalism Club."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The headline is:\n"
	.string "\"Must-see Sights\n"
	.string " of the Expo!\""
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8758AF0_unk6
	ts_msg_open
	.string "This door is locked.\n"
	.string "You can't go this\n"
	.string "way."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8758AF0_unk7
	ts_msg_open
	.string "It says:"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"Expo Pavilion\n"
	.string " Operator Navi\n"
	.string " Wanted!\""
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8758AF0_unk8
	ts_msg_open
	.string "This sink's water\n"
	.string "system is broken."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "No water today,\n"
	.string "not even a drip..."
	ts_key_wait any=0x0
	ts_end

	