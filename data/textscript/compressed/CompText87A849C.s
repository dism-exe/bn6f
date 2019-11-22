	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A849C::
	.word 0x46900

	text_archive_start

	def_text_script CompText87A849C_unk0
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string " Found him!!\n"
	.string "You're Mick's Navi,\n"
	.string "right?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 1,
	]

	def_text_script CompText87A849C_unk1
	ts_mugshot_show [
		mugshot: 0x57,
	]
	ts_msg_open
	.string "Hmph!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 2,
	]

	def_text_script CompText87A849C_unk2
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "What are you doing\n"
	.string "here!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Your operator is in\n"
	.string "trouble!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 3,
	]

	def_text_script CompText87A849C_unk3
	ts_mugshot_show [
		mugshot: 0x57,
	]
	ts_msg_open
	.string "He put some other\n"
	.string "Navi in his PET!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "He looked dangerous\n"
	.string "so I just said,\n"
	.string "\"Oh,well!\""
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 4,
	]

	def_text_script CompText87A849C_unk4
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "You're kidding,\n"
	.string "right?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Aren't you following\n"
	.string "Mick because you're\n"
	.string "worried?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 5,
	]

	def_text_script CompText87A849C_unk5
	ts_mugshot_show [
		mugshot: 0x57,
	]
	ts_msg_open
	.string "Umm..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87A849C_unk6
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Mick!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I need you two to\n"
	.string "work together!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Stop this fighting\n"
	.string "and apologize,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "and let your Navi\n"
	.string "back into your PET!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 7,
	]

	def_text_script CompText87A849C_unk7
	ts_mugshot_show [
		mugshot: 0x14,
	]
	ts_msg_open
	.string "But,but,he's the one\n"
	.string "that ran out on me!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "He should be\n"
	.string "apologizing to me!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 8,
	]

	def_text_script CompText87A849C_unk8
	ts_mugshot_show [
		mugshot: 0x57,
	]
	ts_msg_open
	.string "What!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'm the one who's\n"
	.string "always watching\n"
	.string "out for..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 9,
	]

	def_text_script CompText87A849C_unk9
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "L-Lan!\n"
	.string "Do something!\n"
	.string "Hurry..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Wah!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87A849C_unk10
	ts_mugshot_show [
		mugshot: 0x14,
	]
	ts_msg_open
	.string "Waaaah! Ouuuuch!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 11,
	]

	def_text_script CompText87A849C_unk11
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Mick!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 12,
	]

	def_text_script CompText87A849C_unk12
	ts_mugshot_show [
		mugshot: 0x57,
	]
	ts_msg_open
	.string "Mick!!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Ahh!! Where are the\n"
	.string "Fire Extinguisher\n"
	.string "System's controls!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... Found it!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Darn!!\n"
	.string "It's protected!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Hang on,Mick!\n"
	.string "I'll save you,no\n"
	.string "matter what!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Waaaaah!!\n"
	.string "Fire Extinguisher\n"
	.string "System activated!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87A849C_unk13
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Are you OK!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 14,
	]

	def_text_script CompText87A849C_unk14
	ts_mugshot_show [
		mugshot: 0x14,
	]
	ts_msg_open
	.string "Strangely enough,\n"
	.string "I'm OK..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You big dummy..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 15,
	]

	def_text_script CompText87A849C_unk15
	ts_mugshot_show [
		mugshot: 0x57,
	]
	ts_msg_open
	.string "Hey,wait a sec!\n"
	.string "You said that\n"
	.string "like you meant it..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87A849C_unk16
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "MegaMan,it's\n"
	.string "up to you now!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	