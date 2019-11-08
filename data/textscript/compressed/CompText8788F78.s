	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8788F78::
	.word 0x45100

	text_archive_start

	def_text_script CompText8788F78_unk0
	ts_check_chapter 0x62, 0x62, 0xF, 0xFF
	ts_check_chapter 0x61, 0x61, 0xA, 0xFF
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "EVERYDAY,THE\n"
	.string "UNDERGROUND IS BEING\n"
	.string "EXAMINED."
	ts_key_wait 0x0
	ts_clear_msg
	.string "HOWEVER,IT WOULD BE\n"
	.string "TERRIBLE IF A\n"
	.string "CYBEAST EMERGED..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8788F78_unk1
	ts_check_chapter 0x61, 0x61, 0xB, 0xFF
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Don't get too\n"
	.string "close to that huge\n"
	.string "hole!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8788F78_unk2
	ts_mugshot_show 0x42
	ts_msg_open
	.string "The Underground..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If we abandon it,\n"
	.string "it may become the\n"
	.string "2nd Undernet..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8788F78_unk3
	ts_mugshot_show 0x42
	ts_msg_open
	.string "I came to check out\n"
	.string "the Underground,but"
	ts_key_wait 0x0
	ts_clear_msg
	.string "it's really kind of\n"
	.string "scary..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8788F78_unk4
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Even if you came\n"
	.string "to examine the\n"
	.string "Underground,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "everyone hesitates\n"
	.string "to go inside."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8788F78_unk5

	def_text_script CompText8788F78_unk6

	def_text_script CompText8788F78_unk7

	def_text_script CompText8788F78_unk8

	def_text_script CompText8788F78_unk9

	def_text_script CompText8788F78_unk10
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "IT SEEMS THE EXPO\n"
	.string "WILL BE HELD ON\n"
	.string "SCHEDULE..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I HOPE THEY CAN\n"
	.string "SEAL THE UNDERGROUND"
	ts_key_wait 0x0
	ts_clear_msg
	.string "REAL SOON,SO I CAN\n"
	.string "ENJOY TALKING ABOUT\n"
	.string "THE EXPO!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8788F78_unk11
	ts_mugshot_show 0x42
	ts_msg_open
	.string "My friends went into\n"
	.string "the Underground and\n"
	.string "said they'd be right"
	ts_key_wait 0x0
	ts_clear_msg
	.string "back,but they still\n"
	.string "haven't returned...\n"
	.string "I'm worried..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8788F78_unk12

	def_text_script CompText8788F78_unk13

	def_text_script CompText8788F78_unk14

	def_text_script CompText8788F78_unk15
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "WE HAVEN'T STARTED\n"
	.string "OUR SURVEY OF THE\n"
	.string "UNDERGROUND TODAY."
	ts_key_wait 0x0
	ts_clear_msg
	.string "IT'S STILL A BIT\n"
	.string "TOO EARLY..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8788F78_unk16

	def_text_script CompText8788F78_unk17

	def_text_script CompText8788F78_unk18

	def_text_script CompText8788F78_unk19

	def_text_script CompText8788F78_unk20
	ts_mugshot_show 0x42
	ts_msg_open
	.string "What are these\n"
	.string "Navis? They're\n"
	.string "rushing down on us!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I hope there aren't\n"
	.string "victims in other\n"
	.string "areas..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8788F78_unk21
	ts_mugshot_show 0x42
	ts_msg_open
	.string "If you mistake\n"
	.string "who to attack,\n"
	.string "something might..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8788F78_unk22
	ts_mugshot_show 0x43
	ts_msg_open
	.string "Uggghhhhh..."
	ts_key_wait 0x0
	ts_end

	