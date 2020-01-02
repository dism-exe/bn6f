	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A1144::
	.word 0x76700

	text_archive_start

	def_text_script CompText87A1144_unk0
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "I'M THE PUNISHMENT\n"
	.string "CHAIR PROGRAM..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "WRONGDOERS..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "WILL REGRET THEIR\n"
	.string "WRONGS IN THIS\n"
	.string "CHAIR..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A1144_unk1

	def_text_script CompText87A1144_unk2

	def_text_script CompText87A1144_unk3

	def_text_script CompText87A1144_unk4

	def_text_script CompText87A1144_unk5

	def_text_script CompText87A1144_unk6

	def_text_script CompText87A1144_unk7

	def_text_script CompText87A1144_unk8

	def_text_script CompText87A1144_unk9

	def_text_script CompText87A1144_unk10
	ts_mugshot_show mugshot=0x5F
	ts_msg_open
	.string "...I'M THE VIRUS\n"
	.string "BATTLE MACHINE V3..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "WOULD YOU LIKE TO\n"
	.string "ENTER 5 CONSECUTIVE\n"
	.string "VIRUS BATTLES?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_mugshot_hide
	ts_text_speed delay=0x0
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x2,
	]
	ts_space count=0x1
	.string " Yes\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x0,
	]
	ts_space count=0x1
	.string " No\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x2,
		left: 0x2,
		down: 0x0,
		up: 0x1,
	]
	ts_space count=0x1
	.string " Hear Explanation"
	ts_select 0x7, 0xA0, 0xB, 0xFF, 0x11, 0xFF
	ts_clear_msg
	ts_text_speed delay=0x2
	ts_mugshot_show mugshot=0x5F
	.string "COME BACK SOON!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A1144_unk11
	ts_mugshot_show mugshot=0x5F
	ts_msg_open
	ts_text_speed delay=0x2
	.string "LAUNCHING VIRUS\n"
	.string "BATTLE..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "BATTLE... START!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x1715
	ts_flag_set flag=0x1DD
	ts_end

	def_text_script CompText87A1144_unk12
	ts_check_flag [
		flag: 0x1D6,
		jumpIfTrue: CompText87A1144_unk14_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0x1D6
	ts_jump target=CompText87A1144_unk14_id

	def_text_script CompText87A1144_unk13
	ts_mugshot_show mugshot=0x5F
	ts_msg_open
	.string "THAT WAS CLOSE...\n"
	.string "COME BACK AGAIN\n"
	.string "SOON!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A1144_unk14
	ts_check_flag [
		flag: 0x1EE,
		jumpIfTrue: CompText87A1144_unk15_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x5F
	ts_msg_open
	.string "AMAZING!!\n"
	.string "WELL DONE!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "TO COMMEMORATE YOUR\n"
	.string "GREAT VIRUS BUSTING\n"
	.string "SKILL,HERE'S A GIFT!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give_chip [
		chip: 0xB0,
		code: 0x1A,
		amount: 0x1,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_chip1 [
		chip: 0xB0,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x1A,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x5F
	.string "CONGRATULATIONS!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THERE ARE OTHER\n"
	.string "MR.PROGS THAT ARE\n"
	.string "DIFFERENT COLORS..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "YOU SHOULD TRY\n"
	.string "LOOKING FOR THEM."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "WHERE ARE THEY?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "IN SOME COMP CALLED\n"
	.string "GASCAN OR SOMETHING\n"
	.string "OR ANOTHER..."
	ts_key_wait any=0x0
	ts_flag_set flag=0x1EE
	ts_end

	def_text_script CompText87A1144_unk15
	ts_jump_random CompText87A1144_unk65_id, 0x20, 0x20, 0xFF, 0x10
	ts_mugshot_show mugshot=0x5F
	ts_msg_open
	.string "AMAZING!!\n"
	.string "WELL DONE!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "TO COMMEMORATE YOUR\n"
	.string "GREAT VIRUS BUSTING\n"
	.string "SKILL,HERE'S A GIFT!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_check_give_zenny [
		amount: 0x5DC,
		jumpIfAll: TS_CONTINUE,
		jumpIfNone: TS_CONTINUE,
		jumpIfSome: TS_CONTINUE,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\"1500 Zennys\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x5F
	.string "CONGRATULATIONS!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THERE ARE OTHER\n"
	.string "MR.PROGS THAT ARE\n"
	.string "DIFFERENT COLORS..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "YOU SHOULD TRY\n"
	.string "LOOKING FOR THEM."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "WHERE ARE THEY?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "IN SOME COMP CALLED\n"
	.string "GASCAN OR SOMETHING\n"
	.string "OR ANOTHER..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A1144_unk16
	ts_mugshot_show mugshot=0x5F
	ts_msg_open
	.string "AMAZING!!\n"
	.string "WELL DONE!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "TO COMMEMORATE YOUR\n"
	.string "GREAT VIRUS BUSTING\n"
	.string "SKILL,HERE'S A GIFT!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_check_give_bug_frags [
		amount: 0x6,
		jumpIfAll: TS_CONTINUE,
		jumpIfNone: TS_CONTINUE,
		jumpIfSome: TS_CONTINUE,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\"6 BugFrags\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x5F
	.string "CONGRATULATIONS!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THERE ARE OTHER\n"
	.string "MR.PROGS THAT ARE\n"
	.string "DIFFERENT COLORS..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "YOU SHOULD TRY\n"
	.string "LOOKING FOR THEM."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "WHERE ARE THEY?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "IN SOME COMP CALLED\n"
	.string "GASCAN OR SOMETHING\n"
	.string "OR ANOTHER..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A1144_unk17
	ts_text_speed delay=0x2
	ts_mugshot_show mugshot=0x5F
	ts_msg_open
	.string "LET ME EXPLAIN THE\n"
	.string "RULES."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "YOU CAN FIGHT\n"
	.string "AGAINST 2 VIRUSES"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THAT YOU HAVE THE\n"
	.string "DATA FOR..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "YOU MUST REDUCE AN\n"
	.string "ENEMY VIRUS'"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "ENERGY TO ZERO\n"
	.string "WITHIN THE TIME\n"
	.string "LIMIT."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THERE IS ONE THING\n"
	.string "TO REMEMBER WHEN\n"
	.string "SETTING UP A BATTLE."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THE TOTAL SIZE OF\n"
	.string "THE TWO VIRUSES YOU"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "CHOOSE MUST NOT BE\n"
	.string "MORE THAN 50 MB."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "IF IT IS OVER,YOU\n"
	.string "WILL NOT BE ABLE TO\n"
	.string "SET THE BATTLE."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "IF YOU CAN DELETE\n"
	.string "ALL THE VIRUSES\n"
	.string "WITH STYLE,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "YOU WILL GET AN\n"
	.string "AMAZING REWARD!"
	ts_key_wait any=0x0
	ts_end

	