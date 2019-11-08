	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText878A4E0::
	.word 0x4E000

	text_archive_start

	def_text_script CompText878A4E0_unk0
	ts_check_chapter 0x62, 0x62, 0xA, 0xFF
	ts_check_chapter 0x61, 0x61, 0x5, 0xFF
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "A GLANCE...\n"
	.string "...CYBEASTS...\n"
	.string "...RIGHT...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "HEARING TALK OF\n"
	.string "THE UNDERGOUND IS\n"
	.string "SCARY..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878A4E0_unk1
	ts_check_chapter 0x62, 0x62, 0xB, 0xFF
	ts_check_chapter 0x61, 0x61, 0x6, 0xFF
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Since it's connected\n"
	.string "directly to Central\n"
	.string "Area3,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "this area must have\n"
	.string "tight security."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878A4E0_unk2
	ts_check_chapter 0x61, 0x61, 0x7, 0xFF
	ts_mugshot_show 0x42
	ts_msg_open
	.string "If something comes\n"
	.string "up from the\n"
	.string "Underground..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "What can we do\n"
	.string "about it...?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878A4E0_unk3

	def_text_script CompText878A4E0_unk4

	def_text_script CompText878A4E0_unk5
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "EVEN THOUGH THE REAL\n"
	.string "WORLD IS EXCITED FOR\n"
	.string "THE EXPO,THOSE IN"
	ts_key_wait 0x0
	ts_clear_msg
	.string "THE CYBERWORLD\n"
	.string "ISN'T EXCITED AT\n"
	.string "ALL..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "ESPECIALLY SINCE A\n"
	.string "GAPING WIDE HOLE\n"
	.string "HAS OPENED TO THE"
	ts_key_wait 0x0
	ts_clear_msg
	.string "UNDERGROUND IN THE\n"
	.string "NEXT AREA OVER!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878A4E0_unk6
	ts_mugshot_show 0x42
	ts_msg_open
	.string "I hope we hurry\n"
	.string "and finish the\n"
	.string "Underground"
	ts_key_wait 0x0
	ts_clear_msg
	.string "investigation so\n"
	.string "we can talk about\n"
	.string "the Expo again!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878A4E0_unk7
	ts_mugshot_show 0x42
	ts_msg_open
	.string "When the Expo opens,\n"
	.string "pavilion security\n"
	.string "will be very tight."
	ts_key_wait 0x0
	ts_clear_msg
	.string "There will also be\n"
	.string "limitations on\n"
	.string "moving around."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878A4E0_unk8

	def_text_script CompText878A4E0_unk9

	def_text_script CompText878A4E0_unk10
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "LATELY THERE HAVE\n"
	.string "BEEN LOTS OF GLOOMY\n"
	.string "TALK AROUND HERE,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "BUT WHEN THE EXPO\n"
	.string "OPENS EVERYTHING\n"
	.string "WILL BE BRIGHT..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878A4E0_unk11
	ts_mugshot_show 0x42
	ts_msg_open
	.string "The Expo was the\n"
	.string "mayor's biggest wish\n"
	.string "in the world,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "but now he won't\n"
	.string "even be able to\n"
	.string "attend..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878A4E0_unk12

	def_text_script CompText878A4E0_unk13

	def_text_script CompText878A4E0_unk14

	def_text_script CompText878A4E0_unk15
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Uggghhh..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878A4E0_unk16
	ts_mugshot_show 0x43
	ts_msg_open
	.string "The NetPolice can't\n"
	.string "even say a thing..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "What're you lookin\n"
	.string "at? I'll make you\n"
	.string "a mute too!!"
	ts_key_wait 0x0
	ts_flag_set 0xAF, 0xE
	ts_flag_set 0x15, 0x17
	ts_end

	def_text_script CompText878A4E0_unk17
	ts_mugshot_show 0x43
	ts_msg_open
	.string "Time to be\n"
	.string "deleted!!!!"
	ts_key_wait 0x0
	ts_flag_set 0xB1, 0xE
	ts_flag_set 0x15, 0x17
	ts_end

	