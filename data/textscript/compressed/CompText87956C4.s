	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87956C4::
	.word 0x44300

	text_archive_start

	def_text_script CompText87956C4_unk0
	ts_check_shop_stock 0x5, 0xFF, 0x2
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "I'm a NetMerchant...\n"
	.string "See what I've got?\n"
	ts_position_option_horizontal 0xB
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Look "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " Don't look "
	ts_select 0x6, 0x0, 0xFF, 0x1, 0xFF
	ts_start_shop 0x5

	def_text_script CompText87956C4_unk1
	ts_clear_msg
	.string "Come back soon!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87956C4_unk2
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Sorry,but we're all\n"
	.string "sold out..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87956C4_unk3

	def_text_script CompText87956C4_unk4

	def_text_script CompText87956C4_unk5
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "THIS IS MAYL'S\n"
	.string "PERSONAL SPACE!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "THE PINK FLOOR IS\n"
	.string "TOTALLY CUTE!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87956C4_unk6
	ts_check_flag 0xD3, 0xC, 0x9, 0xFF
	ts_check_flag 0xD1, 0xC, 0x8, 0xFF
	ts_jump 9

	def_text_script CompText87956C4_unk7
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "THIS IS YAI'S\n"
	.string "PERSONAL SPACE!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "IT'S NOTABLE FOR\n"
	.string "ITS SIZE! CLEARLY\n"
	.string "SUITABLE FOR YAI!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87956C4_unk8
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "THIS SPACE IS\n"
	.string "DEX'S PERSONAL\n"
	.string "SPACE!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "HUH? YOU DON'T\n"
	.string "KNOW ABOUT THE\n"
	.string "DOOR KEY?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "NO WAY...\n"
	.string "SPEAKING OF WHICH,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "MR.GUTSMAN IS\n"
	.string "HIDING SOMETHING\n"
	.string "IN THE CHESSPIECES."
	ts_key_wait 0x0
	ts_clear_msg
	.string "UNBELIEVABLE..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87956C4_unk9
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "THIS IS DEX'S\n"
	.string "PERSONAL SPACE."
	ts_key_wait 0x0
	ts_clear_msg
	.string "DEX IS REALLY GOOD\n"
	.string "AT CHESS!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "HOW ABOUT A MATCH?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87956C4_unk10
	ts_mugshot_show 0x41
	ts_msg_open
	.string "I came here from\n"
	.string "CentralArea to\n"
	.string "hang out a bit..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This area is great!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It isn't new,but\n"
	.string "no matter where you\n"
	.string "go,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "it's always a good\n"
	.string "time."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87956C4_unk11
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "WELCOME TO ACDC\n"
	.string "AREA!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "ITS INTERNET RIVALS\n"
	.string "EVEN CYBER CITY'S!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87956C4_unk12

	def_text_script CompText87956C4_unk13

	def_text_script CompText87956C4_unk14

	def_text_script CompText87956C4_unk15

	def_text_script CompText87956C4_unk16

	def_text_script CompText87956C4_unk17

	def_text_script CompText87956C4_unk18

	def_text_script CompText87956C4_unk19

	def_text_script CompText87956C4_unk20
	ts_check_flag 0xD4, 0xC, 0x15, 0xFF
	ts_check_flag 0xD3, 0xC, 0x16, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Talk to the\n"
	.string "Mr.Prog!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87956C4_unk21
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,let's go with\n"
	.string "everyone to the\n"
	.string "meeting place!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87956C4_unk22
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,let's go over\n"
	.string "to Roll's place?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87956C4_unk23

	def_text_script CompText87956C4_unk24

	def_text_script CompText87956C4_unk25
	ts_mugshot_show 0x4D
	ts_msg_open
	.string "Hey! Where you goin?\n"
	.string "You got nothin' to\n"
	.string "do over there!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87956C4_unk26

	def_text_script CompText87956C4_unk27

	def_text_script CompText87956C4_unk28

	def_text_script CompText87956C4_unk29

	