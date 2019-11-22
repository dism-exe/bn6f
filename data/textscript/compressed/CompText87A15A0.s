	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A15A0::
	.word 0xC9D00

	text_archive_start

	def_text_script CompText87A15A0_unk0
	ts_check_flag [
		flag: 0x112C,
		jumpIfTrue: 0x4,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x112B,
		jumpIfTrue: 0x1,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x3F,
	]
	ts_msg_open
	ts_flag_set [
		flag: 0x112B,
	]
	.string "...I've been under\n"
	.string "so much stress that\n"
	.string "my skin broke out!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'm looking for a\n"
	.string "chip that will\n"
	.string "relieve my stress..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\""
	ts_print_chip1 [
		chip: 0x75,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x15,
		buffer: 0x0,
	]
	.string "\"\n"
	.string "should do the trick!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If you have one,\n"
	.string "would you like to\n"
	.string "trade for a"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\""
	ts_print_chip1 [
		chip: 0xA5,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x8,
		buffer: 0x0,
	]
	.string "\"?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal [
		width: 0x7,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Sure  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " No way"
	ts_select 0x6, 0x80, 0x2, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x3F,
	]
	.string "Well then what am\n"
	.string "I supposed to do\n"
	.string "about this stress!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87A15A0_unk1
	ts_mugshot_show [
		mugshot: 0x3F,
	]
	ts_msg_open
	.string "I'm looking for a\n"
	.string "chip that will\n"
	.string "relieve my stress..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\""
	ts_print_chip1 [
		chip: 0x75,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x15,
		buffer: 0x0,
	]
	.string "\"\n"
	.string "should do the trick!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If you have one,\n"
	.string "would you like to\n"
	.string "trade for a"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\""
	ts_print_chip1 [
		chip: 0xA5,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x8,
		buffer: 0x0,
	]
	.string "\"?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal [
		width: 0x7,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Sure  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " No way"
	ts_select 0x6, 0x80, 0x2, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x3F,
	]
	.string "Well then what am\n"
	.string "I supposed to do\n"
	.string "about this stress!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87A15A0_unk2
	ts_check_pack_chip_code [
		chip: 0x75,
		code: 0x15,
		amount: 0x1,
		jumpIfEqual: 0xFF,
		jumpIfGreater: 0xFF,
		jumpIfLess: 0x3,
	]
	ts_mugshot_show [
		mugshot: 0x3F,
	]
	ts_msg_open
	.string "Oh! Thank you!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give_chip [
		chip: 0xA5,
		code: 0x8,
		amount: 0x1,
	]
	ts_item_take_chip [
		chip: 0x75,
		code: 0x15,
		amount: 0x1,
	]
	ts_player_animate_scene [
		animation: 0x18,
	]
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_chip1 [
		chip: 0xA5,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x8,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x3F,
	]
	.string "I'll just plop this\n"
	.string "in and wash my\n"
	.string "stress away!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x112C,
	]
	ts_end

	def_text_script CompText87A15A0_unk3
	ts_mugshot_show [
		mugshot: 0x3F,
	]
	ts_msg_open
	.string "...You don't have\n"
	.string "that chip...\n"
	.string "Great! More stress!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87A15A0_unk4
	ts_mugshot_show [
		mugshot: 0x3F,
	]
	ts_msg_open
	.string "Thanks for trading\n"
	.string "me for \""
	ts_print_chip1 [
		chip: 0x75,
		buffer: 0x0,
	]
	.string "\"!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "This'll do a great\n"
	.string "job of relieving\n"
	.string "stress!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87A15A0_unk5

	def_text_script CompText87A15A0_unk6

	def_text_script CompText87A15A0_unk7

	def_text_script CompText87A15A0_unk8

	def_text_script CompText87A15A0_unk9

	def_text_script CompText87A15A0_unk10
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "...Here! Here!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Lan,let's delete\n"
	.string "some viruses!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Yeah! Let's go!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Battle routine,set!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Execute!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1715,
	]
	ts_flag_set [
		flag: 0x11E0,
	]
	ts_end

	def_text_script CompText87A15A0_unk11
	ts_check_flag [
		flag: 0x11E4,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0xC,
	]
	ts_check_flag [
		flag: 0x11E5,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0xC,
	]
	ts_check_flag [
		flag: 0x11E6,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0xC,
	]
	ts_check_flag [
		flag: 0x11E7,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0xC,
	]
	ts_check_flag [
		flag: 0x11E8,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0xC,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "We did it,Lan!\n"
	.string "We deleted all of\n"
	.string "the viruses!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Yep!\n"
	.string "This computer\n"
	.string "is safe now!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87A15A0_unk12
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "We did it,Lan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Yep!\n"
	.string "This computer\n"
	.string "is safe now!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87A15A0_unk13

	def_text_script CompText87A15A0_unk14

	def_text_script CompText87A15A0_unk15
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_msg_open
	.string "\"PAYING MONEY FOR\n"
	.string " WATER...\"\n"
	.string "THAT'S CRAZY!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "YOU DON'T THINK\n"
	.string "THAT WAY DO YOU?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "TRY THE WATER HERE!!\n"
	.string "IT WILL OBLITERATE\n"
	.string "THOSE SILLY IDEAS!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87A15A0_unk16

	def_text_script CompText87A15A0_unk17

	def_text_script CompText87A15A0_unk18

	def_text_script CompText87A15A0_unk19

	def_text_script CompText87A15A0_unk20

	def_text_script CompText87A15A0_unk21

	def_text_script CompText87A15A0_unk22

	def_text_script CompText87A15A0_unk23

	def_text_script CompText87A15A0_unk24

	def_text_script CompText87A15A0_unk25

	def_text_script CompText87A15A0_unk26

	def_text_script CompText87A15A0_unk27

	def_text_script CompText87A15A0_unk28

	def_text_script CompText87A15A0_unk29

	def_text_script CompText87A15A0_unk30

	def_text_script CompText87A15A0_unk31

	def_text_script CompText87A15A0_unk32

	def_text_script CompText87A15A0_unk33

	def_text_script CompText87A15A0_unk34

	def_text_script CompText87A15A0_unk35

	def_text_script CompText87A15A0_unk36

	def_text_script CompText87A15A0_unk37

	def_text_script CompText87A15A0_unk38

	def_text_script CompText87A15A0_unk39

	def_text_script CompText87A15A0_unk40

	def_text_script CompText87A15A0_unk41

	def_text_script CompText87A15A0_unk42

	def_text_script CompText87A15A0_unk43

	def_text_script CompText87A15A0_unk44

	def_text_script CompText87A15A0_unk45

	def_text_script CompText87A15A0_unk46

	def_text_script CompText87A15A0_unk47

	def_text_script CompText87A15A0_unk48

	def_text_script CompText87A15A0_unk49

	def_text_script CompText87A15A0_unk50
	ts_mugshot_show [
		mugshot: 0x5D,
	]
	ts_msg_open
	.string "...I'M THE VIRUS\n"
	.string "BATTLE MACHINE V2..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "WOULD YOU LIKE TO\n"
	.string "ENTER 5 CONSECUTIVE\n"
	.string "VIRUS BATTLES?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_mugshot_hide
	ts_text_speed [
		delay: 0x0,
	]
	ts_position_option_horizontal [
		width: 0x8,
	]
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x2,
	]
	ts_space [
		count: 0x1,
	]
	.string " Yes\n"
	ts_position_option_horizontal [
		width: 0x8,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " No\n"
	ts_position_option_horizontal [
		width: 0x8,
	]
	ts_option [
		brackets: 0x0,
		right: 0x2,
		left: 0x2,
		down: 0x0,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " Hear Explanation"
	ts_select 0x7, 0xA0, 0x33, 0xFF, 0x39, 0xFF
	ts_clear_msg
	ts_text_speed [
		delay: 0x2,
	]
	ts_mugshot_show [
		mugshot: 0x5D,
	]
	.string "COME BACK SOON!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87A15A0_unk51
	ts_text_speed [
		delay: 0x2,
	]
	ts_mugshot_show [
		mugshot: 0x5D,
	]
	ts_msg_open
	.string "LAUNCHING VIRUS\n"
	.string "BATTLE..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "BATTLE... START!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1715,
	]
	ts_flag_set [
		flag: 0x1DB,
	]
	ts_end

	def_text_script CompText87A15A0_unk52
	ts_check_flag [
		flag: 0x1D5,
		jumpIfTrue: 0x36,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0x1D5,
	]
	ts_jump [
		target: 54,
	]

	def_text_script CompText87A15A0_unk53
	ts_mugshot_show [
		mugshot: 0x5D,
	]
	ts_msg_open
	.string "THAT WAS CLOSE...\n"
	.string "COME BACK AGAIN\n"
	.string "SOON!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87A15A0_unk54
	ts_check_flag [
		flag: 0x1ED,
		jumpIfTrue: 0x37,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x5D,
	]
	ts_msg_open
	.string "AMAZING!!\n"
	.string "WELL DONE!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "TO COMMEMORATE YOUR\n"
	.string "GREAT VIRUS BUSTING\n"
	.string "SKILL,HERE'S A GIFT!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give_navi_cust_program [
		program: 0xB8,
		amount: 0x1,
		color: 0x6,
	]
	ts_player_animate_object [
		animation: 0x18,
	]
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_navi_cust_program5 [
		program: 0x2E,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x5D,
	]
	.string "CONGRATULATIONS!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "THERE ARE OTHER\n"
	.string "MR.PROGS THAT ARE\n"
	.string "DIFFERENT COLORS..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "YOU SHOULD TRY\n"
	.string "LOOKING FOR THEM."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "WHERE ARE THEY?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I THINK ONE IS IN\n"
	.string "THE COMP YOU'RE"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "TAKEN TO IF YOU DO\n"
	.string "BAD THINGS!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1ED,
	]
	ts_end

	def_text_script CompText87A15A0_unk55
	ts_jump_random 65, 0x20, 0x20, 0xFF, 0x38
	ts_mugshot_show [
		mugshot: 0x5D,
	]
	ts_msg_open
	.string "AMAZING!!\n"
	.string "WELL DONE!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "TO COMMEMORATE YOUR\n"
	.string "GREAT VIRUS BUSTING\n"
	.string "SKILL,HERE'S A GIFT!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_check_give_zenny [
		amount: 0x2BC,
		jumpIfAll: 0xFF,
		jumpIfNone: 0xFF,
		jumpIfSome: 0xFF,
	]
	ts_player_animate_object [
		animation: 0x18,
	]
	ts_print_current_navi
	.string " got:\n"
	.string "\"700 Zennys\"!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x5D,
	]
	.string "CONGRATULATIONS!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "THERE ARE OTHER\n"
	.string "MR.PROGS THAT ARE\n"
	.string "DIFFERENT COLORS..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "YOU SHOULD TRY\n"
	.string "LOOKING FOR THEM."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "WHERE ARE THEY?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I THINK ONE IS IN\n"
	.string "THE COMP YOU'RE"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "TAKEN TO IF YOU DO\n"
	.string "BAD THINGS!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87A15A0_unk56
	ts_mugshot_show [
		mugshot: 0x5D,
	]
	ts_msg_open
	.string "AMAZING!!\n"
	.string "WELL DONE!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "TO COMMEMORATE YOUR\n"
	.string "GREAT VIRUS BUSTING\n"
	.string "SKILL,HERE'S A GIFT!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_check_give_bug_frags [
		amount: 0x4,
		jumpIfAll: 0xFF,
		jumpIfNone: 0xFF,
		jumpIfSome: 0xFF,
	]
	ts_player_animate_object [
		animation: 0x18,
	]
	ts_print_current_navi
	.string " got:\n"
	.string "\"4 BugFrags\"!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x5D,
	]
	.string "CONGRATULATIONS!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "THERE ARE OTHER\n"
	.string "MR.PROGS THAT ARE\n"
	.string "DIFFERENT COLORS..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "YOU SHOULD TRY\n"
	.string "LOOKING FOR THEM."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "WHERE ARE THEY?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I THINK ONE IS IN\n"
	.string "THE COMP YOU'RE"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "TAKEN IF YOU DO\n"
	.string "BAD THINGS!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87A15A0_unk57
	ts_text_speed [
		delay: 0x2,
	]
	ts_mugshot_show [
		mugshot: 0x5D,
	]
	ts_msg_open
	.string "LET ME EXPLAIN THE\n"
	.string "RULES."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "YOU CAN FIGHT\n"
	.string "AGAINST 2 VIRUSES"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "THAT YOU HAVE THE\n"
	.string "DATA FOR..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "YOU MUST REDUCE AN\n"
	.string "ENEMY VIRUS'"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "ENERGY TO ZERO\n"
	.string "WITHIN THE TIME\n"
	.string "LIMIT."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "THERE IS ONE THING\n"
	.string "TO REMEMBER WHEN\n"
	.string "SETTING UP A BATTLE."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "THE TOTAL SIZE OF\n"
	.string "THE TWO VIRUSES YOU"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "CHOOSE MUST NOT BE\n"
	.string "MORE THAN 50 MB."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "IF IT IS OVER,YOU\n"
	.string "WILL NOT BE ABLE TO\n"
	.string "SET THE BATTLE."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "IF YOU CAN DELETE\n"
	.string "ALL THE VIRUSES\n"
	.string "WITH STYLE,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "YOU WILL GET AN\n"
	.string "AMAZING REWARD!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	