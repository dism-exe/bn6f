	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8799E68::
	.word 0x54900

	text_archive_start

	def_text_script CompText8799E68_unk0
	ts_check_flag [
		flag: 0xE3A,
		jumpIfTrue: CompText8799E68_unk2_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xFFE,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8799E68_unk3_id,
	]
	ts_check_flag [
		flag: 0xED6,
		jumpIfTrue: CompText8799E68_unk1_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0xED6
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "YAHHH!\n"
	.string "IT'S A HUGE STORM!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "What's the cause\n"
	.string "of all this bad\n"
	.string "weather!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x3C
	.string "ALL OF A SUDDEN\n"
	.string "A STRANGE NAVI\n"
	.string "APPEARED AND"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "SUMMONED A TYPHOON\n"
	.string "VIRUS!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "IT CAUSED THE HEAVY\n"
	.string "RAIN AND BLOCKED THE\n"
	.string "ROAD WITH A CLOUD..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Where is the Navi\n"
	.string "that summoned the\n"
	.string "typhoon virus?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x3C
	.string "IF YOU GO STRAIGHT\n"
	.string "ON THIS ROAD,HE'S"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "ACROSS FROM THE\n"
	.string "HEAVY RAIN CLOUD."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "To get the rain\n"
	.string "cloud to lift,you"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "have to delete the\n"
	.string "typhoon virus,right?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x3C
	.string "YES. THERE ARE 7\n"
	.string "PIECES OF RAINBOW\n"
	.string "DATA AROUND THIS"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "AREA. IF YOU GATHER\n"
	.string "THEM ALL,YOU CAN\n"
	.string "USE \"RAINBOW POWER\"!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "MAYBE IF YOU CAN\n"
	.string "ENCIRCLE THE VIRUS\n"
	.string "WITH THIS POWER..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Encircle it with\n"
	.string "Rainbow Power,huh?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Got it!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x3C
	.string "REALLY?\n"
	.string "THANK YOU!\n"
	.string "THANK YOU!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...THE RAINBOW DATA\n"
	.string "IS SCATTERED IN THE\n"
	.string "SKY..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "IN THIS AREA THERE\n"
	.string "IS A PLACE WITH A\n"
	.string "SLOPED ROAD."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "WHERE THE ROAD\n"
	.string "RISES,THERE IS A\n"
	.string "CLOUD YOU CAN USE"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "TO RIDE INTO THE\n"
	.string "SKY!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Gotcha!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Let's go ride this\n"
	.string "cloud!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8799E68_unk1
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "THERE ARE 7 PIECES\n"
	.string "OF RAINBOW DATA IN\n"
	.string "THIS AREA."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "IF YOU GATHER THEM\n"
	.string "ALL,YOU CAN USE\n"
	.string "\"RAINBOW POWER\"!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "PLEASE SURROUND THE\n"
	.string "TYPHOON VIRUS WITH\n"
	.string "THIS POWER."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "MAYBE YOU CAN GET\n"
	.string "RID OF THE TYPHOON\n"
	.string "VIRUS!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8799E68_unk2
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "THANKS TO YOU,\n"
	.string "THIS AREA IS\n"
	.string "BACK TO NORMAL!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THANK YOU SO MUCH!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8799E68_unk3
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "IT SEEMS THE CLOUD\n"
	.string "BLOCKING THE ROAD\n"
	.string "IS GONE,BUT I THINK"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THAT STRANGE NAVI\n"
	.string "IS STILL AROUND\n"
	.string "HERE,SO BE CAREFUL!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8799E68_unk4

	