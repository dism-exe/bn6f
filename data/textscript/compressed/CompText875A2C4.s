	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875A2C4::
	.word 0xAF700

	text_archive_start

	def_text_script CompText875A2C4_unk0
	ts_flag_set [
		flag: 0x54C,
	]
	ts_msg_open
	.string "The clione is a\n"
	.string "mollusk also known\n"
	.string "as a \"sea angel\"."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "They're floating to\n"
	.string "and fro with their\n"
	.string "strange shape."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_check_flag [
		flag: 0x554,
		jumpIfTrue: 0x9,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x547,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x548,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x549,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54A,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54B,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54C,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54D,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54E,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54F,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x550,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x551,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x552,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x553,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_jump [
		target: 8,
	]

	def_text_script CompText875A2C4_unk1
	ts_flag_set [
		flag: 0x54D,
	]
	ts_msg_open
	.string "This is a king crab."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Even though it's\n"
	.string "called a king,it's\n"
	.string "actually closer to"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "a hermit crab.\n"
	.string "Maybe it thinks too\n"
	.string "highly of itself!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_check_flag [
		flag: 0x554,
		jumpIfTrue: 0x9,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x547,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x548,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x549,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54A,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54B,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54C,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54D,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54E,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54F,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x550,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x551,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x552,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x553,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_jump [
		target: 8,
	]

	def_text_script CompText875A2C4_unk2
	ts_flag_set [
		flag: 0x54E,
	]
	ts_msg_open
	.string "The nautilus is not\n"
	.string "a new kid on the\n"
	.string "block."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Fossil records show\n"
	.string "that these animals\n"
	.string "have been on this"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "planet since\n"
	.string "hundreds of millions\n"
	.string "of years ago!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_check_flag [
		flag: 0x554,
		jumpIfTrue: 0x9,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x547,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x548,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x549,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54A,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54B,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54C,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54D,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54E,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54F,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x550,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x551,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x552,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x553,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_jump [
		target: 8,
	]

	def_text_script CompText875A2C4_unk3
	ts_flag_set [
		flag: 0x547,
	]
	ts_msg_open
	.string "There is a recording\n"
	.string "playing."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\"Piranhas have very\n"
	.string " sharp and pointed\n"
	.string " triangular teeth."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string " Sometimes,a school\n"
	.string " will eat a whole\n"
	.string " cow or sheep that"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string " happens to fall\n"
	.string " into their river!\""
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_check_flag [
		flag: 0x554,
		jumpIfTrue: 0x9,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x547,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x548,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x549,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54A,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54B,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54C,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54D,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54E,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54F,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x550,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x551,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x552,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x553,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_jump [
		target: 8,
	]

	def_text_script CompText875A2C4_unk4
	ts_flag_set [
		flag: 0x548,
	]
	ts_msg_open
	.string "There is a recording\n"
	.string "playing."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\"Sunfish are found\n"
	.string " in warm waters,such\n"
	.string " as the tropics."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string " They say the reason\n"
	.string " why sunfish are so\n"
	.string " regionalized is"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string " because their tails\n"
	.string " have become too\n"
	.string " short.\""
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_check_flag [
		flag: 0x554,
		jumpIfTrue: 0x9,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x547,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x548,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x549,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54A,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54B,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54C,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54D,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54E,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54F,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x550,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x551,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x552,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x553,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_jump [
		target: 8,
	]

	def_text_script CompText875A2C4_unk5
	ts_flag_set [
		flag: 0x549,
	]
	ts_msg_open
	.string "There is a recording\n"
	.string "playing."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\"The tropical fish\n"
	.string " in this tank are\n"
	.string " called \"angelfish\"."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string " They are a favorite\n"
	.string " here because they\n"
	.string " are very friendly.\""
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_check_flag [
		flag: 0x554,
		jumpIfTrue: 0x9,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x547,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x548,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x549,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54A,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54B,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54C,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54D,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54E,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54F,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x550,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x551,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x552,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x553,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_jump [
		target: 8,
	]

	def_text_script CompText875A2C4_unk6
	ts_flag_set [
		flag: 0x54A,
	]
	ts_msg_open
	.string "There is a recording\n"
	.string "playing."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\"Tropical fish,like\n"
	.string " their name suggest,\n"
	.string " live in warm water."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string " They like their\n"
	.string " water around 26\n"
	.string " degrees Celsius.\""
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_check_flag [
		flag: 0x554,
		jumpIfTrue: 0x9,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x547,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x548,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x549,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54A,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54B,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54C,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54D,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54E,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54F,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x550,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x551,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x552,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x553,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_jump [
		target: 8,
	]

	def_text_script CompText875A2C4_unk7
	ts_flag_set [
		flag: 0x54B,
	]
	ts_msg_open
	.string "There is a recording\n"
	.string "playing."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\"They say,\"Slow and\n"
	.string " steady wins the\n"
	.string " race\",and"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string " the turtle is no\n"
	.string " stranger to being\n"
	.string " steady."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string " This animal has\n"
	.string " quite a long life\n"
	.string " span!\""
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_check_flag [
		flag: 0x554,
		jumpIfTrue: 0x9,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x547,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x548,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x549,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54A,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54B,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54C,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54D,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54E,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x54F,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x550,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x551,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x552,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x553,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_jump [
		target: 8,
	]

	def_text_script CompText875A2C4_unk8
	ts_flag_set [
		flag: 0x554,
	]
	ts_msg_open
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Wow!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "There are all sorts\n"
	.string "of things that live\n"
	.string "in the water!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I could stare at\n"
	.string "them all day!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 [
		track: 0x14F,
	]
	.string "*ding,dong,\n"
	.string "    ding,doooong*"
	ts_wait [
		frames: 0x62,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Oh,an announcement!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	.string "Attention all\n"
	.string "visitors."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The Dolphin and\n"
	.string "Seal's Show will\n"
	.string "begin shortly."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "We hope to see you\n"
	.string "there!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Sounds like there's\n"
	.string "a show!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It might be fun!\n"
	.string "Let's check it out!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875A2C4_unk9
	ts_end

	def_text_script CompText875A2C4_unk10
	ts_msg_open
	ts_check_flag [
		flag: 0x532,
		jumpIfTrue: 0xE,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x51A,
		jumpIfTrue: 0xD,
		jumpIfFalse: 0xFF,
	]
	ts_jump [
		target: 14,
	]

	def_text_script CompText875A2C4_unk11
	ts_msg_open
	.string "The Aquarium's\n"
	.string "information board."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It looks like the\n"
	.string "show's stage is all\n"
	.string "the way in the back."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875A2C4_unk12
	ts_msg_open
	.string "The Aquarium's\n"
	.string "reception desk."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\"Adults: 1000 zenny\n"
	.string " Kids: 500 zenny\""
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875A2C4_unk13
	ts_msg_open
	.string "It's the jellyfish\n"
	.string "tank..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It's empty now.\n"
	.string "Looks like they all\n"
	.string "escaped..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875A2C4_unk14
	ts_msg_open
	.string "The jellyfish are\n"
	.string "happily puff-puffing\n"
	.string "around the tank,but"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "sometimes,the half-\n"
	.string "transparent animals\n"
	.string "just float around."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	