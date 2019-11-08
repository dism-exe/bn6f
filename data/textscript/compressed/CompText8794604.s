	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8794604::
	.word 0x3A400

	text_archive_start

	def_text_script CompText8794604_unk0
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "THIS IS SKY AREA2."
	ts_key_wait 0x0
	ts_clear_msg
	.string "IT IS CONNECTED TO\n"
	.string "THE UNDERNET,SO\n"
	.string "PLEASE USE CAUTION."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8794604_unk1
	ts_check_chapter 0x62, 0x62, 0xA, 0xFF
	ts_check_chapter 0x61, 0x61, 0x5, 0xFF
	ts_mugshot_show 0x3F
	ts_msg_open
	.string "I think something\n"
	.string "strange might come\n"
	.string "from the Undernet!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "...I'm worried..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8794604_unk2
	ts_check_chapter 0x62, 0x62, 0xB, 0xFF
	ts_check_chapter 0x61, 0x61, 0x6, 0xFF
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Everything is OK\n"
	.string "now,but you can't\n"
	.string "be unprepared since"
	ts_key_wait 0x0
	ts_clear_msg
	.string "you never know when\n"
	.string "something might\n"
	.string "happen!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8794604_unk3

	def_text_script CompText8794604_unk4

	def_text_script CompText8794604_unk5
	ts_mugshot_show 0x3F
	ts_msg_open
	.string "I wonder if the\n"
	.string "dwellers of the"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Undernet will go to\n"
	.string "the Expo...?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8794604_unk6
	ts_mugshot_show 0x42
	ts_msg_open
	.string "The guards at the\n"
	.string "entrance to the\n"
	.string "Undernet are the"
	ts_key_wait 0x0
	ts_clear_msg
	.string "most worried,so that\n"
	.string "is why I'm under the\n"
	.string "most stress..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8794604_unk7

	def_text_script CompText8794604_unk8

	def_text_script CompText8794604_unk9

	def_text_script CompText8794604_unk10
	ts_mugshot_show 0x3F
	ts_msg_open
	.string "Yaaaawwnn...\n"
	.string "I'm tired since I\n"
	.string "stayed up all night!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Time to jack out..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8794604_unk11
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Well,it's time\n"
	.string "to change shifts..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I hope my\n"
	.string "replacement comes\n"
	.string "soon..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8794604_unk12

	def_text_script CompText8794604_unk13

	def_text_script CompText8794604_unk14

	def_text_script CompText8794604_unk15
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Waahhhhh..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8794604_unk16
	ts_mugshot_show 0x44
	ts_msg_open
	.string "Ha! A bunch of\n"
	.string "little wusses!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8794604_unk17
	ts_mugshot_show 0x44
	ts_msg_open
	.string "We don't let things\n"
	.string "that would ruin the\n"
	.string "Undernet in! EVER!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8794604_unk18

	def_text_script CompText8794604_unk19
	ts_mugshot_show 0x43
	ts_msg_open
	.string "........"
	ts_key_wait 0x0
	ts_end

	