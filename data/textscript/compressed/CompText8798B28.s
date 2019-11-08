	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8798B28::
	.word 0x5AA00

	text_archive_start

	def_text_script CompText8798B28_unk0
	ts_check_flag 0xE1, 0xB, 0x2, 0xFF
	ts_check_flag 0xDF, 0xB, 0x1, 0xFF
	ts_flag_set 0xDF, 0xB
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "HEEEEY!!\n"
	.string "THIS IS A REEEALLY\n"
	.string "BIIIIG STORM!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "What's causing the\n"
	.string "weather mess-up\n"
	.string "around here!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x3C
	.string "A TYPHOON VIRUS THAT\n"
	.string "UP AND INVADED!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "THAT VIRUS IS WHAT'S\n"
	.string "CAUSING THIS HARD\n"
	.string "DOWNPOUR,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "AND THAT GIANT RAIN\n"
	.string "CLOUD TO BLOCK UP\n"
	.string "THE ROAD."
	ts_key_wait 0x0
	ts_clear_msg
	.string "HOW RUDE!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Isn't there some\n"
	.string "way to fix this?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x3C
	.string "HMM..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "7 PIECES OF RAINBOW\n"
	.string "DATA ARE SCATTERED\n"
	.string "IN THIS AREA."
	ts_key_wait 0x0
	ts_clear_msg
	.string "IF YOU COLLLECT THEM\n"
	.string "ALL,YOU COULD USE\n"
	.string "\"RAINBOW POWER\"."
	ts_key_wait 0x0
	ts_clear_msg
	.string "WITH THAT POWER,YOU\n"
	.string "COULD SURROUND THE\n"
	.string "TYPHOON VIRUS..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Surround the\n"
	.string "typhoon with\n"
	.string "Rainbow Power..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "OK,I'll give it a\n"
	.string "try!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x3C
	.string "R-REALLY?\n"
	.string "OH,THANK YOU\n"
	.string "SO VERY MUCH!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "... UM,THE RAINBOW\n"
	.string "DATA IS SCATTERED\n"
	.string "IN THE UPPER AREA."
	ts_key_wait 0x0
	ts_clear_msg
	.string "IF YOU FOLLOW THE\n"
	.string "PATH THAT'S BESIDE\n"
	.string "ME,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "THERE'S A CLOUD YOU\n"
	.string "CAN STAND AND MOVE\n"
	.string "AROUND ON."
	ts_key_wait 0x0
	ts_clear_msg
	.string "IF YOU RIDE ON THAT,\n"
	.string "YOU CAN MOVE AROUND\n"
	.string "IN THE UPPER AREA!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "BUT THE CLOUD IS\n"
	.string "VERY FRAGILE."
	ts_key_wait 0x0
	ts_clear_msg
	.string "IF IT'S HIT BY 3\n"
	.string "STRONG ATTACKS,IT\n"
	.string "WILL DISAPPEAR,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "SO PLEASE BE\n"
	.string "CAREFUL!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Got it!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "... Alright,let's\n"
	.string "give the cloud a\n"
	.string "try!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8798B28_unk1
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "7 PIECES OF RAINBOW\n"
	.string "DATA ARE SCATTERED\n"
	.string "IN THIS AREA."
	ts_key_wait 0x0
	ts_clear_msg
	.string "IF YOU COLLECT THEM\n"
	.string "ALL,YOU COULD USE\n"
	.string "\"RAINBOW POWER\",AND"
	ts_key_wait 0x0
	ts_clear_msg
	.string "SURROUND THE TYPHOON\n"
	.string "VIRUS WITH IT."
	ts_key_wait 0x0
	ts_clear_msg
	.string "IF YOU DO THAT,IT\n"
	.string "SHOULD GET RID OF\n"
	.string "THE TYPHOON VIRUS."
	ts_key_wait 0x0
	ts_clear_msg
	.string "YOU CAN USE A CLOUD\n"
	.string "TO MOVE AROUND IN\n"
	.string "THE UPPER AREA,BUT"
	ts_key_wait 0x0
	ts_clear_msg
	.string "IF IT IS HIT BY 3\n"
	.string "STRONG ATTACKS,IT\n"
	.string "WILL DISAPPEAR,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "SO PLEASE BE\n"
	.string "CAREFUL!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8798B28_unk2
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "THERE'S ANOTHER\n"
	.string "TYPHOON VIRUS"
	ts_key_wait 0x0
	ts_clear_msg
	.string "MAKING A MESS IN\n"
	.string "THE NEXT AREA!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "PLEASE BE CAREFUL,\n"
	.string "OK!?"
	ts_key_wait 0x0
	ts_end

	