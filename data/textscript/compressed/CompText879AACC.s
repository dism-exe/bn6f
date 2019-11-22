	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText879AACC::
	.word 0x6C700

	text_archive_start

	def_text_script CompText879AACC_unk0
	ts_check_flag 0x30, 0x11, 0x4, 0xFF
	ts_check_flag 0x2F, 0x11, 0x1, 0xFF
	ts_mugshot_show 0x41
	ts_msg_open
	ts_flag_set 0x2F, 0x11
	.string "\""
	ts_print_chip1 0xCA, 0x0
	.string "\" sure\n"
	.string "is a cool name for\n"
	.string "a chip!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If I had one,I think\n"
	.string "I'd even get big!\n"
	.string "I really want one!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I figured I'd\n"
	.string "ask if you had a\n"
	.string "\""
	ts_print_chip1 0xCA, 0x0
	.string " "
	ts_print_code 0xE, 0x0
	.string "\"?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Of course I don't\n"
	.string "want you to just\n"
	.string "give it to me..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'd trade you my\n"
	.string "\""
	ts_print_chip1 0x8C, 0x0
	.string " "
	ts_print_code 0x9, 0x0
	.string "\"\n"
	.string "for it."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Sure  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No way"
	ts_select 0x6, 0x80, 0x2, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x41
	.string "I wanna be big..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879AACC_unk1
	ts_mugshot_show 0x41
	ts_msg_open
	.string "\""
	ts_print_chip1 0xCA, 0x0
	.string "\" sure\n"
	.string "is a cool name for\n"
	.string "a chip!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If I had one,I think\n"
	.string "I'd even get big!\n"
	.string "I really want one!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I figured I'd\n"
	.string "ask if you had a\n"
	.string "\""
	ts_print_chip1 0xCA, 0x0
	.string " "
	ts_print_code 0xE, 0x0
	.string "\"?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Of course I don't\n"
	.string "want you to just\n"
	.string "give it to me..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'd trade you my\n"
	.string "\""
	ts_print_chip1 0x8C, 0x0
	.string " "
	ts_print_code 0x9, 0x0
	.string "\"\n"
	.string "for it."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Sure  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No way"
	ts_select 0x6, 0x80, 0x2, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x41
	.string "I wanna be big..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879AACC_unk2
	ts_check_pack_chip_code 0xCA, 0x0, 0xE, 0x1, 0xFF, 0xFF, 0x3
	ts_mugshot_show 0x41
	ts_msg_open
	.string "Really? Awesome!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give_chip 0x8C, 0x0, 0x9, 0x1
	ts_item_take_chip 0xCA, 0x0, 0xE, 0x1
	ts_player_animate_scene 0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_chip1 0x8C, 0x0
	.string " "
	ts_print_code 0x9, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_mugshot_show 0x41
	.string "Now I'll be big too!\n"
	ts_flag_set 0x30, 0x11
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879AACC_unk3
	ts_mugshot_show 0x41
	ts_msg_open
	.string "...\n"
	.string "You don't have it?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879AACC_unk4
	ts_mugshot_show 0x41
	ts_msg_open
	.string "Thanks for the\n"
	.string "\""
	ts_print_chip1 0xCA, 0x0
	.string "\"!\n"
	.string "Now I'll be big too!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879AACC_unk5

	def_text_script CompText879AACC_unk6

	def_text_script CompText879AACC_unk7

	def_text_script CompText879AACC_unk8

	def_text_script CompText879AACC_unk9

	def_text_script CompText879AACC_unk10
	ts_check_flag 0x1C, 0xC, 0xB, 0xFF
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "EHH! HEY!\n"
	.string "MEGAMAN...\n"
	.string "IS THAT YOU!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "WOW! IT'S BEEN\n"
	.string "A LONG TIME! YOU\n"
	.string "FINALLY CAME BACK!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'M...\n"
	.string "OVERWHELMED!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879AACC_unk11
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "WELCOME TO THE\n"
	.string "ACDC HP!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "NOTHING IS REALLY\n"
	.string "UNUSUAL ABOUT ACDC\n"
	.string "TOWN..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "BUT WE WON'T LOSE TO\n"
	.string "ANYONE WHEN IT COMES\n"
	.string "TO TOWN SPIRIT!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879AACC_unk12

	def_text_script CompText879AACC_unk13

	def_text_script CompText879AACC_unk14

	def_text_script CompText879AACC_unk15
	ts_check_flag 0xD0, 0xC, 0x10, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan!!\n"
	.string "There's Roll!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879AACC_unk16
	ts_end

	def_text_script CompText879AACC_unk17

	def_text_script CompText879AACC_unk18

	def_text_script CompText879AACC_unk19

	def_text_script CompText879AACC_unk20
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "IF IT'S ALRIGHT WITH\n"
	.string "YOU,WOULD YOU LIKE\n"
	.string "TO TRADE HP LINKS?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "PUTTING UP A LINK\n"
	.string "WILL LET YOU EASILY\n"
	.string "GO BACK AND FORTH"
	ts_key_wait 0x0
	ts_clear_msg
	.string "BETWEEN YOUR HP AND\n"
	.string "THE ACDC HP!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "WANT TO POST A LINK?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0x15, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x3C
	.string "I UNDERSTAND..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "IF YOU EVER FEEL\n"
	.string "LIKE IT,COME BACK\n"
	.string "ANYTIME..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879AACC_unk21
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "REALLY?\n"
	.string "THAT'S GREAT!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "ALRIGHT,TAKE THIS..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "WHENEVER YOU WANT\n"
	.string "TO COME HERE,JUST\n"
	.string "USE THIS BANNER!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give 0x6B, 0x1
	ts_player_animate_object 0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item 0x6B, 0x0
	.string "\"!!"
	ts_player_finish
	ts_player_reset_object
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x3C
	.string "I'LL GO PUT UP\n"
	.string "THE LINK TO YOUR\n"
	.string "HP NOW!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "WoooooooHOOOOOO!!"
	ts_key_wait 0x0
	ts_sound_disable_text_sfx
	ts_sound_play00 0x74, 0x0
	ts_sound_enable_text_sfx
	ts_flag_set 0x80, 0x1
	ts_clear_msg
	.string "WELL,MY WORK IS ALL\n"
	.string "DONE HERE..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "GOODBYE..."
	ts_key_wait 0x0
	ts_sound_disable_text_sfx
	ts_sound_play00 0x76, 0x0
	ts_flag_set 0xE7, 0x1
	ts_end

	