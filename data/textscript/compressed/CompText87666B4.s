	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87666B4::
	.word 0x7CE00

	text_archive_start

	def_text_script CompText87666B4_unk0
	ts_check_chapter [
		lower: 0x62,
		upper: 0x62,
		jumpIfInRange: 0xF,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x61,
		upper: 0x61,
		jumpIfInRange: 0xA,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_flag [
		flag: 0xE0A,
		jumpIfTrue: 0x5,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xE08,
		jumpIfTrue: 0x23,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x19,
	]
	ts_msg_open
	.string "The 3 bad guys who\n"
	.string "are with that girl"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "just headed for the\n"
	.string "station."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87666B4_unk1
	ts_check_flag [
		flag: 0xE08,
		jumpIfTrue: 0x24,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0xF,
	]
	ts_msg_open
	.string "The 3 people with\n"
	.string "the girl?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Sorry,I haven't\n"
	.string "seen them."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87666B4_unk2
	ts_check_flag [
		flag: 0xE08,
		jumpIfTrue: 0x25,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0xE,
	]
	ts_msg_open
	.string "3 people with a\n"
	.string "girl in tow?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'm sorry,but I\n"
	.string "haven't seen them."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87666B4_unk3
	ts_check_flag [
		flag: 0xE0A,
		jumpIfTrue: 0x8,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xE08,
		jumpIfTrue: 0x26,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x9,
	]
	ts_msg_open
	.string "I want a new chip!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Why the long face?\n"
	.string "What's the matter,\n"
	.string "big guy?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87666B4_unk4

	def_text_script CompText87666B4_unk5
	ts_mugshot_show [
		mugshot: 0x19,
	]
	ts_msg_open
	.string "Hohohoho..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'm excited for\n"
	.string "the Expo to open!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So excited the\n"
	.string "ground is shaking!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87666B4_unk6
	ts_mugshot_show [
		mugshot: 0xF,
	]
	ts_msg_open
	.string "The Expo is opening\n"
	.string "on schedule..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Lately there have\n"
	.string "been a lot of\n"
	.string "incidents,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "so I was worried\n"
	.string "they might delay the\n"
	.string "opening.."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So this is great\n"
	.string "news!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87666B4_unk7
	ts_mugshot_show [
		mugshot: 0xE,
	]
	ts_msg_open
	.string "The Expo!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Lots of people are\n"
	.string "going to come here!\n"
	.string "I can't wait!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87666B4_unk8
	ts_mugshot_show [
		mugshot: 0x9,
	]
	ts_msg_open
	.string "There's tons of\n"
	.string "Navis!!\n"
	.string "How cool!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87666B4_unk9

	def_text_script CompText87666B4_unk10
	ts_mugshot_show [
		mugshot: 0x19,
	]
	ts_msg_open
	.string "I wonder if we\n"
	.string "shouldn't clean up\n"
	.string "before the opening"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "of the \"Expo that's\n"
	.string "not to be missed?\""
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87666B4_unk11
	ts_mugshot_show [
		mugshot: 0xF,
	]
	ts_msg_open
	.string "I'm happy that there\n"
	.string "is an Expo,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "but I'm so busy with\n"
	.string "work,I'm worried\n"
	.string "that I can't go!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87666B4_unk12
	ts_mugshot_show [
		mugshot: 0xE,
	]
	ts_msg_open
	.string "You aren't looking\n"
	.string "for someone to go"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "to the Expo with,\n"
	.string "are you?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If you are,\n"
	.string "I volunteer!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87666B4_unk13

	def_text_script CompText87666B4_unk14

	def_text_script CompText87666B4_unk15

	def_text_script CompText87666B4_unk16
	ts_mugshot_show [
		mugshot: 0x2,
	]
	ts_msg_open
	.string "Hurry up!\n"
	.string "Let's go!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You invited me,\n"
	.string "so you go first!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87666B4_unk17
	ts_mugshot_show [
		mugshot: 0x1,
	]
	ts_msg_open
	.string "Alright! Let's go!\n"
	.string "I'm excited!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87666B4_unk18
	ts_mugshot_show [
		mugshot: 0x3,
	]
	ts_msg_open
	.string "This is the first\n"
	.string "time I've been to an\n"
	.string "Expo... I'm nervous."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87666B4_unk19
	ts_mugshot_show [
		mugshot: 0x14,
	]
	ts_msg_open
	.string "Lan,let's go!!\n"
	.string "I can't wait\n"
	.string "anymore!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87666B4_unk20
	ts_mugshot_show [
		mugshot: 0x33,
	]
	ts_msg_open
	.string "Ahh! I'm so excited!\n"
	.string "I can't wait to get\n"
	.string "inside!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87666B4_unk21
	ts_mugshot_show [
		mugshot: 0x11,
	]
	ts_msg_open
	.string "......"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87666B4_unk22

	def_text_script CompText87666B4_unk23

	def_text_script CompText87666B4_unk24

	def_text_script CompText87666B4_unk25
	ts_msg_open
	.string "A CopyBot..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It got damaged by an\n"
	.string "attack in battle...\n"
	.string "It can't move..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87666B4_unk26
	ts_check_flag [
		flag: 0xE6C,
		jumpIfTrue: 0x19,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x43,
	]
	ts_msg_open
	.string "Lan Hikari...\n"
	.string "I found you!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0xE6B,
	]
	ts_flag_set [
		flag: 0x1715,
	]
	ts_end

	def_text_script CompText87666B4_unk27
	ts_check_flag [
		flag: 0xE6E,
		jumpIfTrue: 0x19,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x43,
	]
	ts_msg_open
	.string "The real world is\n"
	.string "ours!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0xE6D,
	]
	ts_flag_set [
		flag: 0x1715,
	]
	ts_end

	def_text_script CompText87666B4_unk28
	ts_check_flag [
		flag: 0xE70,
		jumpIfTrue: 0x19,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x43,
	]
	ts_msg_open
	.string "You're Lan Hikari!\n"
	.string "Time for your end!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0xE6F,
	]
	ts_flag_set [
		flag: 0x1715,
	]
	ts_end

	def_text_script CompText87666B4_unk29
	ts_check_flag [
		flag: 0xE72,
		jumpIfTrue: 0x19,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x43,
	]
	ts_msg_open
	.string "Found you!\n"
	.string "A perfect present\n"
	.string "for Dr.Wily!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0xE71,
	]
	ts_flag_set [
		flag: 0x1715,
	]
	ts_end

	def_text_script CompText87666B4_unk30
	ts_check_flag [
		flag: 0xE74,
		jumpIfTrue: 0x19,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x43,
	]
	ts_msg_open
	.string "Lan Hikari!!!!!\n"
	.string "YAAAAAHHHHHHHH!!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0xE73,
	]
	ts_flag_set [
		flag: 0x1715,
	]
	ts_end

	def_text_script CompText87666B4_unk31

	def_text_script CompText87666B4_unk32

	def_text_script CompText87666B4_unk33

	def_text_script CompText87666B4_unk34

	def_text_script CompText87666B4_unk35
	ts_mugshot_show [
		mugshot: 0x19,
	]
	ts_msg_open
	.string "Lately,all I've\n"
	.string "heard is terrifying\n"
	.string "talk..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I really want to\n"
	.string "talk about something\n"
	.string "happy..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87666B4_unk36
	ts_mugshot_show [
		mugshot: 0xF,
	]
	ts_msg_open
	.string "Alright,today there\n"
	.string "are only 3 more\n"
	.string "customers to visit."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'm so tired..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87666B4_unk37
	ts_mugshot_show [
		mugshot: 0xE,
	]
	ts_msg_open
	.string "I wonder if the\n"
	.string "Expo is really going\n"
	.string "to open..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87666B4_unk38
	ts_mugshot_show [
		mugshot: 0x9,
	]
	ts_msg_open
	.string "I want a new chip!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87666B4_unk39

	def_text_script CompText87666B4_unk40

	def_text_script CompText87666B4_unk41

	def_text_script CompText87666B4_unk42

	def_text_script CompText87666B4_unk43

	def_text_script CompText87666B4_unk44

	def_text_script CompText87666B4_unk45

	def_text_script CompText87666B4_unk46

	