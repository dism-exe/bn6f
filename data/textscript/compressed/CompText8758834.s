	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8758834::
	.word 0x34400

	text_archive_start

	def_text_script CompText8758834_unk0
	ts_check_chapter 0x3, 0x4, 0x8, 0xFF
	ts_msg_open
	.string "This sink has an\n"
	.string "advanced water\n"
	.string "purification system."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The water from\n"
	.string "this sink is\n"
	.string "so delicious!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8758834_unk1
	ts_msg_open
	.string "Students' book\n"
	.string "reviews are hanging\n"
	.string "on the wall here."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You can see everyone\n"
	.string "really put their\n"
	.string "hearts into them."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8758834_unk2
	ts_msg_open
	.string "This security camera\n"
	.string "watches over all\n"
	.string "the students."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It sends its video\n"
	.string "data to the\n"
	.string "Teachers' Room."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8758834_unk3
	ts_check_chapter 0x30, 0xFF, 0x7, 0xFF
	ts_msg_open
	.string "A flyer from the\n"
	.string "Nurse's Office."
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"Let's keep our\n"
	.string " hands clean,\n"
	.string " even at home!\""
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8758834_unk4
	ts_msg_open
	.string "Independent research\n"
	.string "project reports are\n"
	.string "hanging here."
	ts_key_wait 0x0
	ts_clear_msg
	.string "First graders\n"
	.string "sure have cute\n"
	.string "handwriting..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8758834_unk5
	ts_msg_open
	.string "It's the school\n"
	.string "paper,published by\n"
	.string "the Journalism Club."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The headline is:\n"
	.string "\"Must-see Sights\n"
	.string " of the Expo!\""
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8758834_unk6
	ts_msg_open
	.string "This door is locked.\n"
	.string "You can't go this\n"
	.string "way."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8758834_unk7
	ts_msg_open
	.string "It says:"
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"Expo Pavilion\n"
	.string " Operator Navi\n"
	.string " Wanted!\""
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8758834_unk8
	ts_msg_open
	.string "This sink's water\n"
	.string "system is broken."
	ts_key_wait 0x0
	ts_clear_msg
	.string "No water today,\n"
	.string "not even a drip..."
	ts_key_wait 0x0
	ts_end

	